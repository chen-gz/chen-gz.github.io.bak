---
title: 3 Simple Functions
date: 2022-09-18
---


### 1.16 Definition

A complex function $s$ on a measurable space $X$ whose range consists of only finitely many points will be called a simple function. Among these are the nonnegative simple functions, whose range is a finite subset of $[0, \infty)$. Note that we explicitly exclude $\infty$ from the values of a simple function.

If $\alpha_1, \ldots, \alpha_n$ are the distinct values of a simple function $s$, and if we set $A_i=\left\{x: s(x)=\alpha_i\right\}$, then clearly
$$
\begin{equation}
s=\sum_{i=1}^n \alpha_i \chi_{A_i},
\end{equation}
$$
where $\chi_{A_i}$ is the characteristic function of $A_i$, as defined in Sec. $1.9(d)$.

It is also clear that $s$ is measurable if and only if each of the sets $A_i$ is measurable.


### 1.17 Theorem

Let $f: X \rightarrow[0, \infty]$ be measurable. There exist simple measurable functions $s_n$ on $X$ such that

(a) $0 \leq s_1 \leq s_2 \leq \cdots \leq f$.

(b) $s_n(x) \rightarrow f(x)$ as $n \rightarrow \infty$, for every $x \in X$.

**Proof** Put $\delta_n=2^{-n}$. To each positive integer $n$ and each real number $t$ corresponds a unique integer $k=k_n(t)$ that satisfies $k \delta_n \leq t<(k+1) \delta_n$. Define

$$
\begin{equation}
\varphi_n(t)= \begin{cases}k_n(t) \delta_n & \text { if } 0 \leq t<n \\ n & \text { if } n \leq t \leq \infty\end{cases}
\end{equation}
$$

Each $\varphi_n$ is then a Borel function on $[0, \infty]$,

$$
\begin{equation}
t-\delta_n<\varphi_n(t) \leq t \quad \text { if } 0 \leq t \leq n,
\end{equation}
$$

$0 \leq \varphi_1 \leq \varphi_2 \leq \cdots \leq t$, and $\varphi_n(t) \rightarrow t$ as $n \rightarrow \infty$, for every $t \in[0, \infty]$. It follows that the functions

$$
\begin{equation}
s_n=\varphi_n \circ f
\end{equation}
$$

satisfy $(a)$ and $(b)$; they are measurable, by Theorem $1.12(d)$.

