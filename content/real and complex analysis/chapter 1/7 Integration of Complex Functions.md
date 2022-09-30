---
title: 7 Integration of Complex Functions
date: 2022-09-24
---

As before, $\mu$ will in this section be a positive measure on an arbitrary measurable space $X$.

### 1.30 Definition

We define $L^1(\mu)$ to be the collection of all complex measurable functions $f$ on $X$ for which


$$
\begin{equation}
\int_X|f| d \mu<\infty .
\end{equation}
$$


Note that the measurability of $f$ implies that of $|f|$, as we saw in Proposition $1.9(b)$; hence the above integral is defined.

The members of $L^1(\mu)$ are called **Lebesgue integrable functions** (with respect to $\mu$ ) or **summable functions**. The significance of the exponent 1 will become clear in Chap. 3 .

### 1.31 Definition

If $f=u+i v$, where $u$ and $v$ are real measurable functions on $X$, and if $f \in L^1(\mu)$, we define

$$
\begin{equation}
\int_E f d \mu=\int_E u^{+} d \mu-\int_E u^{-} d \mu+i \int_E v^{+} d \mu-i \int_E v^{-} d \mu
\label{eq: 1.31_1}
\end{equation}
$$

for every measurable set $E$.

Here $u^{+}$and $u^{-}$are the positive and negative parts of $u$, as defined in Sec. $1.15 ; v^{+}$and $v^{-}$are similarly obtained from $v$. These four functions are measurable, real, and nonnegative; hence the four integrals on the right of $(\ref{eq: 1.31_1})$ exist, by Definition 1.23. Furthermore, we have $u^{+} \leq|u|<|f|$, etc., so that each of these four integrals is finite. Thus $(\ref{eq: 1.31_1})$  defines the integral on the left as a complex number.

Occasionally it is desirable to define the integral of a measurable function $f$ with range in $[-\infty, \infty]$ to be

$$
\begin{equation}
\int_E f d \mu=\int_E f^{+} d \mu-\int_E f^{-} d \mu,
\label{eq: 1.31_2}
\end{equation}
$$

provided that at least one of the integrals on the right of $(\ref{eq: 1.31_2})$ is finite. The left side of $(\ref{eq: 1.31_2})$  is then a number in $[-\infty, \infty]$.

### 1.32 Theorem

Suppose $f$ and $g \in L^1(\mu)$ and $\alpha$ and $\beta$ are complex numbers. Then $\alpha f+\beta g \in L^1(\mu)$, and

$$
\begin{equation}
\int_X(\alpha f+\beta g) d \mu=\alpha \int_X f d \mu+\beta \int_X g d \mu .
\label{1_32_1}
\end{equation}
$$

**Proof** The measurability of $\alpha f+\beta g$ follows from Proposition 1.9(c). By Sec. $1.24$ and Theorem 1.27,

$$
\begin{equation}
\begin{aligned}
\int_X|\alpha f+\beta g| d \mu & \leq \int_X(|\alpha||f|+|\beta||g|) d \mu \\
&=|\alpha| \int_X|f| d \mu+|\beta| \int_X|g| d \mu<\infty .
\end{aligned}
\label{1_32_2}
\end{equation}
$$

Thus $\alpha f+\beta g \in L^1(\mu)$.

To prove $(\ref{1_32_1})$, it is clearly sufficient to prove

$$
\begin{equation}
\int_X(f+g) d \mu=\int_X f d \mu+\int_X g d \mu
\label{1_32_3}
\end{equation}
$$

and

$$
\begin{equation}
\int_X(\alpha f) d \mu=\alpha \int_X f d \mu,
\label{1_32_4}
\end{equation}
$$

and the general case of $(\ref{1_32_3})$ will follow if we prove $(\ref{1_32_3})$ for real $f$ and $g$ in $L^1(\mu)$.
Assuming this, and setting $h=f+g$, we have

$$
\begin{equation}
h^{+}-h^{-}=f^{+}-f^{-}+g^{+}-g^{-}
\label{1_32_5}
\end{equation}
$$

or

$$
\begin{equation}
h^{+}+f^{-}+g^{-}=f^{+}+g^{+}+h^{-} .
\label{1_32_6}
\end{equation}
$$

By Theorem 1.27,

$$
\begin{equation}
\int h^{+}+\int f^{-}+\int g^{-}=\int f^{+}+\int g^{+}+\int h^{-},
\label{1_32_7}
\end{equation}
$$

and since each of these integrals is finite, we may transpose and obtain $(\ref{1_32_3})$.

That  $(\ref{1_32_4})$ holds if $\alpha \geq 0$ follows from Proposition $1.24(c)$. It is easy to verify that  $(\ref{1_32_3})$ holds if $\alpha=-1$, using relations like $(-u)^{+}=u^{-}$. The case $\alpha=i$ is also easy: If $f=u+i v$, then

$$
\begin{equation}
\begin{aligned}
\int(i f) &=\int(i u-v)=\int(-v)+i \int u=-\int v+i \int u=i\left(\int u+i \int v\right) \\
&=i \int f .
\end{aligned}
\label{1_32_8}
\end{equation}
$$

Combining these cases with $(\ref{1_32_3})$, we obtain $(\ref{1_32_4})$ for any complex $\alpha$. $\blacksquare$

### 1.33 Theorem 

If $f \in L^1(\mu)$, then

$$
\begin{equation}
\left|\int_X f d \mu\right| \leq \int_X|f| d \mu .
\end{equation}
$$

**Proof** Put $z=\int_X f d \mu$. Since $z$ is a complex number, there is a complex number $\alpha$, with $|\alpha|=1$, such that $\alpha z=|z|$. Let $u$ be the real part of $\alpha f$. Then $u \leq|\alpha f|=|f|$. Hence

$$
\begin{equation}
\left|\int_X f d \mu\right|=\alpha \int_X f d \mu=\int_X \alpha f d \mu=\int_X u d \mu \leq \int_X|f| d \mu .
\end{equation}
$$

The third of the above equalities holds since the preceding ones show that $\int \alpha f d \mu$ is real. $\blacksquare$

We conclude this section with another important convergence theorem.

### 1.34 Lebesgue's Dominated Convergence Theorem

Suppose $\left\{f_n\right\}$ is a sequence of complex measurable functions on $X$ such that

$$
\begin{equation}
f(x)=\lim _{n \rightarrow \infty} f_n(x)
\end{equation}
$$

exists for every $x \in X$. If there is a function $g \in L^1(\mu)$ such that

$$
\begin{equation}
\left|f_n(x)\right| \leq g(x) \quad(n=1,2,3, \ldots ; x \in X),
\end{equation}
$$

then $f \in L^1(\mu)$

$$
\begin{equation}
\lim _{n \rightarrow \infty} \int_X\left|f_n-f\right| d \mu=0
\label{1_34_3}
\end{equation}
$$

and

$$
\begin{equation}
\lim _{n \rightarrow \infty} \int_X f_n d \mu=\int_X f d \mu .
\label{1_34_4}
\end{equation}
$$

**Proof** Since $|f| \leq g$ and $f$ is measurable, $f \in L^1(\mu)$. Since $\left|f_n-f\right| \leq 2 g$ Fatou's lemma applies to the functions $2 g-\left|f_n-f\right|$ and yields

$$
\begin{equation}
\begin{aligned}
\int_X 2 g d \mu & \leq \liminf _{n \rightarrow \infty} \int_X\left(2 g-\left|f_n-f\right|\right) d \mu \\
&=\int_X 2 g d \mu+\liminf _{n \rightarrow \infty}\left(-\int_X\left|f_n-f\right| d \mu\right) \\
&=\int_X 2 g d \mu-\operatorname{limiup}_{n \rightarrow \infty} \int_X\left|f_n-f\right| d \mu
\end{aligned}
\label{1_34_5}
\end{equation}
$$

Since $\int 2 g d \mu$ is finite, we may subtract it and obtain

$$
\begin{equation}
\lim _{n \rightarrow \infty} \sup _X\left|f_n-f\right| d \mu \leq 0
\label{1_34_6}
\end{equation}
$$

If a sequence of nonnegative real numbers fails to converge to 0 , then its upper limit is positive. Thus $(\ref{1_34_6})$ implies $(\ref{1_34_3})$. By Theorem 1.33, applied to $f_n-f,(\ref{1_34_3})$ implies $(\ref{1_34_4})$. $\blacksquare$
