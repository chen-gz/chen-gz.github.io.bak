---
title:  Independent Component Analysis
categories: [ML]
author: guangzong
date: 2021-12-17
tags: [ML]
math: true
---

This blog mainly refers to [Independent Component Analysis: Algorithms and Applications](https://www.cs.helsinki.fi/u/ahyvarin/papers/NN00new.pdf) which wrote by Aapo Hyvärinen and Erkki Oja.

Some useful reference

1. [Elements of Information Theory](http://staff.ustc.edu.cn/~cgong821/Wiley.Interscience.Elements.of.Information.Theory.Jul.2006.eBook-DDU.pdf)
1. [What is projection pursuit](https://www.math.wustl.edu/~kuffner/AlastairYoung/BanksYoung1987.pdf) -  Entropy Estimation
1. [New approximations of differential entropy for independent component analysis and projection pursuit]() - Entropy Estimation

### Definition

#### Cocktail party problem

Imagine that you are in a room where two people are speaking simultaneously. You have two microphones, which you hold in different locations. The microphones give you two recorded time signals, which we could denote by $x_1(t)$ and $x_2(t)$, with $x_1$ and $x_2$ the amplitudes, and $t$ the time index. Each of these recorded signals is a weighted sum of the speech signals emitted by the two speakers, which we denote by $s_1(t)$ and $s_2(t)$. We could express this as a linear equation:
$$
\begin{aligned}
& x_1(t)=a_{11} s_1+a_{12} s_2 \\
& x_2(t)=a_{21} s_1+a_{22} s_2
\end{aligned}
$$
where $a_{11}, a_{12}, a_{21}$, and $a_{22}$ are some parameters that depend on the distances of the microphones from the speakers. It would be very useful if you could now estimate the two original speech signals $s_1(t)$ and $s_2(t)$, using only the recorded signals $x_1(t)$ and $x_2(t)$. This is called the cocktail-party problem. For the time being, we omit any time delays or other extra factors from our simplified mixing model.

#### Assumption

$s_1(t)$ and $s_2(t)$, at each time instant $t$, are statistically independent. This is not an unrealistic assumption in many cases, and it need not be exactly true in practice. 

#### Definition and notation of ICA 

We assume mixture variables $\mathbf{x}$ and the independent components have zero mean. 

$\mathbf{x}$ =  $[x_1, x_2, \ldots, x_n]^T$, whose element are the mixture $x_1, x_2, \dots, x_n$.
$\mathbf{s}$ =  $[s_1, s_2, \ldots, s_n]^T$, whose element are the input signals $s_1, s_2, \dots, s_n$. 

$\mathbf{A}$ is a matrix with entries $a_{ij}$

Support 𝐀 is a square matrix and non-singular. So after we estimate 𝐀, we can compute its inverse 𝐖, and obtain the independent components by: 

$$
𝐬 = 𝐖𝐱
$$


#### Ambiguities of ICA

1. We cannot determine the variance (energies) of the independent components.
2. We cannot determine the order the independent components. (permutation)

Because both 𝐀 and 𝐬 is unknown.



### What is independence

#### Definition
Technically, independence can be defined by the probability densities. Let us denote by $p\left(y_1, y_2\right)$ the joint probability density function (pdf) of $y_1$ and $y_2$. Let us further denote by $p_1\left(y_1\right)$ the marginal pdf of $y_1$, i.e. the pdf of $y_1$ when it is considered alone:
$$
p_1\left(y_1\right)=\int p\left(y_1, y_2\right) d y_2,
$$
and similarly for $y_2$. Then we define that $y_1$ and $y_2$ are independent if and only if the joint pdf is factorizable in the following way:
$$
p\left(y_1, y_2\right)=p_1\left(y_1\right) p_2\left(y_2\right) .
$$
This definition extends naturally for any number $n$ of random variables, in which case the joint density must be a product of $n$ terms.

#### Uncorrelated variables are only partly independent

A weaker form of independence is uncorrelatedness. Two random variables $y_1$ and $y_2$ are said to be uncorrelated, if their covariance is zero:
$$
E\left\{y_1 y_2\right\}-E\left\{y_1\right\} E\left\{y_2\right\}=0
$$
If the variables are independent, they are uncorrelated. On the other hand, uncorrelatedness does not imply independence. 



#### Gaussian variables are forbidden

The fundamental restriction in ICA is that the independent components must be nongaussian for ICA to be possible. To see why gaussian variables make ICA impossible, assume that the mixing matrix is orthogonal and the $s_i$ are gaussian. Then $x_1$ and $x_2$ are gaussian, uncorrelated, and of unit variance. Their joint density is given by
$$
p\left(x_1, x_2\right)=\frac{1}{2 \pi} \exp \left(-\frac{x_1^2+x_2^2}{2}\right)
$$
This distribution is illustrated in Fig. 7. The Figure shows that the density is completely symmetric. Therefore, it does not contain any information on the directions of the columns of the mixing matrix $\mathbf{A}$. This is why $\mathbf{A}$ cannot be estimated.

More rigorously, one can prove that the distribution of any orthogonal transformation of the gaussian $\left(x_1, x_2\right)$ has exactly the same distribution as $\left(x_1, x_2\right)$, and that $x_1$ and $x_2$ are independent. Thus, in the case of gaussian variables, we can only estimate the ICA model up to an orthogonal transformation. In other words, the matrix A is not identifiable for gaussian independent components. (Actually, if just one of the independent components is gaussian, the ICA model can still be estimated.)

### Principle of ICA estimation

#### "Nongaussian is independent"

The Central Limit Theorem, a classical result in probability theory, tells that the distribution of a sum of independent random variables tends toward a gaussian distribution, under certain conditions. Thus, a sum of two independent random variables usually has a distribution that is closer to gaussian than any of the two original random variables.

So our estimation is maximize nongaussian of $\mathbf{s}$.

### Measure of nongaussianity

#### kurtosis

The classical measure of nongaussianity is kurtosis or the fourth-order cumulant. The kurtosis of $y$ is classically defined by
$$
\operatorname{kurt}(y)=E\left\{y^4\right\}-3\left(E\left\{y^2\right\}\right)^2
$$
Actually, since we assumed that $y$ is of unit variance, the right-hand side simplifies to $E\left\{y^4\right\}-3$. This shows that kurtosis is simply a normalized version of the fourth moment $E\left\{y^4\right\}$. For a gaussian $y$, the fourth moment equals $3\left(E\left\{y^2\right\}\right)^2$. Thus, kurtosis is zero for a gaussian random variable. For most (but not quite all) nongaussian random variables, kurtosis is nonzero.

#### Negentropy

A second very important measure of nongaussianity is given by negentropy. Negentropy is based on the informationtheoretic quantity of (differential) entropy.

Entropy is the basic concept of information theory. The entropy of a random variable can be interpreted as the degree of information that the observation of the variable gives. The more "random", i.e. unpredictable and unstructured the variable is, the larger its entropy. 

Entropy $H$ is defined for a discrete random variable $Y$ as
$$
H(Y)=-\sum_i P\left(Y=a_i\right) \log P\left(Y=a_i\right)
$$
where the $a_i$ are the possible values of $Y$. 

This very well-known definition can be generalized for continuous-valued random variables and vectors, in which case it is often called differential entropy. The differential entropy $H$ of a random vector $\mathbf{y}$ with density $f(\mathbf{y})$ is defined as:
$$
H(\mathbf{y})=-\int f(\mathbf{y}) \log f(\mathbf{y}) \mathrm{d} \mathbf{y} .
$$
A fundamental result of information theory is that a gaussian variable has the largest entropy among all random variables of equal variance. This means that entropy could be used as a measure of nongaussianity. In fact, this shows that the gaussian distribution is the "most random" or the least structured of all distributions. Entropy is small for distributions that are clearly concentrated on certain values, i.e., when the variable is clearly clustered, or has a pdf that is very "spiky".

To obtain a measure of nongaussianity that is zero for a gaussian variable and always nonnegative, one often uses a slightly modified version of the definition of differential entropy, called negentropy. Negentropy $J$ is defined as follows
$$
J(\mathbf{y})=H\left(\mathbf{y}_{\text {gauss }}\right)-H(\mathbf{y})
$$
where $\mathbf{y}_{\text {gauss }}$ is a Gaussian random variable of the same covariance matrix as $\mathbf{y}$. Due to the above-mentioned properties, negentropy is always non-negative, and it is zero if and only if $\mathbf{y}$ has a Gaussian distribution. Negentropy has the additional interesting property that it is invariant for invertible linear transformations (Comon, 1994; Hyvärinen, $1999 \mathrm{e}$ ).

The advantage of using negentropy, or, equivalently, differential entropy, as a measure of nongaussianity is that it is well justified by statistical theory. In fact, negentropy is in some sense the optimal estimator of nongaussianity, as far as statistical properties are concerned. The problem in using negentropy is, however, that it is computationally very difficult. *Estimating negentropy using the definition would require an estimate (possibly nonparametric) of the pdf.* Therefore, simpler approximations of negentropy are very useful, as will be discussed next.

##### Approximations of negentropy

1. Using higher-order moments, for example as follows (Jones and Sibson, 1987):

$$
J(y) \approx \frac{1}{12} E\left\{y^3\right\}^2+\frac{1}{48} \operatorname{kurt}(y)^2
$$
The random variable $y$ is assumed to be of zero mean and unit variance. However, the validity of such approximations may be rather limited. In particular, these approximations suffer from the nonrobustness encountered with kurtosis.

2. 

$$
J(y) \approx \sum_{i=1}^p k_i\left[E\left\{G_i(y)\right\}-E\left\{G_i(v)\right\}\right]^2,
\label{neg_est}
$$
where $k_i$ are some positive constants, and $v$ is a Gaussian variable of zero mean and unit variance (i.e., standardized). The variable $y$ is assumed to be of zero mean and unit variance, and the functions $G_i$ are some nonquadratic functions (Hyvärinen, 1998b). 

Note that even in cases where this approximation is not very accurate, (12) can be used to construct a measure of nongaussianity that is consistent in the sense that it is always non-negative, and equal to zero if $y$ has a Gaussian distribution.
In the case where we use only one nonquadratic function $G$, the approximation becomes
$$
J(y) \propto[E\{G(y)\}-E\{G(v)\}]^2
$$
for practically any non-quadratic function $G$. This is clearly a generalization of the moment-based approximation in (23), if $y$ is symmetric. Indeed, taking $G(y)=y^4$, one then obtains exactly (23), i.e. a kurtosis-based approximation. But the point here is that by choosing $G$ wisely, one obtains approximations of negentropy that are much better than the one given by (23). In particular, choosing $G$ that does not grow too fast, one obtains more robust estimators. The following choices of $G$ have proved very useful:
$$
G_1(u)=\frac{1}{a_1} \log \cosh a_1 u, \quad G_2(u)=-\exp \left(-u^2 / 2\right)
\label{eq_G}
$$
where $1 \leq a_1 \leq 2$ is some suitable constant.

Thus we obtain approximations of negentropy that give a very good compromise between the properties of the two classical nongaussianity measures given by kurtosis and negentropy. They are conceptually simple, fast to compute, yet have appealing statistical properties, especially robustness. 

### PreProcessing for ICA

1. Centering (zero mean)

   $$
   \tilde{\mathbf{x}} = 𝐱 - E\{𝐱\}
   $$
   
   Following will assume the mean of 𝐱 is zero;

2. Whitening (make the component of 𝐱 is uncorrelated)
   
    * calculate covariance matrix
        $$
        C = E\{𝐱𝐱_{T}\}
        $$

    * eigen-value decomposition
      
        $$
        C = E\{𝐱𝐱_{T}\} = 𝐄𝐃𝐄_{T}
        $$

    * Whitening
        $$
        \tilde{\mathbf{x}}=\mathbf{E D}^{-1 / 2} \mathbf{E}^T \mathbf{x}
        $$

    * verify
        $$
        E\left\{\tilde{\mathbf{x}} \tilde{\mathbf{x}}^T\right\}=\mathbf{I}
        $$

3. further Processing 
    Apply filter in signal x 


### The FastICA Algorithm


#### FastICA for one unit

Here we use equation $\ref{neg_est}$ two to maximize the nongaussianity.
The $G$ use equation $\ref{eq_G}$. The derivative of $\ref{eq_G}$ is 
$$
\begin{array}{r}
g_1(u)=\tanh \left(a_1 u\right) \\
g_2(u)=u \exp \left(-u^2 / 2\right)
\end{array}
$$

The processure of FastICA

1. Choose an initial (e.g. random) weight vector w.

2. Let $\mathbf{w}^{+}=E\left\{\mathbf{x} g\left(\mathbf{w}^T \mathbf{x}\right)\right\}-E\left\{g^{\prime}\left(\mathbf{w}^T \mathbf{x}\right)\right\} \mathbf{w}$

3. Let $\mathbf{w}=\mathbf{w}^{+} /\left\|\mathbf{w}^{+}\right\|$

4. If not converged, go back to 2 .

  Note that convergence means that the old and new values of $\mathbf{w}$ point in the same direction, i.e. their dot-product is (almost) equal to 1 . It is not necessary that the vector converges to a single point, since $\mathbf{w}$ and $-\mathbf{w}$ define the same direction. This is again because the independent components can be defined only up to a multiplicative sign. Note also that it is here assumed that the data is prewhitened.

#### FastICA for serveral unit

The one-unit algorithm of the preceding subsection estimaes just one of the independent components, or one projection pursuit derection.




