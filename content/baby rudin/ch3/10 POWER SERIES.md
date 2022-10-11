---
title: 10 POWER SERIES
date: 2022-07-17
---

* [youtube](https://youtu.be/-PMAQ6BcBOU)
* [bili](https://www.bilibili.com/video/BV16e4y1J7N2/)
* note [pdf](https://github.com/chen-gz/bed2/blob/b590a02f3a9e146a3f1e04f18fd66732c27014ff/21%20POWER%20SERIES.pdf)  [xopp](https://github.com/chen-gz/bed2/blob/b590a02f3a9e146a3f1e04f18fd66732c27014ff/21%20POWER%20SERIES.xopp)

**3.38 Definition** Given a sequence $\left\{c_{n}\right\}$ of complex numbers, the series

$$
\sum_{n=0}^{\infty} c_{n} z^{n}
$$

is called a power series. The numbers $c_{n}$ are called the coefficients of the series; $z$ is a complex number.

In general, the series will converge or diverge, depending on the choice of $z$. More specifically, with every power series there is associated a circle, the circle of convergence, such that (19) converges if $z$ is in the interior of the circle and diverges if $z$ is in the exterior (to cover all cases, we have to consider the plane as the interior of a circle of infinite radius, and a point as a circle of radius zero). The behavior on the circle of convergence is much more varied and cannot be described so simply.

**3.39 Theorem** Given the power series $\Sigma c_{n} z^{n}$, put
$$
\alpha=\limsup _{n \rightarrow \infty} \sqrt[n]{\left|c_{n}\right|}, \quad R=\frac{1}{\alpha}
$$
(If $\alpha=0, R=+\infty$; if $\alpha=+\infty, R=0$.) Then $\Sigma c_{n} z^{n}$ converges if $|z|<R$, and diverges if $|z|>R$.
Proof Put $a_{n}=c_{n} z^{n}$, and apply the root test:
$$
\limsup _{n \rightarrow \infty} \sqrt[n]{\left|a_{n}\right|}=|z| \limsup _{n \rightarrow \infty} \sqrt[n]{\left|c_{n}\right|}=\frac{|z|}{R}
$$
Note: $R$ is called the radius of convergence of $\Sigma c_{n} z^{n}$.

**3.40 Examples**
(a) The series $\Sigma n^{n} z^{n}$ has $R=0$.
(b) The series $\sum \frac{z^{n}}{n !}$ has $R=+\infty$. (In this case the ratio test is easier to apply than the root test.)
(c) The series $\Sigma z^{n}$ has $R=1$. If $|z|=1$, the series diverges, since $\left\{z^{n}\right\}$ does not tend to 0 as $n \rightarrow \infty$.
(d) The series $\sum \frac{z^{n}}{n}$ has $R=1$. It diverges if $z=1$. It converges for all other $z$ with $|z|=1$. (The last assertion will be proved in Theorem 3.44.) (e) The series $\sum \frac{z^{n}}{n^{2}}$ has $R=1$. It converges for all $z$ with $|z|=1$, by the comparison test, since $\left|z^{n} / n^{2}\right|=1 / n^{2}$.
