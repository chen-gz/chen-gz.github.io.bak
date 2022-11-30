---
title: Fourier Series of Continuous Functions
date:  2022-11-18
---

### 5.11 A Convergence Problem

Is it true for every $f \in C(T)$ that the Fourier series of $f$ converges to $f(x)$ at every point $x$ ?

Let us recall that the $n$th partial sum of the Fourier series of $f$ at the point $x$ is given by
$$
s_n(f ; x)=\frac{1}{2 \pi} \int_{-\pi}^\pi f(t) D_n(x-t) d t \quad(n=0,1,2, \ldots),
$$
where
$$
D_n(t)=\sum_{k=-n}^n e^{i k t} .
$$
This follows directly from formulas $4.26(1)$ and $4.26(3)$.
The problem is to determine whether
$$
\lim _{n \rightarrow \infty} s_n(f ; x)=f(x)
$$
for every $f \in C(T)$ and for every real $x$. We observed in Sec. $4.26$ that the partial sums do converge to $f$ in the $L^2$-norm, and Theorem $3.12$ implies therefore that each $f \in L^2(T)$ [hence also each $f \in C(T)$ ] is the pointwise limit a.e. of some subsequence of the full sequence of the partial sums. But this does not answer the present question.

We shall see that the Banach-Steinhaus theorem answers the question negatively. Put
$$
s^*(f ; x)=\sup _n\left|s_n(f ; x)\right| .
$$
To begin with, take $x=0$, and define
$$
\Lambda_n f=s_n(f ; 0) \quad(f \in C(T) ; n=1,2,3, \ldots) .
$$
We know that $C(T)$ is a Banach space, relative to the supremum norm $\|f\|_{\infty}$. It follows from (1) that each $\Lambda_n$ is a bounded linear functional on $C(T)$, of norm
$$
\left\|\Lambda_n\right\| \leq \frac{1}{2 \pi} \int_{-\pi}^\pi\left|D_n(t)\right| d t=\left\|D_n\right\|_1 .
$$
We claim that
$$
\left\|\Lambda_n\right\| \rightarrow \infty \quad \text { as } n \rightarrow \infty .
$$
This will be proved by showing that equality holds in (6) and that
$$
\left\|D_n\right\|_1 \rightarrow \infty \quad \text { as } n \rightarrow \infty .
$$

$\left\|D_n\right\|_1 \rightarrow \infty \quad$ as $n \rightarrow \infty$
Multiply (2) by $e^{i t / 2}$ and by $e^{-i t / 2}$ and subtract one of the resulting two equations from the other, to obtain
$$
D_n(t)=\frac{\sin \left(n+\frac{1}{2}\right) t}{\sin (t / 2)} .
$$

Since $|\sin x| \leq|x|$ for all real $x,(9)$ shows that
$$
\begin{aligned}
\left\|D_n\right\|_1 &>\frac{2}{\pi} \int_0^\pi\left|\sin \left(n+\frac{1}{2}\right) t\right| \frac{d t}{t}=\frac{2}{\pi} \int_0^{(n+1 / 2) \pi}|\sin t| \frac{d t}{t} \\
&>\frac{2}{\pi} \sum_{k=1}^n \frac{1}{k \pi} \int_{(k-1) \pi}^{k \pi}|\sin t| d t=\frac{4}{\pi^2} \sum_{k=1}^n \frac{1}{k} \rightarrow \infty,
\end{aligned}
$$
which proves (8).

Next, fix $n$, and put $g(t)=1$ if $D_n(t) \geq 0, g(t)=-1$ if $D_n(t)<0$. There exist $f_j \in C(T)$ such that $-1 \leq f_j \leq 1$ and $f_j(t) \rightarrow g(t)$ for every $t$, as $j \rightarrow \infty$. By the dominated convergence theorem,
$$
\lim _{j \rightarrow \infty} \Lambda_n\left(f_j\right)=\lim _{j \rightarrow \infty} \frac{1}{2 \pi} \int_{-\pi}^\pi f_j(-t) D_n(t) d t=\frac{1}{2 \pi} \int_{-\pi}^\pi g(-t) D_n(t) d t=\left\|D_n\right\|_1 .
$$
Thus equality holds in (6), and we have proved (7).

Since (7) holds, the Banach-Steinhaus theorem asserts now that $s^*(f ; 0)=\infty$ for every $f$ in some dense $G_\delta$-set in $C(T)$.

We chose $x=0$ just for convenience. It is clear that the same result holds for every other $x$ :

To each real number $x$ there corresponds a set $E_x \subset C(T)$ which is a dense $G_\delta$ in $C(T)$, such that $s^*(f ; x)=\infty$ for every $f \in E_x$.

In particular, the Fourier series of each $f \in E_x$ diverges at $x$, and we have a negative answer to our question. (Exercise 22 shows the answer is positive if mere continuity is replaced by a somewhat stronger smoothness assumption.)

It is interesting to observe that the above result can be strengthened by another application of Baire's theorem. Let us take countably many points $x_i$, and let $E$ be the intersection of the corresponding sets
$$
E_{x_i} \subset C(T) .
$$
By Baire's theorem, $E$ is a dense $G_\delta$ in $C(T)$. Every $f \in E$ has
$$
s^*\left(f ; x_i\right)=\infty
$$
at every point $x_i$.

For each $f, s^*(f ; x)$ is a lower semicontinuous function of $x$, since (4) exhibits it as the supremum of a collection of continuous functions. Hence $\left\{x: s^*(f ; x)=\infty\right\}$ is a $G_\delta$ in $R^1$, for each $f$. If the above points $x_i$ are taken so that their union is dense in $(-\pi, \pi)$, we obtain the following result:

### 5.12 Theorem

There is a set $E \subset C(T)$ which is a dense $G_\delta$ in $C(T)$ and which has the following property: For each $f \in E$, the set

$$
Q_f=\left\{x: s^*(f ; x)=\infty\right\}
$$
is a dense $G_\delta$ in $R^1$.

This gains in interest if we realize that $E$, as well as each $Q_f$, is an uncountable set:

### 5.13 Theorem

In a complete metric space $X$ which has no isolated points, no countable dense set is a $G_\delta$.

Proof Let $x_k$ be the points of a countable dense set $E$ in $X$. Assume that $E$ is a $G_\delta$. Then $E=\bigcap V_n$, where each $V_n$ is dense and open. Let
$$
W_n=V_n-\bigcup_{k=1}^n\left\{x_k\right\} .
$$
Then each $W_n$ is still a dense open set, but $\bigcap W_n=\varnothing$, in contradiction to Baire's theorem.

Note: A slight change in the proof of Baire's theorem shows actually that every dense $G_\delta$ contains a perfect set if $X$ is as above.
