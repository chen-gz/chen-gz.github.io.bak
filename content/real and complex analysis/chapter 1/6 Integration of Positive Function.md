---
title: 6 Integration of Positive Functions
date: 2022-09-23
---

In this section, $\mathfrak{M}$ will be a $\sigma$-algebra in a set $X$ and $\mu$ will be a positive measure on $\mathfrak{M}$.

### 1.23 Definition 

If $s: X \rightarrow[0, \infty)$ is a measurable simple function, of the form

$$
\begin{equation}
s=\sum_{i=1}^n \alpha_i \chi_{A_i},
\end{equation}
$$

where $\alpha_1, \ldots, \alpha_n$ are the distinct values of $s$ (compare Definition 1.16), and if $E \in \mathfrak{M}$, we define

$$
\begin{equation}
\int_E s d \mu=\sum_{i=1}^n \alpha_i \mu\left(A_i \cap E\right) .
\end{equation}
$$

The convention $0 \cdot \infty=0$ is used here; it may happen that $\alpha_i=0$ for some $i$ and that $\mu\left(A_i \cap E\right)=\infty$.


If $f: X \rightarrow[0, \infty]$ is measurable, and $E \in \mathfrak{M}$, we define
$$
\begin{equation}
\int_E f d \mu=\sup \int_E s d \mu,
\end{equation}
$$
the supremum being taken over all simple measurable functions $s$ such that $0 \leq s \leq f$.

The left member of (3) is called the Lebesgue integral of $f$ over $E$, with respect to the measure $\mu$. It is a number in $[0, \infty]$.

Observe that we apparently have two definitions for $\int_E f d \mu$ if $f$ is simple, namely, (2) and (3). However, these assign the same value to the integral, since $f$ is, in this case, the largest of the functions $s$ which occur on the right of (3).

### 1.24

The following propositions are immediate consequences of the definitions. The functions and sets occurring in them are assumed to be measurable:

(a) If $0 \leq f \leq g$, then $\int_E f d \mu \leq \int_E g d \mu$.
(b) If $A \subset B$ and $f \geq 0$, then $\int_A f d \mu \leq \int_B f d \mu$.
(c) Iff $\geq 0$ and $c$ is a constant, $0 \leq c<\infty$, then
$$
\int_E c f d \mu=c \int_E f d \mu .
$$
(d) If $f(x)=0$ for all $x \in E$, then $\int_E f d \mu=0$, even if $\mu(E)=\infty$.
(e) If $\mu(E)=0$, then $\int_E f d \mu=0$, even if $f(x)=\infty$ for every $x \in E$.
(f) If $f \geq 0$, then $\int_E f d \mu=\int_X \chi_E f d \mu$.

This last result shows that we could have restricted our definition of integration to integrals over all of $X$, without losing any generality. If we wanted to integrate over subsets, we could then use $(f)$ as the definition. It is purely a matter of taste which definition is preferred.

One may also remark here that every measurable subset $E$ of a measure space $X$ is again a measure space, in a perfectly natural way: The new measurable sets are simply those measurable subsets of $X$ which lie in $E$, and the measure is unchanged, except that its domain is restricted. This shows again that as soon as we have integration defined over every measure space, we automatically have it defined over every measurable subset of every measure space.

### 1.25 Proposition 

Let $s$ and $t$ be nonnegative measurable simple functions on $X$. For $E \in \mathfrak{M}$, define

$$
\begin{equation}
\varphi(E)=\int_E s d \mu .
\end{equation}
$$

Then $\varphi$ is a measure on $\mathfrak{M}$. Also

$$
\int_X(s+t) d \mu=\int_X s d \mu+\int_X t d \mu .
$$
(This proposition contains provisional forms of Theorems $1.27$ and 1.29.)

**Proof** If $s$ is as in Definition $1.23$, and if $E_1, E_2, \ldots$ are disjoint members of $\mathfrak{M}$ whose union is $E$, the countable additivity of $\mu$ shows that

$$
\begin{equation}
\begin{aligned}
\varphi(E) &=\sum_{i=1}^n \alpha_i \mu\left(A_i \cap E\right)=\sum_{i=1}^n \alpha_i \sum_{r=1}^{\infty} \mu\left(A_i \cap E_r\right) \\
&=\sum_{r=1}^{\infty} \sum_{i=1}^n \alpha_i \mu\left(A_i \cap E_r\right)=\sum_{r=1}^{\infty} \varphi\left(E_r\right) .
\end{aligned}
\end{equation}
$$

Also, $\varphi(\varnothing)=0$, so that $\varphi$ is not identically $\infty$.

Next, let $s$ be as before, let $\beta_1, \ldots, \beta_m$ be the distinct values of $t$, and let $B_j=\left\{x: t(x)=\beta_j\right\}$. If $E_{i j}=A_i \cap B_j$, then
and

$$
\begin{equation}
\int_{E_{i j}}(s+t) d \mu=\left(\alpha_i+\beta_j\right) \mu\left(E_{i j}\right) \\
\end{equation}
$$

and 

$$
\begin{equation}
\int_{E_{i j}} s d \mu+\int_{E_{i j}} t d \mu=\alpha_i \mu\left(E_{i j}\right)+\beta_j \mu\left(E_{i j}\right) .
\end{equation}
$$

Thus (2) holds with $E_{i j}$ in place of $X$. Since $X$ is the disjoint union of the sets $E_{i j}(1 \leq i \leq n, 1 \leq j \leq m)$, the first half of our proposition implies that (2) holds. $\blacksquare$

We now come to the interesting part of the theory. One of its most remarkable features is the ease with which it handles limit operations.

### 1.26 Lebesgue's Monotone Convergence Theorem

Let $\left\{f_n\right\}$ be a sequence of measurable functions on $X$, and suppose that

(a) $0 \leq f_1(x) \leq f_2(x) \leq \cdots \leq \infty$ for every $x \in X$,
(b) $f_n(x) \rightarrow f(x)$ as $n \rightarrow \infty$, for every $x \in X$.

Then $f$ is measurable, and

$$
\begin{equation}
\int_X f_n d \mu \rightarrow \int_X f d \mu \quad \text { as } n \rightarrow \infty .
\end{equation}
$$

**Proof** Since $\int f_n \leq \int f_{n+1}$, there exists an $\alpha \in[0, \infty]$ such that

$$
\begin{equation}
\int_X f_n d \mu \rightarrow \alpha \text { as } n \rightarrow \infty \text {. }
\end{equation}
$$

By Theorem $1.14, f$ is measurable. Since $f_n \leq f$, we have $\int f_n \leq \int f$ for every $n$, so (1) implies

$$
\begin{equation}
\alpha \leq \int_X f d \mu .
\end{equation}
$$

Let $s$ be any simple measurable function such that $0 \leq s \leq f$, let $c$ be a constant, $0<c<1$, and define

$$
\begin{equation}
E_n=\left\{x: f_n(x) \geq c s(x)\right\} \quad(n=1,2,3, \ldots) .
\end{equation}
$$

Each $E_n$ is measurable, $E_1 \subset E_2 \subset E_3 \subset \cdots$, and $X=\bigcup E_n$. To see this equality, consider some $x \in X$. If $f(x)=0$, then $x \in E_1 ;$ if $f(x)>0$, then $c s(x)<f(x)$, since $c<1$; hence $x \in E_n$ for some $n$. Also

$$
\begin{equation}
\int_X f_n d \mu \geq \int_{E_n} f_n d \mu \geq c \int_{E_n} s d \mu \quad(n=1,2,3, \ldots) .
\end{equation}
$$

Let $n \rightarrow \infty$, applying Proposition $1.25$ and Theorem $1.19(d)$ to the last integral in (4). The result is

$$
\begin{equation}
\alpha \geq c \int_X s d \mu .
\end{equation}
$$

Since (5) holds for every $c<1$, we have

$$
\begin{equation}
\alpha \geq \int_X s d \mu
\end{equation}
$$

for every simple measurable $s$ satisfying $0 \leq s \leq f$, so that

$$
\begin{equation}
\alpha \geq \int_x f d \mu .
\end{equation}
$$

The theorem follows from (1), (2), and (7).

### 1.27 Theorem

If $f_n: X \rightarrow[0, \infty]$ is measurable, for $n=1,2,3, \ldots$, and

$$
\begin{equation}
f(x)=\sum_{n=1}^{\infty} f_n(x) \quad(x \in X),
\end{equation}
$$

then

$$
\begin{equation}
\int_X f d \mu=\sum_{n=1}^{\infty} \int_X f_n d \mu
\end{equation}
$$

**Proof** First, there are sequences $\left\{s_i^{\prime}\right\},\left\{s_i^{\prime \prime}\right\}$ of simple measurable functions such that $s_i^{\prime} \rightarrow f_1$ and $s_i^{\prime \prime} \rightarrow f_2$, as in Theorem 1.17. If $s_i=s_i^{\prime}+s_i^{\prime \prime}$, then $s_i \rightarrow f_1+f_2$, and the monotone convergence theorem, combined with Proposition $1.25$, shows that

$$
\begin{equation}
\int_X\left(f_1+f_2\right) d \mu=\int_X f_1 d \mu+\int_X f_2 d \mu .
\end{equation}
$$

Next, put $g_N=f_1+\cdots+f_N$. The sequence $\left\{g_N\right\}$ converges monotonically to $f$, and if we apply induction to (3) we see that

$$
\begin{equation}
\int_X g_N d \mu=\sum_{n=1}^N \int_X f_n d \mu .
\end{equation}
$$

Applying the monotone convergence theorem once more, we obtain (2), and the proof is complete. $\blacksquare$

If we let $\mu$ be the counting measure on a countable set, Theorem $1.27$ is a statement about double series of nonnegative real numbers (which can of course be proved by more elementary means):

**Corollary** If $a_{i j} \geq 0$ for $i$ and $j=1,2,3, \ldots$, then

$$
\sum_{i=1}^{\infty} \sum_{j=1}^{\infty} a_{i j}=\sum_{j=1}^{\infty} \sum_{i=1}^{\infty} a_{i j} .
$$

### 1.28 Fatou's Lemma

If $f_n: X \rightarrow[0, \infty]$ is measurable, for each positive integer $n$, then

$$
\begin{equation}
\int_X\left(\liminf _{n \rightarrow \infty} f_n\right) d \mu \leq \liminf _{n \rightarrow \infty} \int_X f_n d \mu .
\end{equation}
$$

Strict inequality can occur in (1); see Exercise 8.

**Proof** Put
$$
\begin{equation}
g_k(x)=\inf _{i \geq k} f_i(x) \quad(k=1,2,3, \ldots ; x \in X) .
\end{equation}
$$

Then $g_k \leq f_k$, so that

$$
\begin{equation}
\int_X g_k d \mu \leq \int_X f_k d \mu \quad(k=1,2,3, \ldots) .
\end{equation}
$$

Also, $0 \leq g_1 \leq g_2 \leq \cdots$, each $g_k$ is measurable, by Theorem 1.14, and $g_k(x) \rightarrow \lim \inf f_n(x)$ as $k \rightarrow \infty$, by Definition 1.13. The monotone convergence theorem shows therefore that the left side of (3) tends to the left side of (1), as $k \rightarrow \infty$. Hence (1) follows from (3). $\blacksquare$


### 1.29 Theorem

Suppose $f: X \rightarrow[0, \infty]$ is measurable, and

$$
\begin{equation}
\varphi(E)=\int_E f d \mu \quad(E \in \mathfrak{M}) .
\end{equation}
$$

Then $\varphi$ is a measure on $\mathfrak{M}$, and

$$
\begin{equation}
\int_X g d \varphi=\int_X g f d \mu
\end{equation}
$$

for every measurable $g$ on $X$ with range in $[0, \infty]$.
Proof Let $E_1, E_2, E_3, \ldots$ be disjoint members of $\mathfrak{M}$ whose union is $E$. Observe that

$$
\begin{equation}
\chi_{E} f=\sum_{j=1}^{\infty} \chi_{E_j} f
\end{equation}
$$

and that

$$
\begin{equation}
\varphi(E)=\int_X \chi_E f d \mu, \quad \varphi\left(E_j\right)=\int_X \chi_{E_j} f d \mu .
\end{equation}
$$

It now follows from Theorem $1.27$ that

$$
\begin{equation}
\varphi(E)=\sum_{j=1}^{\infty} \varphi\left(E_j\right) .
\end{equation}
$$

Since $\varphi(\varnothing)=0,(5)$ proves that $\varphi$ is a measure.

Next, (1) shows that (2) holds whenever $g=\chi_E$ for some $E \in \mathfrak{M}$. Hence (2) holds for every simple measurable function $g$, and the general case follows from the monotone convergence theorem.

**Remark** The second assertion of Theorem $1.29$ is sometimes written in the form

$$
\begin{equation}
d \varphi=f d \mu .
\end{equation}
$$

We assign no independent meaning to the symbols $d \varphi$ and $d \mu ;(6)$ merely means that (2) holds for every measurable $g \geq 0$.

Theorem 1.29 has a very important converse, the Radon-Nikodym theorem, which will be proved in Chap. 6.

