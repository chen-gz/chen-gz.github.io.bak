---
title: 9 DIFFERENTIATION OF INTEGRALS.md
date: 2022-08-15
---

Suppose $\varphi$ is a function of two variables which can be integrated with respect to one and which can be differentiated with respect to the other. Under what conditions will the result be the same if these two limit processes are carried out in the opposite order? To state the question more precisely: Under what conditions on $\varphi$ can one prove that the equation

$$
\frac{d}{d t} \int_{a}^{b} \varphi(x, t) d x=\int_{a}^{b} \frac{\partial \varphi}{\partial t}(x, t) d x
$$

is true? (A counter example is furnished by Exercise 28.)

It will be convenient to use the notation

$$
\varphi^{t}(x)=\varphi(x, t) .
$$

Thus $\varphi^{t}$ is, for each $t$, a function of one variable.

\subsection{Theorem Suppose}

(a) $\varphi(x, t)$ is defined for $a \leq x \leq b, c \leq t \leq d$;

(b) $\alpha$ is an increasing function on $[a, b]$; (c) $\varphi^{t} \in \mathscr{R}(\alpha)$ for every $t \in[c, d]$;

(d) $c<s<d$, and to every $\varepsilon>0$ corresponds a $\delta>0$ such that

$$
\left|\left(D_{2} \varphi\right)(x, t)-\left(D_{2} \varphi\right)(x, s)\right|<\varepsilon
$$

for all $x \in[a, b]$ and for all $t \in(s-\delta, s+\delta)$.

\section{Define}

$$
f(t)=\int_{a}^{b} \varphi(x, t) d \alpha(x) \quad(c \leq t \leq d) .
$$

Then $\left(D_{2} \varphi\right)^{s} \in \mathscr{R}(\alpha), f^{\prime}(s)$ exists, and

$$
f^{\prime}(s)=\int_{a}^{b}\left(D_{2} \varphi\right)(x, s) d \alpha(x) .
$$

Note that (c) simply asserts the existence of the integrals (100) for all $t \in[c, d]$. Note also that $(d)$ certainly holds whenever $D_{2} \varphi$ is continuous on the rectangle on which $\varphi$ is defined.

Proof Consider the difference quotients

$$
\psi(x, t)=\frac{\varphi(x, t)-\varphi(x, s)}{t-s}
$$

for $0<|t-s|<\delta$. By Theorem $5.10$ there corresponds to each $(x, t)$ a number $u$ between $s$ and $t$ such that

$$
\psi(x, t)=\left(D_{2} \varphi\right)(x, u)
$$

Hence $(d)$ implies that

$$
\left|\psi(x, t)-\left(D_{2} \varphi\right)(x, s)\right|<\varepsilon \quad(a \leq x \leq b, \quad 0<|t-s|<\delta) .
$$

Note that

$$
\frac{f(t)-f(s)}{t-s}=\int_{a}^{b} \psi(x, t) d \alpha(x) .
$$

By (102), $\psi^{t} \rightarrow\left(D_{2} \varphi\right)^{s}$, uniformly on $[a, b]$, as $t \rightarrow s$. Since each $\psi^{t} \in \mathscr{R}(\alpha)$, the desired conclusion follows from (103) and Theorem 7.16.


**9.43 Example** One can of course prove analogues of Theorem $9.42$ with $(-\infty, \infty)$ in place of $[a, b]$. Instead of doing this, let us simply look at an example. Define

$$
f(t)=\int_{-\infty}^{\infty} e^{-x^{2}} \cos (x t) d x
$$

and

$$
g(t)=-\int_{-\infty}^{\infty} x e^{-x^{2}} \sin (x t) d x
$$

for $-\infty<t<\infty$. Both integrals exist (they converge absolutely) since the absolute values of the integrands are at most $\exp \left(-x^{2}\right)$ and $|x| \exp \left(-x^{2}\right)$, respectively.

Note that $g$ is obtained from $f$ by differentiating the integrand with respect to $t$. We claim that $f$ is differentiable and that

$$
f^{\prime}(t)=g(t) \quad(-\infty<t<\infty) .
$$

To prove this, let us first examine the difference quotients of the cosine: if $\beta>0$, then

$$
\frac{\cos (\alpha+\beta)-\cos \alpha}{\beta}+\sin \alpha=\frac{1}{\beta} \int_{\alpha}^{\alpha+\beta}(\sin \alpha-\sin t) d t .
$$

Since $|\sin \alpha-\sin t| \leq|t-\alpha|$, the right side of (107) is at most $\beta / 2$ in absolute value; the case $\beta<0$ is handled similarly. Thus

$$
\left|\frac{\cos (\alpha+\beta)-\cos \alpha}{\beta}+\sin \alpha\right| \leq|\beta|
$$

for all $\beta$ (if the left side is interpreted to be 0 when $\beta=0$ ).

Now fix $t$, and fix $h \neq 0$. Apply (108) with $\alpha=x t, \beta=x h$; it follows from (104) and (105) that

$$
\left|\frac{f(t+h)-f(t)}{h}-g(t)\right| \leq|h| \int_{-\infty}^{\infty} x^{2} e^{-x^{2}} d x .
$$

When $h \rightarrow 0$, we thus obtain (106).

Let us go a step further: An integration by parts, applied to (104), shows that

$$
f(t)=2 \int_{-\infty}^{\infty} x e^{-x^{2}} \frac{\sin (x t)}{t} d x .
$$

Thus $t f(t)=-2 g(t)$, and (106) implies now that $f$ satisfies the differential equation

$$
2 f^{\prime}(t)+t f(t)=0 .
$$

If we solve this differential equation and use the fact that $f(0)=\sqrt{\pi}$ (see Sec. $8.21$ ), we find that

$$
f(t)=\sqrt{\pi} \exp \left(-\frac{t^{2}}{4}\right) .
$$

The integral (104) is thus explicitly determined. 