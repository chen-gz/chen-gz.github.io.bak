---
title: MEAN VALUE THEOREMS
date: 2022-07-27
---

**5.7 Definition** Let $f$ be a real function defined on a metric space $X$. We say that $f$ has a local maximum at a point $p \in X$ if there exists $\delta>0$ such that $f(q) \leq$ $f(p)$ for all $q \in X$ with $d(p, q)<\delta$.

Local minima are defined likewise.

Our next theorem is the basis of many applications of differentiation.

**$5.8$ Theorem** Let $f$ be defined on $[a, b]$; if $f$ has a local maximum at a point $x \in(a, b)$, and if $f^{\prime}(x)$ exists, then $f^{\prime}(x)=0$.

The analogous statement for local minima is of course also true.

Proof Choose $\delta$ in accordance with Definition 5.7, so that

$$
a<x-\delta<x<x+\delta<b \text {. }
$$

If $x-\delta<t<x$, then

$$
\frac{f(t)-f(x)}{t-x} \geq 0
$$

Letting $t \rightarrow x$, we see that $f^{\prime}(x) \geq 0$.

If $x<t<x+\delta$, then

$$
\frac{f(t)-f(x)}{t-x} \leq 0,
$$

which shows that $f^{\prime}(x) \leq 0$. Hence $f^{\prime}(x)=0$.

**5.9 Theorem** If $f$ and $g$ are continuous real functions on $[a, b]$ which are differentiable in $(a, b)$, then there is a point $x \in(a, b)$ at which
$$
[f(b)-f(a)] g^{\prime}(x)=[g(b)-g(a)] f^{\prime}(x) .
$$

Note that differentiability is not required at the endpoints.

Proof Put

$$
h(t)=[f(b)-f(a)] g(t)-[g(b)-g(a)] f(t) \quad(a \leq t \leq b) .
$$

Then $h$ is continuous on $[a, b], h$ is differentiable in $(a, b)$, and

$$
h(a)=f(b) g(a)-f(a) g(b)=h(b) .
$$

To prove the theorem, we have to show that $h^{\prime}(x)=0$ for some $x \in(a, b)$.

If $h$ is constant, this holds for every $x \in(a, b)$. If $h(t)>h(a)$ for some $t \in(a, b)$, let $x$ be a point on $[a, b]$ at which $h$ attains its maximum (Theorem 4.16). By (12), $x \in(a, b)$, and Theorem $5.8$ shows that $h^{\prime}(x)=0$. If $h(t)<h(a)$ for some $t \in(a, b)$, the same argument applies if we choose for $x$ a point on $[a, b]$ where $h$ attains its minimum.

This theorem is often called a generalized mean value theorem; the following special case is usually referred to as "the" mean value theorem:

**5.10 Theorem** Iff is a real continuous function on $[a, b]$ which is differentiable in $(a, b)$, then there is a point $x \in(a, b)$ at which
$$
f(b)-f(a)=(b-a) f^{\prime}(x) .
$$

Proof Take $g(x)=x$ in Theorem 5.9.

**5.11 Theorem** Suppose $f$ is differentiable in $(a, b)$.

(a) If $f^{\prime}(x) \geq 0$ for all $x \in(a, b)$, then $f$ is monotonically increasing.

(b) If $f^{\prime}(x)=0$ for all $x \in(a, b)$, then $f$ is constant.

(c) If $f^{\prime}(x) \leq 0$ for all $x \in(a, b)$, then $f$ is monotonically decreasing.

Proof All conclusions can be read off from the equation

$$
f\left(x_{2}\right)-f\left(x_{1}\right)=\left(x_{2}-x_{1}\right) f^{\prime}(x),
$$

which is valid, for each pair of numbers $x_{1}, x_{2}$ in $(a, b)$, for some $x$ between $x_{1}$ and $x_{2}$.

