---
title: THE STONE-WEIERSTRASS THEOREM.md
date: 2022-08-04
---

**7.26 Theorem** *If $f$ is a continuous complex function on $[a, b]$, there exists a sequence of polynomials $P_{n}$ such that
$$
\lim _{n \rightarrow \infty} P_{n}(x)=f(x)
$$
uniformly on $[a, b]$. If $f$ is real, the $P_{n}$ may be taken real.*

This is the form in which the theorem was originally discovered by Weierstrass.

**Proof** We may assume, without loss of generality, that $[a, b]=[0,1]$. We may also assume that $f(0)=f(1)=0$. For if the theorem is proved for this case, consider

$$
g(x)=f(x)-f(0)-x[f(1)-f(0)] \quad(0 \leq x \leq 1) .
$$

Here $g(0)=g(1)=0$, and if $g$ can be obtained as the limit of a uniformly convergent sequence of polynomials, it is clear that the same is true for $f$, since $f-g$ is a polynomial.

Furthermore, we define $f(x)$ to be zero for $x$ outside $[0,1]$. Then $f$ is uniformly continuous on the whole line.

We put

$$
Q_{n}(x)=c_{n}\left(1-x^{2}\right)^{n} \quad(n=1,2,3, \ldots),
$$

where $c_{n}$ is chosen so that

$$
\int_{-1}^{1} Q_{n}(x) d x=1 \quad(n=1,2,3, \ldots) .
$$

We need some information about the order of magnitude of $c_{n}$. Since

$$
\begin{aligned}
\int_{-1}^{1}\left(1-x^{2}\right)^{n} d x=2 \int_{0}^{1}\left(1-x^{2}\right)^{n} d x & \geq 2 \int_{0}^{1 / \sqrt{n}}\left(1-x^{2}\right)^{n} d x \\
& \geq 2 \int_{0}^{1 / \sqrt{n}}\left(1-n x^{2}\right) d x \\
&=\frac{4}{3 \sqrt{n}} \\
&>\frac{1}{\sqrt{n}}
\end{aligned}
$$

it follows from (48) that

$$
c_{n}<\sqrt{n} .
$$