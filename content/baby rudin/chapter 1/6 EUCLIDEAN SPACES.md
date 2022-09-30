---
title: 6 EUCLIDEAN SPACES
date: 2022-08-15
---

* [youtube](https://youtu.be/hb3U5Ima5JA)
* [bilibili](https://www.bilibili.com/video/BV1yt4y1w7Wr/)
* note [pdf](https://github.com/chen-gz/bed2/blob/31af576a38b2233b57f0b293fbcc902ac5dee5cd/6%20EUCLIDEAN%20SPACES%20note.pdf)
[xopp](https://github.com/chen-gz/bed2/blob/31af576a38b2233b57f0b293fbcc902ac5dee5cd/6%20EUCLIDEAN%20SPACES%20note.xopp)

**1.36 Definitions** For each positive integer $k$, let $R^{k}$ be the set of all ordered $k$-tuples

$$
\mathbf{x}=\left(x_{1}, x_{2}, \ldots, x_{k}\right),
$$

where $x_{1}, \ldots, x_{k}$ are real numbers, called the coordinates of $\mathbf{x}$. The elements of $R^{k}$ are called points, or vectors, especially when $k>1$. We shall denote vectors by boldfaced letters. If $\mathbf{y}=\left(y_{1}, \ldots, y_{k}\right)$ and if $\alpha$ is a real number, put

$$
\begin{aligned}
\mathbf{x}+\mathbf{y} &=\left(x_{1}+y_{1}, \ldots, x_{k}+y_{k}\right) \\
\alpha \mathbf{x} &=\left(\alpha x_{1}, \ldots, \alpha x_{k}\right)
\end{aligned}
$$

so that $\mathbf{x}+\mathbf{y} \in R^{k}$ and $\alpha \mathbf{x} \in R^{k}$. This defines addition of vectors, as well as multiplication of a vector by a real number (a scalar). These two operations satisfy the commutative, associative, and distributive laws (the proof is trivial, in view of the analogous laws for the real numbers) and make $R^{k}$ into a vector space over the real field. The zero element of $R^{k}$ (sometimes called the origin or the null vector) is the point 0 , all of whose coordinates are 0 .

We also define the so-called "inner product" (or scalar product) of $\mathbf{x}$ and y by

$$
\mathbf{x} \cdot \mathbf{y}=\sum_{i=1}^{k} x_{i} y_{i}
$$

and the norm of $\mathbf{x}$ by

$$
|x|=(x \cdot x)^{1 / 2}=\left(\sum_{1}^{k} x_{i}^{2}\right)^{1 / 2} .
$$

The structure now defined (the vector space $R^{k}$ with the above inner product and norm) is called euclidean $k$-space.

**1.37 Theorem** Suppose $\mathbf{x}, \mathbf{y}, \mathbf{z} \in R^{k}$, and $\alpha$ is real. Then
(a) $|\mathbf{x}| \geq 0$
(b) $|\mathbf{x}|=0$ if and only if $\mathbf{x}=\mathbf{0}$
(c) $\quad|\alpha \mathbf{x}|=|\alpha||\mathbf{x}|$
(d) $|\mathbf{x} \cdot \mathbf{y}| \leq|\mathbf{x}||\mathbf{y}|$;
(e) $|\mathbf{x}+\mathbf{y}| \leq|\mathbf{x}|+|\mathbf{y}|$
(f) $|\mathbf{x}-\mathbf{z}| \leq|\mathbf{x}-\mathbf{y}|+|\mathbf{y}-\mathbf{z}|$. Proof $(a),(b)$, and $(c)$ are obvious, and $(d)$ is an immediate consequence of the Schwarz inequality. By $(d)$ we have

$$
\begin{aligned}
|x+y|^{2} &=(x+y) \cdot(x+y) \\
&=\mathbf{x} \cdot \mathbf{x}+2 \mathbf{x} \cdot \mathbf{y}+\mathbf{y} \cdot \mathbf{y} \\
& \leq|\mathbf{x}|^{2}+2|\mathbf{x}||\mathbf{y}|+|\mathbf{y}|^{2} \\
&=(|\mathbf{x}|+|\mathbf{y}|)^{2}
\end{aligned}
$$

so that $(e)$ is proved. Finally, $(f)$ follows from $(e)$ if we replace $x$ by $\mathbf{x}-\mathbf{y}$ and $\mathbf{y}$ by $\mathbf{y}-\mathbf{z}$.

**$1.38$ Remarks** Theorem $1.37(a),(b)$, and $(f)$ will allow us (see Chap. 2) to regard $R^{k}$ as a metric space.

$R^{1}$ (the set of all real numbers) is usually called the line, or the real line. Likewise, $R^{2}$ is called the plane, or the complex plane (compare Definitions $1.24$ and 1.36). In these two cases the norm is just the absolute value of the corresponding real or complex number.
