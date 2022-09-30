---
title: TAYLOR'S THEOREM
date: 2022-07-28
---


**5.15 Theorem** Suppose $f$ is a real function on $[a, b], n$ is a positive integer, $f^{(n-1)}$ is continuous on $[a, b], f^{(n)}(t)$ exists for every $t \in(a, b)$. Let $\alpha, \beta$ be distinct points of $[a, b]$, and define
$$
P(t)=\sum_{k=0}^{n-1} \frac{f^{(k)}(\alpha)}{k !}(t-\alpha)^{k} .
$$

Then there exists a point $x$ between $\alpha$ and $\beta$ such that

$$
f(\beta)=P(\beta)+\frac{f^{(n)}(x)}{n !}(\beta-\alpha)^{n} .
$$

For $n=1$, this is just the mean value theorem. In general, the theorem shows that $f$ can be approximated by a polynomial of degree $n-1$, and that (24) allows us to estimate the error, if we know bounds on $\left|f^{(n)}(x)\right|$.

Proof Let $M$ be the number defined by

$$
f(\beta)=P(\beta)+M(\beta-\alpha)^{n}
$$

and put

$$
g(t)=f(t)-P(t)-M(t-\alpha)^{n} \quad(a \leq t \leq b) .
$$

We have to show that $n ! M=f^{(n)}(x)$ for some $x$ between $\alpha$ and $\beta$. By (23) and (26),

$$
g^{(n)}(t)=f^{(n)}(t)-n ! M \quad(a<t<b) .
$$

Hence the proof will be complete if we can show that $g^{(n)}(x)=0$ for some $x$ between $\alpha$ and $\beta$.

Since $P^{(k)}(\alpha)=f^{(k)}(\alpha)$ for $k=0, \ldots, n-1$, we have

$$
g(\alpha)=g^{\prime}(\alpha)=\cdots=g^{(n-1)}(\alpha)=0 .
$$

Our choice of $M$ shows that $g(\beta)=0$, so that $g^{\prime}\left(x_{1}\right)=0$ for some $x_{1}$ between $\alpha$ and $\beta$, by the mean value theorem. Since $g^{\prime}(\alpha)=0$, we conclude similarly that $g^{\prime \prime}\left(x_{2}\right)=0$ for some $x_{2}$ between $\alpha$ and $x_{1}$. After $n$ steps we arrive at the conclusion that $g^{(n)}\left(x_{n}\right)=0$ for some $x_{n}$ between $\alpha$ and $x_{n-1}$, that is, between $\alpha$ and $\beta$.


