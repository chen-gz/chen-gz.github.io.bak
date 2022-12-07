---
title: DISCONTINUITIES
date: 2022-07-24
---

If $x$ is a point in the domain of definition of the function $f$ at which $f$ is not continuous, we say that $f$ is discontinuous at $x$, or that $f$ has a discontinuity at $x$. If $f$ is defined on an interval or on a segment, it is customary to divide discontinuities into two types. Before giving this classification, we have to define the right-hand and the left-hand limits of $f$ at $x$, which we denote by $f(x+)$ and $f(x-)$, respectively.
**4.25 Definition** Let $f$ be defined on $(a, b)$. Consider any point $x$ such that $a \leq x<b$. We write
$$
f(x+)=q
$$
if $f\left(t_{n}\right) \rightarrow q$ as $n \rightarrow \infty$, for all sequences $\left\{t_{n}\right\}$ in $(x, b)$ such that $t_{n} \rightarrow x$. To obtain the definition of $f(x-)$, for $a<x \leq b$, we restrict ourselves to sequences $\left\{t_{n}\right\}$ in $(a, x)$.
It is clear that any point $x$ of $(a, b), \lim _{t \rightarrow x} f(t)$ exists if and only if
$$
f(x+)=f(x-)=\lim _{t \rightarrow x} f(t) .
$$
**4.26 Definition** Let $f$ be defined on $(a, b)$. If $f$ is discontinuous at a point $x$, and if $f(x+)$ and $f(x-)$ exist, then $f$ is said to have a discontinuity of the *first kind*, or a simple discontinuity, at $x$. Otherwise the discontinuity is said to be of the *second kind*.

There are two ways in which a function can have a simple discontinuity: either $f(x+) \neq f(x-)$ [in which case the value $f(x)$ is immaterial], or $f(x+)=$ $f(x-) \neq f(x)$.

**4.27 Examples**

(a) Define

$$
f(x)= \begin{cases}1 & (x \text { rational }), \\ 0 & (x \text { irrational })\end{cases}
$$

Then $f$ has a discontinuity of the second kind at every point $x$, since neither $f(x+)$ nor $f(x-)$ exists.

(b) Define

$$
f(x)= \begin{cases}x & (x \text { rational }), \\ 0 & (x \text { irrational) }\end{cases}
$$

Then $f$ is continuous at $x=0$ and has a discontinuity of the second kind at every other point.

(c) Define

$$
f(x)= \begin{cases}x+2 & (-3<x<-2) \\ -x-2 & (-2 \leq x<0) \\ x+2 & (0 \leq x<1)\end{cases}
$$

Then $f$ has a simple discontinuity at $x=0$ and is continuous at every other point of $(-3,1)$.

(d) Define

$$
f(x)= \begin{cases}\sin \frac{1}{x} & (x \neq 0) \\ 0 & (x=0)\end{cases}
$$

Since neither $f(0+)$ nor $f(0-)$ exists, $f$ has a discontinuity of the second kind at $x=0$. We have not yet shown that $\sin x$ is a continuous function. If we assume this result for the moment, Theorem $4.7$ implies that $f$ is continuous at every point $x \neq 0$.