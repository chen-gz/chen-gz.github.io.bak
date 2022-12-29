---
title: "Abosolute Continuity"
date: "2022-12-19"
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

The existence of the decomposition is the significant part of $(a)$. Assertion
(b) is known as the Radon-Nikodym theorem. Again, uniqueness of $h$ is
immediate, from Theorem $1.39(b)$. Also, if $h$ is any member of $L^1(\mu)$, the
integral in (2) defines a measure on $\mathfrak{M}$ (Theorem 1.29) which is
clearly absolutely continuous with respect to $\mu$. The point of the
Radon-Nikodym theorem is the converse: Every $\lambda \ll \mu$ (in which case
$\lambda_a=\lambda$ ) is obtained in this way.

The function $h$ which occurs in (2) is called the Radon-Nikodym derivative of
$\lambda_a$ with respect to $\mu$. As noted after Theorem $1.29$, we may express
(2) in the form $d \lambda_a=h d \mu$, or even in the form
$h=d \lambda_a / d \mu$.

The idea of the following proof, which yields both $(a)$ and $(b)$ at one
stroke, is due to von Neumann.

Proof Assume first that $\lambda$ is a positive bounded measure on
$\mathfrak{M}$. Associate $w$ to $\mu$ as in Lemma 6.9. Then
$d \varphi=d \lambda+w d \mu$ defines a positive bounded measure $\varphi$ on
$\mathfrak{M}$. The definition of the sum of two measures shows that

$$
\int_X f d \varphi=\int_X f d \lambda+\int_X f w d \mu
$$

for $f=\chi_E$, hence for simple $f$, hence for any nonnegative measurable $f$.
If $f \in L^2(\varphi)$, the Schwarz inequality gives

$$
\left|\int_X f d \lambda\right| \leq \int_X|f| d \lambda \leq \int_X|f| d \varphi \leq\left\{\int_X|f|^2 d \varphi\right\}^{1 / 2}\{\varphi(X)\}^{1 / 2}
$$

Since $\varphi(X)<\infty$, we see that

$$
f \rightarrow \int_{\boldsymbol{X}} f d \lambda
$$

is a bounded linear functional on $L^2(\varphi)$. We know that every bounded
linear functional on a Hilbert space $H$ is given by an inner product with an
element of $H$. Hence there exists a $g \in L^2(\varphi)$ such that

$$
\int_x f d \lambda=\int_X f g d \varphi
$$

for every $f \in L^2(\varphi)$.

Observe how the completeness of $L^2(\varphi)$ was used to guarantee the
existence of $g$. Observe also that although $g$ is defined uniquely as an
element of $L^2(\varphi), g$ is determined only a.e. $[\varphi]$ as a point
function on $X$.

Put $f=\chi_E$ in (6), for any $E \in \mathfrak{M}$ with $\varphi(E)>0$. The
left side of (6) is then $\lambda(E)$, and since $0 \leq \lambda \leq \varphi$,
we have

$$
0 \leq \frac{1}{\varphi(E)} \int_E g d \varphi=\frac{\lambda(E)}{\varphi(E)} \leq 1 .
$$

Hence $g(x) \in[0,1]$ for almost all $x$ (with respect to $\varphi$ ), by
Theorem $1.40$. We may therefore assume that $0 \leq g(x) \leq 1$ for every
$x \in X$, without affecting (6), and we rewrite (6) in the form

$$
\int_X(1-g) f d \lambda=\int_X f g w d \mu
$$

Put

$$
A=\{x: 0 \leq g(x)<1\}, \quad B=\{x: g(x)=1\}
$$

and define measures $\lambda_a$ and $\lambda_s$ by

$$
\lambda_a(E)=\lambda(A \cap E), \quad \lambda_s(E)=\lambda(B \cap E),
$$

for all $E \in \mathfrak{M}$.

If $f=\chi_B$ in (8), the left side is 0 , the right side is $\int_B w d \mu$.
Since $w(x)>0$ for all $x$, we conclude that $\mu(B)=0$. Thus
$\lambda_s \perp \mu$.

Since $g$ is bounded, (8) holds if $f$ is replaced by

$$
\left(1+g+\cdots+g^n\right) \chi_E
$$

for $n=1,2,3, \ldots, E \in \mathfrak{M}$. For $\operatorname{such} f$, (8)
becomes

$$
\int_E\left(1-g^{n+1}\right) d \lambda=\int_E g\left(1+g+\cdots+g^n\right) w d \mu .
$$

At every point of $B, g(x)=1$, hence $1-g^{n+1}(x)=0$. At every point of $A$,
$g^{n+1}(x) \rightarrow 0$ monotonically. The left side of (11) converges
therefore to $\lambda(A \cap E)=\lambda_a(E)$ as $n \rightarrow \infty$.

The integrands on the right side of (11) increase monotonically to a nonnegative
measurable limit $h$, and the monotone convergence theorem shows that the right
side of (11) tends to $\int_E h d \mu$ as $n \rightarrow \infty$.

We have thus proved that (2) holds for every $E \in \mathfrak{M}$. Taking $E=X$,
we see that $h \in L^1(\mu)$, since $\lambda_a(X)<\infty$.

Finally, (2) shows that $\lambda_a \ll \mu$, and the proof is complete for
positive $\lambda$. If $\lambda$ is a complex measure on $\mathfrak{M}$, then
$\lambda=\lambda_1+i \lambda_2$, with $\lambda_1$ and $\lambda_2$ real, and we
can apply the preceding case to the positive and negative variations of
$\lambda_1$ and $\lambda_2$.

If both $\mu$ and $\lambda$ are positive and $\sigma$-finite, most of Theorem
$6.10$ is still true. We can now write $X=\bigcup X_n$, where
$\mu\left(X_n\right)<\infty$ and $\lambda\left(X_n\right)<\infty$, for
$n=1,2,3$, ... The Lebesgue decompositions of the measures
$\lambda\left(E \cap X_n\right)$ still give us a Lebesgue decomposition of
$\lambda$, and we still get a function $h$ which satisfies Eq. 6.10(2); however,
it is no longer true that $h \in L^1(\mu)$, although $h$ is "locally in $L^1$,"
i.e., $\int_{X_n} h d \mu<\infty$ for each $n$.

Finally, if we go beyond $\sigma$-finiteness, we meet situations where the two
theorems under consideration actually fail. For example, let $\mu$ be Lebesgue
measure on $(0,1)$, and let $\lambda$ be the counting measure on the
$\sigma$-algebra of all Lebesgue

### 6.11 Theorem

Suppose $\mu$ and $\lambda$ are measures on a $\sigma$-algebra
$\mathfrak{M}, \mu$ is positive, and $\lambda$ is complex. Then the following
two conditions are equivalent:

(a) $\lambda \ll \mu$.
(b) To every $\epsilon>0$ corresponds a $\delta>0$ such that
    $|\lambda(E)|<\epsilon$ for all $E \in \mathfrak{M}$ with $\mu(E)<\delta$.

Property $(b)$ is sometimes used as the definition of absolute
continuity.However, $(a)$ does not imply $(b)$ if $\lambda$ is a positive
unbounded measure. For instance, let $\mu$ be Lebesgue measure on $(0,1)$, and
put

$$
\lambda(E)=\int_E t^{-1} d t
$$

for every Lebesgue measurable set $E \subset(0,1)$.

Proof Suppose $(b)$ holds. If $\mu(E)=0$, then $\mu(E)<\delta$ for every
$\delta>0$, hence $|\lambda(E)|<\epsilon$ for every $\epsilon>0$, so
$\lambda(E)=0$. Thus $(b)$ implies $(a)$.

Suppose $(b)$ is false. Then there exists an $\epsilon>0$ and there exist sets
$E_n \in$ $\mathfrak{M}(n=1,2,3, \ldots)$ such that $\mu\left(E_n\right)<2^{-n}$
but $\left|\lambda\left(E_n\right)\right| \geq \epsilon$. Hence
$|\lambda|\left(E_n\right) \geq \epsilon$. Put

$$
A_n=\bigcup_{i=n}^{\infty} E_i, \quad A=\bigcap_{n=1}^{\infty} A_n .
$$

Then $\mu\left(A_n\right)<2^{-n+1}, A_n \supset A_{n+1}$, and so Theorem 1.19(e)
shows that $\mu(A)=0$ and that

$$
|\lambda|(A)=\lim _{n \rightarrow \infty}|\lambda|\left(A_n\right) \geq \epsilon>0,
$$

since $|\lambda|\left(A_n\right) \geq|\lambda|\left(E_n\right)$. It follows that
we do not have $|\lambda| \ll \mu$, hence $(a)$ is false, by Proposition 6.8(e).
