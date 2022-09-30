---
title: 3 THE CONTRACTION PRINCIPLE
date: 2022-08-13
---

We now interrupt our discussion of differentiation to insert a fixed point theorem that is valid in arbitrary complete metric spaces. It will be used in the proof of the inverse function theorem.


**9.22 Definition** Let $X$ be a metric space, with metric $d$. If $\varphi$ maps $X$ into $X$ and if there is a number $c<1$ such that

$$
d(\varphi(x), \varphi(y)) \leq c d(x, y)
$$

for all $x, y \in X$, then $\varphi$ is said to be a contraction of $X$ into $X$.

**9.23 Theorem** If $X$ is a complete metric space, and if $\varphi$ is a contraction of $X$ into $X$, then there exists one and only one $x \in X$ such that $\varphi(x)=x$.

In other words, $\varphi$ has a unique fixed point. The uniqueness is a triviality, for if $\varphi(x)=x$ and $\varphi(y)=y$, then (43) gives $d(x, y) \leq c d(x, y)$, which can only happen when $d(x, y)=0$.

The existence of a fixed point of $\varphi$ is the essential part of the theorem. The proof actually furnishes a constructive method for locating the fixed point.

**Proof** Pick $x_{0} \in X$ arbitrarily, and define $\left\{x_{n}\right\}$ recursively, by setting

$$
x_{n+1}=\varphi\left(x_{n}\right) \quad(n=0,1,2, \ldots) \text {. }
$$

Choose $c<1$ so that (43) holds. For $n \geq 1$ we then have

$$
d\left(x_{n+1}, x_{n}\right)=d\left(\varphi\left(x_{n}\right), \varphi\left(x_{n-1}\right)\right) \leq c d\left(x_{n}, x_{n-1}\right) .
$$

Hence induction gives

$$
d\left(x_{n+1}, x_{n}\right) \leq c^{n} d\left(x_{1}, x_{0}\right) \quad(n=0,1,2, \ldots) .
$$

If $n<m$, it follows that

$$
\begin{aligned}
d\left(x_{n}, x_{m}\right) & \leq \sum_{i=n+1}^{m} d\left(x_{i}, x_{i-1}\right) \\
& \leq\left(c^{n}+c^{n+1}+\cdots+c^{m-1}\right) d\left(x_{1}, x_{0}\right) \\
& \leq\left[(1-c)^{-1} d\left(x_{1}, x_{0}\right)\right] c^{n}
\end{aligned}
$$

Thus $\left\{x_{n}\right\}$ is a Cauchy sequence. Since $X$ is complete, $\lim x_{n}=x$ for some $x \in X$.

Since $\varphi$ is a contraction, $\varphi$ is continuous (in fact, uniformly continuous) on $X$. Hence

$$
\varphi(x)=\lim _{n \rightarrow \infty} \varphi\left(x_{n}\right)=\lim _{n \rightarrow \infty} x_{n+1}=x .
$$
