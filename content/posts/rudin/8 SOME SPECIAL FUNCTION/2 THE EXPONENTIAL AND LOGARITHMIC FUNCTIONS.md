---
title: 2 THE EXPONENTIAL AND LOGARITHMIC FUNCTIONS
date: 2022-08-07
---

We define

$$
E(z)=\sum_{n=0}^{\infty} \frac{z^{n}}{n !}
$$

The ratio test shows that this series converges for every complex z. Applying Theorem $3.50$ on multiplication of absolutely convergent series, we obtain

$$
\begin{aligned}
E(z) E(w) &=\sum_{n=0}^{\infty} \frac{z^{n}}{n !} \sum_{m=0}^{\infty} \frac{w^{m}}{m !}=\sum_{n=0}^{\infty} \sum_{k=0}^{n} \frac{z^{k} w^{n-k}}{k !(n-k) !} \\
&=\sum_{n=0}^{\infty} \frac{1}{n !} \sum_{k=0}^{n}\left(\begin{array}{l}
n \\
k
\end{array}\right) z^{k} w^{n-k}=\sum_{n=0}^{\infty} \frac{(z+w)^{n}}{n !}
\end{aligned}
$$

which gives us the important addition formula

$$
E(z+w)=E(z) E(w) \quad(z, w \text { complex })
$$

One consequence is that

$$
E(z) E(-z)=E(z-z)=E(0)=1 \quad \text { ( } z \text { complex). }
$$


This shows that $E(z) \neq 0$ for all $z$. By (25), $E(x)>0$ if $x>0$; hence (27) shows that $E(x)>0$ for all real $x$. By $(25), E(x) \rightarrow+\infty$ as $x \rightarrow+\infty$; hence (27) shows that $E(x) \rightarrow 0$ as $x \rightarrow-\infty$ along the real axis. By $(25), 0<x<y$ implies that $E(x)<E(y)$; by (27), it follows that $E(-y)<E(-x)$; hence $E$ is strictly increasing on the whole real axis.
The addition formula also shows that

$$
\lim _{h=0} \frac{E(z+h)-E(z)}{h}=E(z) \lim _{h=0} \frac{E(h)-1}{h}=E(z) \text {; }
$$

the last equality follows directly from (25).
Iteration of (26) gives

$$
E\left(z_{1}+\cdots+z_{n}\right)=E\left(z_{1}\right) \cdots E\left(z_{n}\right) .
$$

Let us take $z_{1}=\cdots=z_{n}=1$. Since $E(1)=e$, where $e$ is the number defined in Definition 3.30, we obtain

$$
E(n)=e^{n} \quad(n=1,2,3, \ldots) .
$$

If $p=n / m$, where $n, m$ are positive integers, then

$$
[E(p)]^{m}=E(m p)=E(n)=e^{n}
$$

so that

$$
E(p)=e^{p} \quad(p>0, p \text { rational). }
$$

It follows from (27) that $E(-p)=e^{-p}$ if $p$ is positive and rational. Thus (32) holds for all rational $p$.
In Exercise 6, Chap. 1, we suggested the definition

$$
x^{y}=\sup x^{p},
$$

where the sup is taken over all rational $p$ such that $p<y$, for any real $y$, and $x>1$. If we thus define, for any real $x$,

$$
e^{x}=\sup e^{p} \quad(p<x, p \text { rational }),
$$

the continuity and monotonicity properties of $E$, together with (32), show that

$$
E(x)=e^{x}
$$

for all real $x$. Equation (35) explains why $E$ is called the exponential function.
The notation $\exp (x)$ is often used in place of $e^{x}$, expecially when $x$ is a complicated expression.

Actually one may very well use (35) instead of (34) as the definition of $e^{x}$; (35) is a much more convenient starting point for the investigation of the properties of $e^{x}$. We shall see presently that (33) may also be replaced by a more convenient definition [see (43)].

**8.6 Theorem** Let $e^{x}$ be defined on $R^{1}$ by (35) and (25). Then
(a) $e^{x}$ is continuous and differentiable for all $x$;
(b) $\left(e^{x}\right)^{\prime}=e^{x}$
(c) $e^{x}$ is a strictly increasing function of $x$, and $e^{x}>0$
(d) $e^{x+y}=e^{x} e^{y}$
(e) $e^{x} \rightarrow+\infty$ as $x \rightarrow+\infty, e^{x} \rightarrow 0$ as $x \rightarrow-\infty$;
(f) $\lim _{x \rightarrow+\infty} x^{n} e^{-x}=0$, for every $n$.

**Proof** We have already proved $(a)$ to $(e) ;(25)$ shows that

$$
e^{x}>\frac{x^{n+1}}{(n+1) !}
$$

for $x>0$, so that

$$
x^{n} e^{-x}<\frac{(n+1) !}{x}
$$

and $(f)$ follows. Part $(f)$ shows that $e^{x}$ tends to $+\infty$ "faster" than any power of $x$, as $x \rightarrow+\infty$.

Since $E$ is strictly increasing and differentiable on $R^{1}$, it has an inverse function $L$ which is also strictly increasing and differentiable and whose domain is $E\left(R^{1}\right)$, that is, the set of all positive numbers. $L$ is defined by

$$
E(L(y))=y \quad(y>0),
$$

or, equivalently, by

$$
L(E(x))=x \quad(x \text { real }) .
$$

Differentiating (37), we get (compare Theorem 5.5)

$$
L^{\prime}(E(x)) \cdot E(x)=1 .
$$

Writing $y=E(x)$, this gives us

$$
L^{\prime}(y)=\frac{1}{y} \quad(y>0)
$$

Taking $x=0$ in (37), we see that $L(1)=0$. Hence (38) implies

$$
L(y)=\int_{1}^{y} \frac{d x}{x} .
$$

Quite frequently, (39) is taken as the starting point of the theory of the logarithm and the exponential function. Writing $u=E(x), v=E(y)$, (26) gives

$$
L(u v)=L(E(x) \cdot E(y))=L(E(x+y))=x+y,
$$

so that

$$
L(u v)=L(u)+L(v) \quad(u>0, v>0) .
$$

This shows that $L$ has the familiar property which makes logarithms useful tools for computation. The customary notation for $L(x)$ is of course $\log x$.
As to the behavior of $\log x$ as $x \rightarrow+\infty$ and as $x \rightarrow 0$, Theorem $8.6(e)$ shows that

$$
\begin{array}{ll}
\log x \rightarrow+\infty & \text { as } x \rightarrow+\infty \\
\log x \rightarrow-\infty & \text { as } x \rightarrow 0
\end{array}
$$

It is easily seen that

$$
x^{n}=E(n L(x))
$$

if $x>0$ and $n$ is an integer. Similarly, if $m$ is a positive integer, we have

$$
x^{1 / m}=E\left(\frac{1}{m} L(x)\right),
$$

since each term of (42), when raised to the $m$ th power, yields the corresponding term of (36). Combining (41) and (42), we obtain

$$
x^{\alpha}=E(\alpha L(x))=e^{\alpha \log x}
$$

for any rational $\alpha$.

We now define $x^{\alpha}$, for any real $\alpha$ and any $x>0$, by (43). The continuity and monotonicity of $E$ and $L$ show that this definition leads to the same result as the previously suggested one. The facts stated in Exercise 6 of Chap. 1, are trivial consequences of (43).
If we differentiate (43), we obtain, by Theorem $5.5$,

$$
\left(x^{\alpha}\right)^{\prime}=E(\alpha L(x)) \cdot \frac{\alpha}{x}=\alpha x^{\alpha-1} .
$$

Note that we have previously used (44) only for integral values of $\alpha$, in which case (44) follows easily from Theorem 5.3(b). To prove (44) directly from the definition of the derivative, if $x^{\alpha}$ is defined by (33) and $\alpha$ is irrational, is quite troublesome.

The well-known integration formula for $x^{\alpha}$ follows from (44) if $\alpha \neq-1$, and from (38) if $\alpha=-1$. We wish to demonstrate one more property of $\log x$, namely,

$$
\lim _{x \rightarrow+\infty} x^{-\alpha} \log x=0
$$

for every $\alpha>0$. That is, $\log x \rightarrow+\infty$ "slower" than any positive power of $x$, as $x \rightarrow+\infty$

For if $0<\varepsilon<\alpha$, and $x>1$, then

$$
\begin{aligned}
x^{-\alpha} \log x &=x^{-\alpha} \int_{1}^{x} t^{-1} d t<x^{-\alpha} \int_{1}^{x} t^{\varepsilon-1} d t \\
&=x^{-\alpha} \cdot \frac{x^{\varepsilon}-1}{\varepsilon}<\frac{x^{\varepsilon-\alpha}}{\varepsilon}
\end{aligned}
$$

and (45) follows. We could also have used Theorem $8.6(f)$ to derive (45).

