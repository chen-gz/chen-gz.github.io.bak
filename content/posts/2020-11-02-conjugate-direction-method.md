---
title: Conjugate Direction Method
author: zong
date: 2020-11-02
categories: [Math]
tags: [Math, Linear Programming]
math: true
---

### CONJUGATE DIRECTIONS

**Definition**. Given a symmetric matrix $\mathbf{Q}$, two vectors $\mathbf{d}_{1}$ and $\mathbf{d}_{2}$ are said to be $\mathbf{Q}$ -orthogonal, or conjugate with respect to $\mathbf{Q},$ if $\mathbf{d}_{1}^{T} \mathbf{Q} \mathbf{d}_{2}=0 .$

**Proposition**. If $\mathbf{Q}$ is positive definite and the set of nonzero vectors $\mathrm{d}_{0}, \mathrm{d}_{1}, \mathrm{d}_{2}, \ldots, \mathrm{d}_{k}$ are $\mathbf{Q}$-orthogonal, then these vectors are linearly independent.

#### Conjugate Direction Theorem

Let $\left\{\mathbf{d}_{i}\right\}_{i=0}^{n-1}$ be a set of nonzero $\mathbf{Q}$ -orthogonal vectors. For any $\mathbf{x}_{0} \in E^{n}$ the sequence $\left\{\mathbf{x}_{\mathbf{k}}\right\}$ generated according to
$$
\begin{equation}
\mathbf{x}_{k+1}=\mathbf{x}_{k}+\alpha_{k} \mathbf{d}_{k}, k \geqslant 0
\end{equation}
$$
with
$$
\begin{equation}
\alpha_{k}=-\frac{\mathbf{g}_{k}^{T} \mathbf{d}_{k}}{\mathbf{d}_{k}^{T} \mathbf{Q} \mathbf{d}_{\mathbf{k}}}
\end{equation}
$$
and
$$
\mathrm{g}_{k}=\mathbf{Q} \mathbf{x}_{k}-\mathbf{b}
$$
converges to the unique solution, $\mathbf{x}^{*},$ of $\mathbf{Q} \mathbf{x}=\mathbf{b}$ after $n$ steps, that is, $\mathbf{x}_{n}=\mathbf{x}^{*}$

#### Expanding Subspace Theorem

We define $\mathcal{B}_{k}$ as the subspace of $E^{n}$ spanned by $\left\{\mathbf{d}_{0}, \mathbf{d}_{1}, \ldots, \mathbf{d}_{k-1}\right\} .$ We shall show that as the method of conjugate directions progresses each $\mathbf{x}_{k}$ minimizes the objective over the $k$ -dimensional linear variety $\mathbf{x}_{0}+\mathcal{B}_{k}$.

Let $\left\{\mathbf{d}_{i}\right\}_{i=0}^{n-1}$ be a sequence of nonzero $\mathbf{Q}$ -orthogonal vectors in $E^{n} .$ Then for any $\mathbf{x}_{0} \in E^{n}$ the sequence $\left\{\mathbf{x}_{k}\right\}$ generated according to
$$
\begin{aligned}
\mathbf{x}_{k+1} &=\mathbf{x}_{k}+\alpha_{k} \mathbf{d}_{k} \\
\alpha_{k} &=-\frac{\mathbf{g}_{k}^{T} \mathbf{d}_{k}}{\mathbf{d}_{k}^{T} \mathbf{Q} \mathbf{d}_{k}}
\end{aligned}
$$
has the property that $\mathbf{x}_{k}$ minimizes $f(\mathbf{x})=\frac{1}{2} \mathbf{x}^{T} \mathbf{Q} \mathbf{x}-\mathbf{b}^{T} \mathbf{x}$ on the line $\mathbf{x}=\mathbf{x}_{k-1}+\alpha \mathbf{d}_{k-1},-\infty<$
$\alpha<\infty,$ as well as on the linear variety $\mathbf{x}_{0}+\mathcal{B}_{k}$



Corollary. In the method of conjugate directions the gradients $\mathrm{g}_{k}, k=0,1, \ldots, n$ satisfy
$$
\mathbf{g}_{k}^{T} \mathbf{d}_{i}=0 \text { for } i<k
$$


#### Conjugate Gradient Theorem.

The conjugate gradient algorithm $(17)-(20)$ is a conjugate direction method. If it does not terminate at $\mathbf{x}_{k},$ then
a) $\left[\mathrm{g}_{0}, \mathrm{g}_{1}, \ldots, \mathrm{g}_{k}\right]=\left[\mathrm{g}_{0}, \mathrm{Qg}_{0}, \ldots, \mathrm{Q}^{k} \mathrm{g}_{0}\right]$
b) $\left[\mathbf{d}_{0}, \mathbf{d}_{1}, \ldots, \mathbf{d}_{k}\right]=\left[\mathbf{g}_{0}, \mathbf{Q} \mathbf{g}_{0}, \ldots, \mathbf{Q}^{k} \mathbf{g}_{0}\right]$
c) $\mathbf{d}_{k}^{T} \mathbf{Q} \mathbf{d}_{i}=0$ for $i \leqslant k-1$
d) $\alpha_{k}=\mathbf{g}_{k}^{T} \mathbf{g}_{k} / \mathbf{d}_{k}^{T} \mathbf{Q} \mathbf{d}_{k}$
e) $\beta_{k}=\mathbf{g}_{k+1}^{T} \mathbf{g}_{k+1} / \mathbf{g}_{k}^{T} \mathbf{g}_{k}$

