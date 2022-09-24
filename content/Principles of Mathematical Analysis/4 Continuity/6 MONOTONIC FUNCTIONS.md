---
title: MONOTONIC FUNCTIONS
date: 2022-07-24
---

We shall now study those functions which never decrease (or never increase) on a given segment.

**4.28 Definition** Let $f$ be real on $(a, b)$. Then $f$ is said to be monotonically increasing on $(a, b)$ if $a<x<y<b$ implies $f(x) \leq f(y)$. If the last inequality is reversed, we obtain the definition of a monotonically decreasing function. The class of monotonic functions consists of both the increasing and the decreasing functions.

**4.29 Theorem** Let $f$ be monotonically increasing on $(a, b)$. Then $f(x+)$ and $f(x-)$ exist at every point of $x$ of $(a, b)$. More precisely,
$$
\sup _{a<t<x} f(t)=f(x-) \leq f(x) \leq f(x+)=\inf _{x<t<b} f(t) .
$$

Furthermore, if $a<x<y<b$, then

$$
f(x+) \leq f(y-) .
$$

Analogous results evidently hold for monotonically decreasing functions. Proof By hypothesis, the set of numbers $f(t)$, where $a<t<x$, is bounded above by the number $f(x)$, and therefore has a least upper bound which we shall denote by $A$. Evidently $A \leq f(x)$. We have to show that $A=f(x-)$.

Let $\varepsilon>0$ be given. It follows from the definition of $A$ as a least upper bound that there exists $\delta>0$ such that $a<x-\delta<x$ and
$$
A-\varepsilon<f(x-\delta) \leq A \text {. }
$$

Since $f$ is monotonic, we have

$$
f(x-\delta) \leq f(t) \leq A \quad(x-\delta<t<x) .
$$

Combining (27) and (28), we see that

$$
|f(t)-A|<\varepsilon \quad(x-\delta<t<x) .
$$

Hence $f(x-)=A$.

The second half of $(25)$ is proved in precisely the same way. Next, if $a<x<y<b$, we see from (25) that

$$
f(x+)=\inf _{x<t<b} f(t)=\inf _{x<t<y} f(t) .
$$

The last equality is obtained by applying $(25)$ to $(a, y)$ in place of $(a, b)$. Similarly,

$$
f(y-)=\sup _{a<t<y} f(t)=\sup _{x<t<y} f(t) .
$$

Comparison of (29) and (30) gives (26).

**Corollary** Monotonic functions have no discontinuities of the second kind.

This corollary implies that every monotonic function is discontinuous at a countable set of points at most. Instead of appealing to the general theorem whose proof is sketched in Exercise 17, we give here a simple proof which is applicable to monotonic functions.

**4.30 Theorem** Let $f$ be monotonic on $(a, b)$. Then the set of points of $(a, b) a t$ which $f$ is discontinuous is at most countable.

Proof Suppose, for the sake of definiteness, that $f$ is increasing, and let $E$ be the set of points at which $f$ is discontinuous.

With every point $x$ of $E$ we associate a rational number $r(x)$ such that

$$
f(x-)<r(x)<f(x+)
$$

Since $x_{1}<x_{2}$ implies $f\left(x_{1}+\right) \leq f\left(x_{2}-\right)$, we see that $r\left(x_{1}\right) \neq r\left(x_{2}\right)$ if $x_{1} \neq x_{2}$.

We have thus established a 1-1 correspondence between the set $E$ and a subset of the set of rational numbers. The latter, as we know, is countable.

**4.31 Remark** It should be noted that the discontinuities of a monotonic function need not be isolated. In fact, given any countable subset $E$ of $(a, b)$, which may even be dense, we can construct a function $f$, monotonic on $(a, b)$, discontinuous at every point of $E$, and at no other point of $(a, b)$.

To show this, let the points of $E$ be arranged in a sequence $\left\{x_{n}\right\}$, $n=1,2,3, \ldots$ Let $\left\{c_{n}\right\}$ be a sequence of positive numbers such that $\Sigma c_{n}$ converges. Define

$$
f(x)=\sum_{x_{n}<x} c_{n} \quad(a<x<b) .
$$

The summation is to be understood as follows: Sum over those indices $n$ for which $x_{n}<x$. If there are no points $x_{n}$ to the left of $x$, the sum is empty; following the usual convention, we define it to be zero. Since (31) converges absolutely, the order in which the terms are arranged is immaterial.

We leave the verification of the following properties of $f$ to the reader:

(a) $f$ is monotonically increasing on $(a, b)$;

(b) $f$ is discontinuous at every point of $E$; in fact,

$$
f\left(x_{n}+\right)-f\left(x_{n}-\right)=c_{n} .
$$

(c) $f$ is continuous at every other point of $(a, b)$.

Moreover, it is not hard to see that $f(x-)=f(x)$ at all points of $(a, b)$. If a function satisfies this condition, we say that $f$ is continuous from the left. If the summation in (31) were taken over all indices $n$ for which $x_{n} \leq x$, we would have $f(x+)=f(x)$ at every point of $(a, b)$; that is, $f$ would be continuous from the right.

Functions of this sort can also be defined by another method; for an example we refer to Theorem $6.16$.

