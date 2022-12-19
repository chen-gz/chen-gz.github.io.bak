---
title: "Abosolute Continuity"
date: "2022-12-11"
editor_options: 
  markdown: 
    wrap: 80
---

### 6.7 Definitions

Let $\mu$ be a positive measure on a $\sigma$-algebra $\mathfrak{M}$, and let
$\lambda$ be an arbitrary measure on $\mathfrak{M} ; \lambda$ may be positive or
complex. (Recall that a complex measure has its range in the complex plane, but
that our usage of the term "positive measure" includes $\infty$ as an admissible
value. Thus the positive measures do not form a subclass of the complex ones.)

We say that $\lambda$ is absolutely continuous with respect to $\mu$, and write

$$
\lambda \ll \mu
$$

if $\lambda(E)=0$ for every $E \in \mathfrak{M}$ for which $\mu(E)=0$. If there
is a set $A \in \mathfrak{M}$ such that $\lambda(E)=\lambda(A \cap E)$ for every
$E \in \mathfrak{M}$, we say that $\lambda$ is concentrated on $A$. This is
equivalent to the hypothesis that $\lambda(E)=0$ whenever
$E \cap A=\varnothing$.

Suppose $\lambda_1$ and $\lambda_2$ are measures on $\mathfrak{M}$, and suppose
there exists a pair of disjoint sets $A$ and $B$ such that $\lambda_1$ is
concentrated on $A$ and $\lambda_2$ is concentrated on $B$. Then we say that
$\lambda_1$ and $\lambda_2$ are mutually singular, and write

$$
\lambda_1 \perp \lambda_2 .
$$

Here are some elementary properties of these concepts.

### 6.8 Proposition

Suppose, $\mu, \lambda, \lambda_1$, and $\lambda_2$ are measures on a
$\sigma$-algebra $\mathfrak{M}$, and $\mu$ is positive.

(a) If $\lambda$ is concentrated on $A$, so is $|\lambda|$.
(b) If $\lambda_1 \perp \lambda_2$, then
    $\left|\lambda_1\right| \perp\left|\lambda_2\right|$.
(c) If $\lambda_1 \perp \mu$ and $\lambda_2 \perp \mu$, then
    $\lambda_1+\lambda_2 \perp \mu$.
(d) If $\lambda_1 \ll \mu$ and $\lambda_2 \ll \mu$, then
    $\lambda_1+\lambda_2 \ll \mu$.
(e) If $\lambda \ll \mu$, then $|\lambda| \ll \mu$.
(f) If $\lambda_1 \ll \mu$ and $\lambda_2 \perp \mu$, then
    $\lambda_1 \perp \lambda_2$.
(g) If $\lambda \ll \mu$ and $\lambda \perp \mu$, then $\lambda=0$.

PROOF (a) If $E \cap A=\varnothing$ and $\left\{E_j\right\}$ is any partition of
$E$, then $\lambda\left(E_j\right)=0$ for all $j$. Hence $|\lambda|(E)=0$. (b)
This follows immediately from $(a)$. (c) There are disjoint sets $A_1$ and $B_1$
such that $\lambda_1$ is concentrated on $A_1$ and $\mu$ on $B_1$, and there are
disjoint sets $A_2$ and $B_2$ such that $\lambda_2$ is concentrated on $A_2$ and
$\mu$ on $B_2$. Hence $\lambda_1+\lambda_2$ is concentrated on $A=A_1 \cup$
$A_2, \mu$ is concentrated on $B=B_1 \cap B_2$, and $A \cap B=\varnothing$. (d)
This is obvious. (e) Suppose $\mu(E)=0$, and $\left\{E_j\right\}$ is a partition
of $E$. Then $\mu\left(E_j\right)=0$; and since
$\lambda \ll \mu, \lambda\left(E_j\right)=0$ for all $j$, hence
$\sum\left|\lambda\left(E_j\right)\right|=0$. This implies $|\lambda|(E)=0$.

(f) Since $\lambda_2 \perp \mu$, there is a set $A$ with $\mu(A)=0$ on which
    $\lambda_2$ is concentrated. Since $\lambda_1 \ll \mu, \lambda_1(E)=0$ for
    every $E \subset A$. So $\lambda_1$ is concentrated on the complement of
    $A$.
(g) By $(f)$, the hypothesis of $(g)$ implies, that $\lambda \perp \lambda$, and
    this clearly forces $\lambda=0$.

We come now to the principal theorem about absolute continuity. In fact, it is
probably the most important theorem in measure theory. Its statement will
involve $\sigma$-finite measures. The following lemma describes one of their
significant properties.

### $6.9$ Lemma

If $\mu$ is a positive $\sigma$-finite measure on a $\sigma$-algebra
$\mathfrak{M}$ in a set $X$, then there is a function $w \in L^1(\mu)$ such that
$0<w(x)<1$ for every $x \in X$.

Proof To say that $\mu$ is $\sigma$-finite means that $X$ is the union of
countably many sets $E_n \in \mathfrak{M}(n=1,2,3, \ldots)$ for which
$\mu\left(E_n\right)$ is finite. Put $w_n(x)=0$ if $x \in$ $X-E_n$ and put

$$
w_n(x)=2^{-n} /\left(1+\mu\left(E_n\right)\right)
$$

if $x \in E_n$. Then $w=\sum_1^{\infty} w_n$ has the required properties.

The point of the lemma is that $\mu$ can be replaced by a finite measure
$\tilde{\mu}$ (namely, $d \tilde{\mu}=w d \mu$ ) which, because of the strict
positivity of $w$, has precisely the same sets of measure 0 as $\mu$.

### 6.10 The Theorem of Lebesgue-Radon-Nikodym

Let $\mu$ be a positive $\sigma$-finite measure on a $\sigma$-algebra
$\mathfrak{M}$ in a set $X$, and let $\lambda$ be a complex measure on
$\mathfrak{M}$.

(a) There is then a unique pair of complex measures $\lambda_a$ and $\lambda_s$
    on $\mathfrak{M}$ such that

$$
\lambda=\lambda_a+\lambda_s, \quad \lambda_a \ll \mu, \quad \lambda_s \perp \mu .
$$

If $\lambda$ is positive and finite, then so are $\lambda_a$ and $\lambda_s$.

(b) There is a unique $h \in L^1(\mu)$ such that

$$
\lambda_a(E)=\int_E h d \mu
$$

for every set $E \in \mathfrak{M}$. The pair $\left(\lambda_a, \lambda_s\right)$
is called the Lebesgue decomposition of $\lambda$ relative to $\mu$. The
uniqueness of the decomposition is easily seen, for if
$\left(\lambda_a^{\prime}, \lambda_s^{\prime}\right)$ is another pair which
satisfies (1), then

$$
\lambda_a^{\prime}-\lambda_a=\lambda_s-\lambda_s^{\prime},
$$

$\lambda_a^{\prime}-\lambda_\alpha \ll \mu$, and
$\lambda_s-\lambda_s^{\prime} \perp \mu$, hence both sides of (3) are 0 ; we
have used $6.8(c)$, $6.8(d)$, and $6.8(g)$.
