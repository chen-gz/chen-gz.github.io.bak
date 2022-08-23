---
title: 6 THE GAMMA FUNCTION.md
date: 2022-08-11
---

This function is closely related to factorials and crops up in many unexpected places in analysis. Its origin, history, and development are very well described in an interesting article by P. J. Davis (Amer. Math. Monthly, vol. 66, 1959, pp. 849-869). Artin's book (cited in the Bibliography) is another good elementary introduction.

Our presentation will be very condensed, with only a few comments after each theorem. This section may thus be regarded as a large exercise, and as an opportunity to apply some of the material that has been presented so far.

**8.18 Theorem**
(a) The functional equation
$$
\Gamma(x+1)=x \Gamma(x)
$$
holds if $0<x<\infty$.
(b) $\Gamma(n+1)=n !$ for $n=1,2,3, \ldots$
(c) $\log \Gamma$ is convex on $(0, \infty)$.

**Proof** An integration by parts proves $(a)$. Since $\Gamma(1)=1$, (a) implies (b), by induction. If $1<p<\infty$ and $(1 / p)+(1 / q)=1$, apply Hölder's inequality (Exercise 10, Chap. 6) to (93), and obtain

$$
\Gamma\left(\frac{x}{p}+\frac{y}{q}\right) \leq \Gamma(x)^{1 / p} \Gamma(y)^{1 / q} .
$$

This is equivalent to $(c)$.

It is a rather surprising fact, discovered by Bohr and Mollerup, that these three properties characterize $\Gamma$ completely.

**8.19 Theorem** Iff is a positive function on $(0, \infty)$ such that

(a) $f(x+1)=x f(x)$,
(b) $f(1)=1$,
(c) $\log f$ is convex,
then $f(x)=\Gamma(x)$.

**Proof** Since $\Gamma$ satisfies $(a),(b)$, and $(c)$, it is enough to prove that $f(x)$ is uniquely determined by $(a),(b),(c)$, for all $x>0$. By $(a)$, it is enough to do this for $x \in(0,1)$.

Put $\varphi=\log f$. Then

$$
\varphi(x+1)=\varphi(x)+\log x \quad(0<x<\infty),
$$

$\varphi(1)=0$, and $\varphi$ is convex. Suppose $0<x<1$, and $n$ is a positive integer. By (94), $\varphi(n+1)=\log (n$ !). Consider the difference quotients of $\varphi$ on the intervals $[n, n+1],[n+1, n+1+x],[n+1, n+2]$. Since $\varphi$ is convex

$$
\log n \leq \frac{\varphi(n+1+x)-\varphi(n+1)}{x} \leq \log (n+1) \text {. }
$$

Repeated application of (94) gives

$$
\varphi(n+1+x)=\varphi(x)+\log [x(x+1) \cdots(x+n)] .
$$

Thus

$$
0 \leq \varphi(x)-\log \left[\frac{n ! n^{x}}{x(x+1) \cdots(x+n)}\right] \leq x \log \left(1+\frac{1}{n}\right)
$$

The last expression tends to 0 as $n \rightarrow \infty$. Hence $\varphi(x)$ is determined, and the proof is complete.
As a by-product we obtain the relation

$$
\Gamma(x)=\lim _{n \rightarrow \infty} \frac{n ! n^{x}}{x(x+1) \cdots(x+n)}
$$

at least when $0<x<1$; from this one can deduce that (95) holds for all $x>0$, since $\Gamma(x+1)=x \Gamma(x)$.

**8.20 Theorem** If $x>0$ and $y>0$, then

$$
\int_{0}^{1} t^{x-1}(1-t)^{y-1} d t=\frac{\Gamma(x) \Gamma(y)}{\Gamma(x+y)}
$$

This integral is the so-called beta function $B(x, y)$.

**Proof** Note that $B(1, y)=1 / y$, that $\log B(x, y)$ is a convex function of $x$, for each fixed $y$, by Hölder's inequality, as in Theorem $8.18$, and that

$$
B(x+1, y)=\frac{x}{x+y} B(x, y) \text {. }
$$

To prove (97), perform an integration by parts on

$$
B(x+1, y)=\int_{0}^{1}\left(\frac{t}{1-t}\right)^{x}(1-t)^{x+y-1} d t .
$$

These three properties of $B(x, y)$ show, for each $y$, that Theorem $8.19$ applies to the function $f$ defined by

$$
f(x)=\frac{\Gamma(x+y)}{\Gamma(y)} B(x, y)
$$

Hence $f(x)=\Gamma(x)$

**8.21 Some consequences** The substitution $t=\sin ^{2} \theta$ turns (96) into
$$
2 \int_{0}^{\pi / 2}(\sin \theta)^{2 x-1}(\cos \theta)^{2 y-1} d \theta=\frac{\Gamma(x) \Gamma(y)}{\Gamma(x+y)} .
$$
The special case $x=y=\frac{1}{2}$ gives
$$
\Gamma\left(\frac{1}{2}\right)=\sqrt{\pi} \text {. }
$$
The substitution $t=s^{2}$ turns (93) into
$$
\Gamma(x)=2 \int_{0}^{\infty} s^{2 x-1} e^{-s^{2}} d s \quad(0<x<\infty) .
$$
The special case $x=\frac{1}{2}$ gives
$$
\int_{-\infty}^{\infty} e^{-s^{2}} d s=\sqrt{\pi}
$$
By (99), the identity
$$
\Gamma(x)=\frac{2^{x-1}}{\sqrt{\pi}} \Gamma\left(\frac{x}{2}\right) \Gamma\left(\frac{x+1}{2}\right)
$$
follows directly from Theorem 8.19.

**8.22 Stirling's formula** This provides a simple approximate expression for $\Gamma(x+1)$ when $x$ is large (hence for $n !$ when $n$ is large). The formula is

$$
\lim _{x \rightarrow \infty} \frac{\Gamma(x+1)}{(x / e)^{x} \sqrt{2 \pi x}}=1
$$

Here is a proof. Put $t=x(1+u)$ in (93). This gives

$$
\Gamma(x+1)=x^{x+1} e^{-x} \int_{-1}^{\infty}\left[(1+u) e^{-u}\right]^{x} d u
$$

Determine $h(u)$ so that $h(0)=1$ and

$$
(1+u) e^{-u}=\exp \left[-\frac{u^{2}}{2} h(u)\right]
$$

if $-1<u<\infty, u \neq 0$. Then

$$
h(u)=\frac{2}{u^{2}}[u-\log (1+u)]
$$

It follows that $h$ is continuous, and that $h(u)$ decreases monotonically from $\infty$ to 0 as $u$ increases from $-1$ to $\infty$.

The substitution $u=s \sqrt{2 / x}$ turns (104) into

$$
\Gamma(x+1)=x^{x} e^{-x} \sqrt{2 x} \int_{-\infty}^{\infty} \psi_{x}(s) d s
$$

where

$$
\psi_{x}(s)= \begin{cases}\exp \left[-s^{2} h(s \sqrt{2 / x})\right] & (-\sqrt{x / 2}<s<\infty) \\ 0 & (s \leq-\sqrt{x / 2})\end{cases}
$$

Note the following facts about $\psi_{x}(s)$ :

(a) For every $s, \psi_{x}(s) \rightarrow e^{-s^{2}}$ as $x \rightarrow \infty$.
(b) The convergence in $(a)$ is uniform on $[-A, A]$, for every $A<\infty$.
(c) When $s<0$, then $0<\psi_{x}(s)<e^{-s^{2}}$.
(d) When $s>0$ and $x>1$, then $0<\psi_{x}(s)<\psi_{1}(s)$.
(e) $\int_{0}^{\infty} \psi_{1}(s) d s<\infty$.

The convergence theorem stated in Exercise 12 of Chap. 7 can therefore be applied to the integral (107), and shows that this integral converges to $\sqrt{\pi}$ as $x \rightarrow \infty$, by (101). This proves (103).

A more detailed version of this proof may be found in R. C. Buck's "Advanced Calculus," pp. 216-218. For two other, entirely different, proofs, see W. Feller's article in Amer. Math. Monthly, vol. 74, 1967, pp. 1223-1225 (with a correction in vol. 75,1968, p. 518) and pp. 20-24 of Artin's book.

Exercise 20 gives a simpler proof of a less precise result.