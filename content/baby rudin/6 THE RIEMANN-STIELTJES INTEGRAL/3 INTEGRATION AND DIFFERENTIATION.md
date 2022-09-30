---
title: INTEGRATION AND DIFFERENTIATION
date: 2020-07-30
---

We still confine ourselves to real functions in this section. We shall show that integration and differentiation are, in a certain sense, inverse operations.

**6.20 Theorem** Let $f \in \mathscr{R}$ on $[a, b]$. For $a \leq x \leq b$, put
$$
F(x)=\int_{a}^{x} f(t) d t .
$$

Then $F$ is continuous on $[a, b]$; furthermore, if $f$ is continuous at a point $x_{0}$ of $[a, b]$, then $F$ is differentiable at $x_{0}$, and

$$
F^{\prime}\left(x_{0}\right)=f\left(x_{0}\right) .
$$

Proof Since $f \in \mathscr{R}, f$ is bounded. Suppose $|f(t)| \leq M$ for $a \leq t \leq b$. If $a \leq x<y \leq b$, then

$$
|F(y)-F(x)|=\left|\int_{x}^{y} f(t) d t\right| \leq M(y-x),
$$

by Theorem $6.12(c)$ and $(d)$. Given $\varepsilon>0$, we see that

$$
|F(y)-F(x)|<\varepsilon \text {, }
$$
provided that $|y-x|<\varepsilon / M$. This proves continuity (and, in fact, uniform continuity) of $F$.

Now suppose $f$ is continuous at $x_{0}$. Given $\varepsilon>0$, choose $\delta>0$ such that

$$
\left|f(t)-f\left(x_{0}\right)\right|<\varepsilon
$$

if $\left|t-x_{0}\right|<\delta$, and $a \leq t \leq b$. Hence, if

$$
x_{0}-\delta<s \leq x_{0} \leq t<x_{0}+\delta \quad \text { and } \quad a \leq s<t \leq b,
$$

we have, by Theorem $6.12(d)$,

$$
\left|\frac{F(t)-F(s)}{t-s}-f\left(x_{0}\right)\right|=\left|\frac{1}{t-s} \int_{s}^{t}\left[f(u)-f\left(x_{0}\right)\right] d u\right|<\varepsilon .
$$

It follows that $F^{\prime}\left(x_{0}\right)=f\left(x_{0}\right)$.

**6.21 The fundamental theorem of calculus** If $f \in \mathscr{R}$ on $[a, b]$ and if there is a differentiable function $F$ on $[a, b]$ such that $F^{\prime}=f$, then
$$
\int_{a}^{b} f(x) d x=F(b)-F(a) .
$$

Proof Let $\varepsilon>0$ be given. Choose a partition $P=\left\{x_{0}, \ldots, x_{n}\right\}$ of $[a, b]$ so that $U(P, f)-L(P, f)<\varepsilon$. The mean value theorem furnishes points $t_{i} \in\left[x_{i-1}, x_{i}\right]$ such that

$$
F\left(x_{i}\right)-F\left(x_{i-1}\right)=f\left(t_{i}\right) \Delta x_{i}
$$

for $i=1, \ldots, n$. Thus

$$
\sum_{i=1}^{n} f\left(t_{i}\right) \Delta x_{i}=F(b)-F(a) .
$$

It now follows from Theorem $6.7(c)$ that

$$
\left|F(b)-F(a)-\int_{a}^{b} f(x) d x\right|<\varepsilon .
$$

Since this holds for every $\varepsilon>0$, the proof is complete.

6.22 Theorem (integration by parts) Suppose $F$ and $G$ are differentiable functions on $[a, b], F^{\prime}=f \in \mathscr{R}$, and $G^{\prime}=g \in \mathscr{R}$. Then
$$
\int_{a}^{b} F(x) g(x) d x=F(b) G(b)-F(a) G(a)-\int_{a}^{b} f(x) G(x) d x .
$$

Proof Put $H(x)=F(x) G(x)$ and apply Theorem $6.21$ to $H$ and its derivative. Note that $H^{\prime} \in \mathscr{R}$, by Theorem $6.13 .$ 

