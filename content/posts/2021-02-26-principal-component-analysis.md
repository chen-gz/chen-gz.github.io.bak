---
title: Principal component analysis
author: Guangzong Chen
date: 2021-02-26 13:50:00 -0500
categories: [Machine Learning]
tags: [ML, PCA]
math: true
mermaid: true
---


excellent material from Andrew Ng

<https://github.com/chen-gz/picBed/blob/master/PCA.pdf>



I add intuition here.

The intuition of PCA for me comes from linear algebra's base. (Orthogonal unit vector) form a vector space. 
All vectors can form from these vectors. Some bases only provide little information, so they can be ignored.

PCA will keep the features with maximum variance. 

## Procedure

### Normalization the data

There are $N$ samples, each sample is $x^i \in \mathbb{R}^n$. 

1. Calculate mean value. $\mu = \sum_{i=0}^N x^i$
2. Remove bias.  For $i$  from $1$ to $N$, $x^i \leftarrow x^i - \mu$
2. Calculate Variance for all features. $\sigma^2_j = \frac{1}{m} \sum_{i}\left(x_{j}^{(i)}\right)^{2}$
4. Unit Variance. $x_j^i \leftarrow x_{j}^{(i)} / \sigma_{j}$

step 4 should calculate for each coordinate.



## PCA

1. Calculate Covariance Matrix. $\Sigma = \frac{1}{m} \sum_{i=1}^{m} x^{(i)} x^{(i)^{T}}$

2. Find eigenvalue and eigen vector for $\Sigma$.
3. Sort eigenvalue.$\lambda_1 > \lambda_2 > \dots > \lambda_n$, correspond eigenvector $u_{1}, \dots, u_{k}$ which satisfy $\|u_i\| = 1$.
4. The vector $u_{1}, \dots, u_{k}$ are called the first k principal components of the data.
5. Dimension reduction. Determine the reduced dimension $K$. 
6. Represent data in $\mathbb{R}^k$.

$$
y^{(i)}=\left[\begin{array}{c}
u_{1}^{T} x^{(i)} \\
u_{2}^{T} x^{(i)} \\
\vdots \\
u_{k}^{T} x^{(i)}
\end{array}\right] \in \mathbb{R}^{k}
$$

We can put $u$ together to form a matrix $W$. Then we can represent our equation as $y^i = Wx^i$.

Where $W = \begin{bmatrix}u_1 & \dots & u_k\end{bmatrix}^T$. The dimension of $W$ id $k\times n$.

And using $\hat{x} = W^T$ 

## Example for PCA


```python
# data dimension is not as same as document
# need to be fix
import numpy as np
import matplotlib.pyplot as plt

# generate random data points aline y = x + 1
x = np.random.rand(10, 2)
# Doing PCA base on these data points.

# normalize x
x = x - np.mean(x, axis=0)
x = x / np.std(x, axis=0)

plt.figure(figsize=(2, 1))
plt.subplot(2, 1, 1)
plt.xlim([-2, 2])
plt.ylim([-2, 2])
plt.plot(x[:, 0], x[:, 1], 'o')
plt.title('Original Data')

# 1. calculate the covariance matrix
cov = np.cov(x.T)
print(cov)
# 2. calculate the eigenvalues and eigenvectors
eigvals, eigvecs = np.linalg.eig(cov)
# 3. sort the eigenvalues and eigenvectors
idx = eigvals.argsort()[::-1]   
egivals = eigvals[idx]
eigvecs = eigvecs[:,idx]
# print(f"eigvals: {egivals}")
# print(f"eigvec: {eigvecs}")
# 4. calculate the principal components
W = eigvecs[:, 0].T
W.resize(1, 2)
print(f"W: {W}")
print(f"x: {x}")
print(f"x.shape: {x.shape}")
print(f"W.shape: {W.shape}")
y = W.dot(x.T)
# expand y from 1 dimension to 2 dimension
# y = np.expand_dims(y, axis=1)

print(f"y.shape: {y.shape}")
rec_x = W.T.dot(y)
print(f"rec_x.shape: {rec_x.shape}")
# plot rec_x
plt.subplot(2, 1, 2)
plt.xlim([-2, 2])
plt.ylim([-2, 2])
plt.plot(rec_x[0,:], rec_x[1,:], 'o')
plt.title('Reconstructed Data')
plt.show()
```



## Probability PCA

PCA is a special case of pPCA. pPCA suppose there is some noise in the data. Then present a probability model to handle the noise. There is an assumption. The noise follows the Gaussian distribution. 

We will use different terminology in the following discussion. 

 $y^i \in \mathbb{R}^d$ is the observed variable. $z^i \in \mathbb{R}^q$ is the latent variable. $q < d$.

From factor analysis, the latent variable and observed variable have the following relationship. 

The observed variable $y \sim Wx + \mu + \epsilon$ . The latent variables $z \sim N(0, I)$. Noise is $\epsilon \sim N(0, \Phi)$. Location term (mean) is $\mu$. 

In Probabilistic PCA: Noise variances contrained to be equal ($\Phi = \sigma^2$). Error: $\epsilon \sim N(0, \Phi I)$.
Then $y|x \sim N(Wx + \mu + \epsilon, \Phi I)$. and $y \sim N(\mu , C_y)$, where $C_y = WW^T + \sigma^2 I$ (where $C_y$ is the covariance matrix of the observed data $y$).





