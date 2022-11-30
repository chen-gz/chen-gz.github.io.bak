---
title: Trigonometric Series
date: 2022-11-07
---

### 4.23 Definitions

Let $T$ be the unit circle in the complex plane, i.e., the set of all complex numbers of absolute value 1 . If $F$ is any function on $T$ and if $f$ is defined on $R^1$ by

$$
\begin{equation}
f(t)=F\left(e^{i t}\right),
\end{equation}
$$

then $f$ is a periodic function of period $2 \pi$. This means that $f(t+2 \pi)=f(t)$ for all real $t$. Conversely, if $f$ is a function on $R^1$, with period $2 \pi$, then there is a function $F$ on $T$ such that (1) holds. Thus we may identify functions on $T$ with $2 \pi$-periodic functions on $R^1$; and, for simplicity of notation, we shall sometimes write $f(t)$ rather than $f\left(e^{i t}\right)$, even if we think of $f$ as being defined on $T$.

With these conventions in mind, we define $L^p(T)$, for $1 \leq p<\infty$, to be the class of all complex, Lebesgue measurable, $2 \pi$-periodic functions on $R^1$ for which the norm
$$
\begin{equation}
\|f\|_p=\left\{\frac{1}{2 \pi} \int_{-\pi}^\pi|f(t)|^p d t\right\}^{1 / p}
\end{equation}
$$
is finite.

In other words, we are looking at $L^p(\mu)$, where $\mu$ is Lebesgue measure on $[0,2 \pi]$ (or on $T$ ), divided by $2 \pi$. $L^{\infty}(T)$ will be the class of all $2 \pi$-periodic members of $L^{\infty}\left(R^1\right)$, with the essential supremum norm, and $C(T)$ consists of all continuous complex functions on $T$ (or, equivalently, of all continuous, complex, $2 \pi$-periodic functions on $R^1$ ), with norm
$$
\begin{equation}
\|f\|_{\infty}=\sup _t|f(t)|,
\end{equation}
$$

The factor $1 /(2 \pi)$ in (2) simplifies the formalism we are about to develop. For instance, the $L^p$-norm of the constant function 1 is 1 .

A *trigonometric polynomial* is a finite sum of the form

$$
\begin{equation}
f(t)=a_0+\sum_{n=1}^N\left(a_n \cos n t+b_n \sin n t\right) \quad\left(t \in R^1\right)
\end{equation}
$$

where $a_0, a_1, \ldots, a_N$ and $b_1, \ldots, b_N$ are complex numbers. On account of the Euler identities, (4) can also be written in the form

$$
\begin{equation}
f(t)=\sum_{n=-N}^N c_n e^{i n t}
\end{equation}
$$

which is more convenient for most purposes. It is clear that every trigonometric polynomial has period $2 \pi$.

We shall denote the set of all integers (positive, zero, and negative) by $Z$, and put

$$
u_n(t)=e^{i n t} \quad(n \in Z) .
$$

If we define the inner product in $L^2(T)$ by

$$
(f, g)=\frac{1}{2 \pi} \int_{-\pi}^\pi f(t) \overline{g(t)} d t
$$

[note that this is in agreement with (2)], an easy computation shows that

$$
\left(u_n, u_m\right)=\frac{1}{2 \pi} \int_{-\pi}^\pi e^{i(n-m) t} d t= \begin{cases}1 & \text { if } n=m, \\ 0 & \text { if } n \neq m .\end{cases}
$$

Thus $\left\{u_n: n \in Z\right\}$ is an orthonormal set in $L^2(T)$, usually called the trigonometric system. We shall now prove that this system is maximal, and shall then derive concrete versions of the abstract theorems previously obtained in the Hilbert space context.

### 4.24 The Completeness of the Trigonometric System

Theorem $4.18$ shows that the maximality (or completeness) of the trigonometric system will be proved as soon as we can show that the set of all trigonometric polynomials is dense in $L^2(T)$. Since $C(T)$ is dense in $L^2(T)$, by Theorem $3.14$ (note that $T$ is compact), it suffices to show that to every $f \in C(T)$ and to every $\epsilon>0$ there is a trigonometric polynomial $P$ such that $\|f-P\|_2<\epsilon$. Since $\|g\|_2 \leq\|g\|_{\infty}$ for every $g \in C(T)$, the estimate $\|f-P\|_2<\epsilon$ will follow from $\|f-P\|_{\infty}<\epsilon$, and it is this estimate which we shall prove.

Suppose we had trigonometric polynomials $Q_1, Q_2, Q_3, \ldots$, with the following properties:

(a) $Q_k(t) \geq 0$ for $t \in R^1$.
(b)

$$
\frac{1}{2 \pi} \int_{-\pi}^\pi Q_k(t) d t=1 .
$$

(c) If $\eta_k(\delta)=\sup \left\{Q_k(t): \delta \leq|t| \leq \pi\right\}$, then

$$
\lim _{k \rightarrow \infty} \eta_k(\delta)=0
$$

for every $\delta>0$.

Another way of stating $(c)$ is to say: for every $\delta>0, Q_k(t) \rightarrow 0$ uniformly on $[-\pi,-\delta] \cup[\delta, \pi]$

To each $f \in C(T)$ we associate the functions $P_k$ defined by

$$
P_k(t)=\frac{1}{2 \pi} \int_{-\pi}^\pi f(t-s) Q_k(s) d s \quad(k=1,2,3, \ldots) .
$$

If we replace $s$ by $-s$ (using Theorem $2.20(e)$ ) and then by $s-t$, the periodicity of $f$ and $Q_k$ shows that the value of the integral is not affected. Hence

$$
P_k(t)=\frac{1}{2 \pi} \int_{-\pi}^\pi f(s) Q_k(t-s) d s \quad(k=1,2,3, \ldots) .
$$

Since each $Q_k$ is a trigonometric polynomial, $Q_k$ is of the form

$$
Q_k(t)=\sum_{n=-N_k}^{N_k} a_{n, k} e^{i n t},
$$

and if we replace $t$ by $t-s$ in (3) and substitute the result in (2), we see that each $P_k$ is a trigonometric polynomial.

Let $\epsilon>0$ be given. Since $f$ is uniformly continuous on $T$, there exists a $\delta>0$ such that $|f(t)-f(s)|<\epsilon$ whenever $|t-s|<\delta$. By $(b)$, we have

$$
P_k(t)-f(t)=\frac{1}{2 \pi} \int_{-\pi}^\pi\{f(t-s)-f(t)\} Q_k(s) d s,
$$

and $(a)$ implies, for all $t$, that

$$
\left|P_k(t)-f(t)\right| \leq \frac{1}{2 \pi} \int_{-\pi}^\pi|f(t-s)-f(t)| Q_k(s) d s=A_1+A_2,
$$

where $A_1$ is the integral over $[-\delta, \delta]$ and $A_2$ is the integral over $[-\pi,-\delta] \cup$ $[\delta, \pi]$. In $A_1$, the integrand is less than $\epsilon Q_k(s)$, so $A_1<\epsilon$, by $(b)$. In $A_2$, we have $Q_k(s) \leq \eta_k(\delta)$, hence

$$
A_2 \leq 2\|f\|_{\infty} \cdot \eta_k(\delta)<\epsilon
$$

for sufficiently large $k$, by $(c)$. Since these estimates are independent of $t$, we have proved that

$$
\lim _{k \rightarrow \infty}\left\|f-P_k\right\|_{\infty}=0 .
$$

It remains to construct the $Q_k$. This can be done in many ways. Here is a simple one. Put

$$
Q_k(t)=c_k\left\{\frac{1+\cos t}{2}\right\}^k,
$$

where $c_k$ is chosen so that $(b)$ holds. Since $(a)$ is clear, we only need to show $(c)$. Since $Q_k$ is even, $(b)$ shows that

$$
1=\frac{c_k}{\pi} \int_0^\pi\left\{\frac{1+\cos t}{2}\right\}^k d t>\frac{c_k}{\pi} \int_0^\pi\left\{\frac{1+\cos t}{2}\right\}^k \sin t d t=\frac{2 c_k}{\pi(k+1)} .
$$

Since $Q_k$ is decreasing on $[0, \pi]$, it follows that

$$
Q_k(t) \leq Q_k(\delta) \leq \frac{\pi(k+1)}{2}\left(\frac{1+\cos \delta}{2}\right)^k \quad(0<\delta \leq|t| \leq \pi)
$$

This implies $(c)$, since $1+\cos \delta<2$ if $0<\delta \leq \pi$.

We have proved the following important result:

### 4.25 Theorem

If $f \in C(T)$ and $\epsilon>0$, there is a trigonometric polynomial $P$ such that

$$
|f(t)-P(t)|<\epsilon
$$

for every real $t$.

A more precise result was proved by Fejér (1904): The arithmetic means of the partial sums of the Fourier series of any $f \in C(T)$ converge uniformly to $f$. For a proof (quite similar to the above) see Theorem $3.1$ of $[45]$, or p. 89 of [36], vol. I.

### 4.26 Fourier Series

For any $f \in L^1(T)$, we define the Fourier coefficients of $f$ by the formula

$$
\hat{f}(n)=\frac{1}{2 \pi} \int_{-\pi}^\pi f(t) e^{-i n t} d t \quad(n \in Z)
$$

where, we recall, $Z$ is the set of all integers. We thus associate with each $f \in L^1(T)$ a function $\hat{f}$ on $Z$. The Fourier series of $f$ is

$$
\sum_{-\infty}^{\infty} \hat{f}(n) e^{i n t}
$$

and its partial sums are

$$
s_N(t)=\sum_{-N}^N \hat{f}(n) e^{i n t} \quad(N=0,1,2, \ldots)
$$

Since $L^2(T) \subset L^1(T)$, (1) can be applied to every $f \in L^2(T)$. Comparing the definitions made in Secs. $4.23$ and $4.13$, we can now restate Theorems $4.17$ and $4.18$ in concrete terms:

The Riesz-Fischer theorem asserts that if $\left\{c_n\right\}$ is a sequence of complex numbers such that

$$
\sum_{n=-\infty}^{\infty}\left|c_n\right|^2<\infty
$$

then there exists an $f \in L^2(T)$ such that

$$
c_n=\frac{1}{2 \pi} \int_{-\pi}^\pi f(t) e^{-i n t} d t \quad(n \in Z)
$$

The Parseval theorem asserts that

$$
\sum_{n=-\infty}^{\infty} \hat{f}(n) \overline{\hat{g}(n)}=\frac{1}{2 \pi} \int_{-\pi}^\pi f(t) \overline{g(t)} d t
$$

whenever $f \in L^2(T)$ and $g \in L^2(T)$; the series on the left of (6) converges absolutely; and if $s_N$ is as in $(3)$, then

$$
\lim _{N \rightarrow \infty}\left\|f-s_N\right\|_2=0,
$$

since a special case of $(6)$ yields

$$
\left\|f-s_N\right\|_2^2=\sum_{|n|>N}|\hat{f}(n)|^2 .
$$

Note that (7) says that every $f \in L^2(T)$ is the $L^2$-limit of the partial sums of its Fourier series; i.e., the Fourier series of $f$ converges to $f$, in the $L^2$-sense. Pointwise convergence presents a more delicate problem, as we shall see in Chap. 5.

The Riesz-Fischer theorem and the Parseval theorem may be summarized by saying that the mapping $f \leftrightarrow \hat{f}$ is a Hilbert space isomorphism of $L^2(T)$ onto $\ell^2(Z)$.

The theory of Fourier series in other function spaces, for instance in $L^1(T)$, is much more difficult than in $L^2(T)$, and we shall touch only a few aspects of it.

Observe that the crucial ingredient in the proof of the Riesz-Fischer theorem is the fact that $L^2$ is complete. This is so well recognized that the name "RieszFischer theorem " is sometimes given to the theorem which asserts the completeness of $L^2$, or even of any $L^p$.
