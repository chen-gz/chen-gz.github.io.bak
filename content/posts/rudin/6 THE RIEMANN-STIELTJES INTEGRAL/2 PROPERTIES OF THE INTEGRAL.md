---
title: PROPERTIES OF THE INTEGRAL
date: 2020-07-30
---

**6.12 Theorem**

(a) If $f_{1} \in \mathscr{R}(\alpha)$ and $f_{2} \in \mathscr{R}(\alpha)$ on $[a, b]$, then

$$
f_{1}+f_{2} \in \mathscr{R}(\alpha),
$$

$c f \in \mathscr{R}(\alpha)$ for every constant $c$, and

$$
\begin{gathered}
\int_{a}^{b}\left(f_{1}+f_{2}\right) d \alpha=\int_{a}^{b} f_{1} d \alpha+\int_{a}^{b} f_{2} d \alpha, \\
\int_{a}^{b} c f d \alpha=c \int_{a}^{b} f d \alpha .
\end{gathered}
$$

(b) If $f_{1}(x) \leq f_{2}(x)$ on $[a, b]$, then

$$
\int_{a}^{b} f_{1} d \alpha \leq \int_{a}^{b} f_{2} d \alpha .
$$

(c) If $f \in \mathscr{R}(\alpha)$ on $[a, b]$ and if $a<c<b$, then $f \in \mathscr{R}(\alpha)$ on $[a, c]$ and on $[c, b]$, and

$$
\int_{a}^{c} f d \alpha+\int_{c}^{b} f d \alpha=\int_{a}^{b} f d \alpha .
$$

(d) If $f \in \mathscr{R}(\alpha)$ on $[a, b]$ and if $|f(x)| \leq M$ on $[a, b]$, then

$$
\left|\int_{a}^{b} f d \alpha\right| \leq M[\alpha(b)-\alpha(a)] \text {. }
$$

(e) If $f \in \mathscr{R}\left(\alpha_{1}\right)$ and $f \in \mathscr{R}\left(\alpha_{2}\right)$, then $f \in \mathscr{R}\left(\alpha_{1}+\alpha_{2}\right)$ and

$$
\int_{a}^{b} f d\left(\alpha_{1}+\alpha_{2}\right)=\int_{a}^{b} f d \alpha_{1}+\int_{a}^{b} f d \alpha_{2} ;
$$

if $f \in \mathscr{R}(\alpha)$ and $c$ is a positive constant, then $f \in \mathscr{R}(c \alpha)$ and

$$
\int_{a}^{b} f d(c \alpha)=c \int_{a}^{b} f d \alpha .
$$

Proof If $f=f_{1}+f_{2}$ and $P$ is any partition of $[a, b]$, we have

$$
\begin{aligned}
L\left(P, f_{1}, \alpha\right)+L\left(P, f_{2}, \alpha\right) \leq L(P, f, \alpha) \\
& \leq U(P, f, \alpha) \leq U\left(P, f_{1}, \alpha\right)+U\left(P, f_{2}, \alpha\right) .
\end{aligned}
$$

If $f_{1} \in \mathscr{R}(\alpha)$ and $f_{2} \in \mathscr{R}(\alpha)$, let $\varepsilon>0$ be given. There are partitions $P_{j}$ $(j=1,2)$ such that

$$
U\left(P_{j}, f_{j}, \alpha\right)-L\left(P_{j}, f_{j}, \alpha\right)<\varepsilon
$$

These inequalities persist if $P_{1}$ and $P_{2}$ are replaced by their common refinement $P$. Then (20) implies

$$
U(P, f, \alpha)-L(P, f, \alpha)<2 \varepsilon,
$$

which proves that $f \in \mathscr{R}(\alpha)$.

With this same $P$ we have

$$
U\left(P, f_{J}, \alpha\right)<\int f_{j} d \alpha+\varepsilon \quad(j=1,2) ;
$$

hence (20) implies

$$
\int f d \alpha \leq U(P, f, \alpha)<\int f_{1} d \alpha+\int f_{2} d \alpha+2 \varepsilon .
$$

Since $\varepsilon$ was arbitrary, we conclude that

$$
\int f d \alpha \leq \int f_{1} d \alpha+\int f_{2} d \alpha .
$$

If we replace $f_{1}$ and $f_{2}$ in (21) by $-f_{1}$ and $-f_{2}$, the inequality is reversed, and the equality is proved.

The proofs of the other assertions of Theorem $6.12$ are so similar that we omit the details. In part $(c)$ the point is that (by passing to refinements) we may restrict ourselves to partitions which contain the point $c$, in approximating $\int f d \alpha$.

**6.13 Theorem** If $f \in \mathscr{R}(\alpha)$ and $g \in \mathscr{R}(\alpha)$ on $[a, b]$, then

(a) $f g \in \mathscr{R}(\alpha)$;

(b) $|f| \in \mathscr{R}(\alpha)$ and $\left|\int_{a}^{b} f d \alpha\right| \leq \int_{a}^{b}|f| d \alpha$.

Proof If we take $\phi(t)=t^{2}$, Theorem $6.11$ shows that $f^{2} \in \mathscr{R}(\alpha)$ if $f \in \mathscr{R}(a)$. The identity

$$
4 f g=(f+g)^{2}-(f-g)^{2}
$$

completes the proof of $(a)$.

If we take $\phi(t)=|t|$, Theorem 6.11 shows similarly that $|f| \in \mathscr{R}(\alpha)$. Choose $c=\pm 1$, so that

$$
c \int f d \alpha \geq 0
$$

Then

$$
\left|\int f d \alpha\right|=c \int f d \alpha=\int c f d \alpha \leq-\int|f| d \alpha,
$$

since $c f \leq|f|$.

**6.14 Definition** The unit step function $I$ is defined by
$$
I(x)= \begin{cases}0 & (x \leq 0) \\ 1 & (x>0)\end{cases}
$$

**6.15 Theorem** If $a<s<b, f$ is bounded on $[a, b], f$ is continuous at $s$, and $\alpha(x)=I(x-s)$, then
$$
\int_{a}^{b} f d \alpha=f(s) .
$$

Proof Consider partitions $P=\left\{x_{0}, x_{1}, x_{2}, x_{3}\right\}$, where $x_{0}=a$, and $x_{1}=s<x_{2}<x_{3}=b$. Then

$$
U(P, f, \alpha)=M_{2}, \quad L(P, f, \alpha)=m_{2} .
$$

Since $f$ is continuous at $s$, we see that $M_{2}$ and $m_{2}$ converge to $f(s)$ as $x_{2} \rightarrow s$.

**6.16 Theorem** Suppose $c_{n} \geq 0$ for $1,2,3, \ldots, \Sigma c_{n}$ converges, $\left\{s_{n}\right\}$ is a sequence of distinct points in $(a, b)$, and
$$
\alpha(x)=\sum_{n=1}^{\infty} c_{n} I\left(x-s_{n}\right) .
$$

Let $f$ be continuous on $[a, b]$. Then

$$
\int_{a}^{b} f d \alpha=\sum_{n=1}^{\infty} c_{n} f\left(s_{n}\right) .
$$

Proof The comparison test shows that the series (22) converges for every $x$. Its $\operatorname{sum} \alpha(x)$ is evidently monotonic, and $\alpha(a)=0, \alpha(b)=\Sigma c_{n}$. (This is the type of function that occurred in Remark 4.31.)

Let $\varepsilon>0$ be given, and choose $N$ so that

$$
\sum_{N+1}^{\infty} c_{n}<\varepsilon .
$$

Put

$$
\alpha_{1}(x)=\sum_{n=1}^{N} c_{n} I\left(x-s_{n}\right), \quad \alpha_{2}(x)=\sum_{N+1}^{\infty} c_{n} I\left(x-s_{n}\right) .
$$

By Theorems $6.12$ and $6.15$,

$$
\int_{a}^{b} f d \alpha_{1}=\sum_{i=1}^{N} c_{n} f\left(s_{n}\right) .
$$

Since $\alpha_{2}(b)-\alpha_{2}(a)<\varepsilon$

$$
\left|\int_{a}^{b} f d \alpha_{2}\right| \leq M \varepsilon,
$$

where $M=\sup |f(x)|$. Since $\alpha=\alpha_{1}+\alpha_{2}$, it follows from (24) and (25) that

$$
\left|\int_{a}^{b} f d \alpha-\sum_{i=1}^{N} c_{n} f\left(s_{n}\right)\right| \leq M \varepsilon .
$$

If we let $N \rightarrow \infty$, we obtain (23).

**6.17 Theorem** Assume $\alpha$ increases monotonically and $\alpha^{\prime} \in \mathscr{R}$ on $[a, b]$. Let $f$ be a bounded real function on $[a, b]$.

Then $f \in \mathscr{R}(\alpha)$ if and only if $f \alpha^{\prime} \in \mathscr{R}$. In that case

$$
\int_{a}^{b} f d \alpha=\int_{a}^{b} f(x) \alpha^{\prime}(x) d x .
$$

Proof Let $\varepsilon>0$ be given and apply Theorem $6.6$ to $\alpha^{\prime}$ : There is a partition $P=\left\{x_{0}, \ldots, x_{n}\right\}$ of $[a, b]$ such that

$$
U\left(P, \alpha^{\prime}\right)-L\left(P, \alpha^{\prime}\right)<\varepsilon .
$$

The mean value theorem furnishes points $t_{i} \in\left[x_{i-1}, x_{i}\right]$ such that

$$
\Delta \alpha_{i}=\alpha^{\prime}\left(t_{i}\right) \Delta x_{i}
$$

for $i=1, \ldots, n$. If $s_{i} \in\left[x_{i-1}, x_{i}\right]$, then

$$
\sum_{i=1}^{n}\left|\alpha^{\prime}\left(s_{i}\right)-\alpha^{\prime}\left(t_{i}\right)\right| \Delta x_{i}<\varepsilon,
$$

by (28) and Theorem 6.7(b). Put $M=\sup |f(x)|$. Since

$$
\sum_{i=1}^{n} f\left(s_{i}\right) \Delta \alpha_{i}=\sum_{i=1}^{n} f\left(s_{i}\right) \alpha^{\prime}\left(t_{i}\right) \Delta x_{i}
$$

it follows from (29) that

$$
\left|\sum_{i=1}^{n} f\left(s_{i}\right) \Delta \alpha_{i}-\sum_{i=1}^{n} f\left(s_{i}\right) \alpha^{\prime}\left(s_{i}\right) \Delta x_{i}\right| \leq M \varepsilon .
$$

In particular,

$$
\sum_{i=1}^{n} f\left(s_{i}\right) \Delta \alpha_{i} \leq U\left(P, f \alpha^{\prime}\right)+M \varepsilon,
$$

for all choices of $s_{i} \in\left[x_{i-1}, x_{i}\right]$, so that

$$
U(P, f, \alpha) \leq U\left(P, f \alpha^{\prime}\right)+M \varepsilon .
$$

The same argument leads from (30) to

$$
U\left(P, f \alpha^{\prime}\right) \leq U(P, f, \alpha)+M \varepsilon .
$$

Thus

$$
\left|U(P, f, \alpha)-U\left(P, f \alpha^{\prime}\right)\right| \leq M \varepsilon .
$$

Now note that (28) remains true if $P$ is replaced by any refinement. Hence (31) also remains true. We conclude that

$$
\left|\int_{a}^{b} f d \alpha-\bar{\int}_{a}^{b} f(x) \alpha^{\prime}(x) d x\right| \leq M \varepsilon .
$$

But $\varepsilon$ is arbitrary. Hence

$$
\int_{a}^{b} f d \alpha=\bar{\int}_{a}^{b} f(x) \alpha^{\prime}(x) d x,
$$

for any bounded $f$. The equality of the lower integrals follows from (30) in exactly the same way. The theorem follows.

**6.18 Remark** The two preceding theorems illustrate the generality and flexibility which are inherent in the Stieltjes process of integration. If $\alpha$ is a pure step function [this is the name often given to functions of the form (22)], the integral reduces to a finite or infinite series. If $\alpha$ has an integrable derivative, the integral reduces to an ordinary Riemann integral. This makes it possible in many cases to study series and integrals simultaneously, rather than separately.

To illustrate this point, consider a physical example. The moment of inertia of a straight wire of unit length, about an axis through an endpoint, at right angles to the wire, is

$$
\int_{0}^{1} x^{2} d m
$$

where $m(x)$ is the mass contained in the interval $[0, x]$. If the wire is regarded as having a continuous density $\rho$, that is, if $m^{\prime}(x)=\rho(x)$, then (33) turns into

$$
\int_{0}^{1} x^{2} \rho(x) d x .
$$

On the other hand, if the wire is composed of masses $m_{i}$ concentrated at points $x_{i},(33)$ becomes

$$
\sum_{i} x_{i}^{2} m_{i} \text {. }
$$

Thus (33) contains (34) and (35) as special cases, but it contains much more; for instance, the case in which $m$ is continuous but not everywhere differentiable.

**6.19 Theorem** (change of variable) Suppose $\varphi$ is a **strictly increasing continuous function** that maps an interval $[A, B]$ onto $[a, b]$. Suppose $\alpha$ is monotonically increasing on $[a, b]$ and $f \in \mathscr{R}(\alpha)$ on $[a, b]$. Define $\beta$ and $g$ on $[A, B]$ by
$$
\beta(y)=\alpha(\varphi(y)), \quad g(y)=f(\varphi(y)) .
$$



\section{Then $g \in \mathscr{R}(\beta)$ and}

$$
\int_{A}^{B} g d \beta=\int_{a}^{b} f d \alpha
$$

Proof To each partition $P=\left\{x_{0}, \ldots, x_{n}\right\}$ of $[a, b]$ corresponds a partition $Q=\left\{y_{0}, \ldots, y_{n}\right\}$ of $[A, B]$, so that $x_{i}=\varphi\left(y_{i}\right)$. All partitions of $[A, B]$ are obtained in this way. Since the values taken by $f$ on $\left[x_{i-1}, x_{i}\right]$ are exactly the same as those taken by $g$ on $\left[y_{i-1}, y_{i}\right]$, we see that

$$
U(Q, g, \beta)=U(P, f, \alpha), \quad L(Q, g, \beta)=L(P, f, \alpha) .
$$

Since $f \in \mathscr{R}(\alpha), P$ can be chosen so that both $U(P, f, \alpha)$ and $L(P, f, \alpha)$ are close to $\int f d \alpha$. Hence (38), combined with Theorem 6.6, shows that $g \in \mathscr{R}(\beta)$ and that (37) holds. This completes the proof.

Let us note the following special case:

Take $\alpha(x)=x$. Then $\beta=\varphi$. Assume $\varphi^{\prime} \in \mathscr{R}$ on $[A, B]$. If Theorem $6.17$ is applied to the left side of (37), we obtain

$$
\int_{a}^{b} f(x) d x=\int_{A}^{B} f(\varphi(y)) \varphi^{\prime}(y) d y .
$$

