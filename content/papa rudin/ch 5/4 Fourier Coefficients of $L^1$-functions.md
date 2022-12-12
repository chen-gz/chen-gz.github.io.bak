---
title: Fourier Coefficients of L¹-functions
date: 2022-11-19
---

### 5.14 

As in Sec. 4.26, we associate to every $f \in L^1(T)$ a function $\hat{f}$ on $Z$ defined by
$$
\hat{f}(n)=\frac{1}{2 \pi} \int_{-\pi}^\pi f(t) e^{-i n t} d t \quad(n \in Z) .
$$
It is easy to prove that $\hat{f}(n) \rightarrow 0$ as $|n| \rightarrow \infty$, for every $f \in L^1$. For we know that $C(T)$ is dense in $L^1(T)$ (Theorem 3.14) and that the trigonometric polynomials are dense in $C(T)$ (Theorem 4.25). If $\epsilon>0$ and $f \in L^1(T)$, this says that there is a $g \in C(T)$ and a trigonometric polynomial $P$ such that $\|f-g\|_1<\epsilon$ and $\|g-P\|_{\infty}<\epsilon$. Since
$$
\|g-P\|_1 \leq\|g-P\|_{\infty}
$$
if follows that $\|f-P\|_1<2 \epsilon$; and if $|n|$ is large enough (depending on $P$ ), then
$$
|\hat{f}(n)|=\left|\frac{1}{2 \pi} \int_{-\pi}^\pi\{f(t)-P(t)\} e^{-i n t} d t\right| \leq\|f-P\|_1<2 \epsilon .
$$
Thus $\hat{f}(n) \rightarrow 0$ as $n \rightarrow \pm \infty$. This is known as the Riemann-Lebesgue lemma.

The question we wish to raise is whether the converse is true. That is to say, if $\left\{a_n\right\}$ is a sequence of complex numbers such that $a_n \rightarrow 0$ as $n \rightarrow \pm \infty$, does it follow that there is an $f \in L^1(T)$ such that $\hat{f}(n)=a_n$ for all $n \in Z$ ? In other words, is something like the Riesz-Fischer theorem true in this situation?

This can easily be answered (negatively) with the aid of the open mapping theorem.

Let $c_0$ be the space of all complex functions $\varphi$ on $Z$ such that $\varphi(n) \rightarrow 0$ as $n \rightarrow \pm \infty$, with the supremum norm
$$
\|\varphi\|_{\infty}=\sup \{|\varphi(n)|: n \in Z\} .
$$
Then $c_0$ is easily seen to be a Banach space. In fact, if we declare every subset of $Z$ to be open, then $Z$ is a locally compact Hausdorff space, and $c_0$ is nothing but $C_0(Z)$.
The following theorem contains the answer to our question:

### 5.15 Theorem 

The mapping $f \rightarrow \hat{f}$ is a one-to-one bounded linear transformation of $L^1(T)$ into (but not onto) $c_0$.

Proof Define $\Lambda$ by $\Lambda f=\hat{f}$. It is clear that $\Lambda$ is linear. We have just proved that $\Lambda$ maps $L^1(T)$ into $c_0$, and formula 5.14(1) shows that $|\hat{f}(n)| \leq\|f\|_1$, so that $\|\Lambda\| \leq 1$. (Actually, $\|\Lambda\|=1$; to see this, take $f=1$.) Let us now prove that $\Lambda$ is one-to-one. Suppose $f \in L^1(T)$ and $\hat{f}(n)=0$ for every $n \in Z$. Then

$$
\int_{-\pi}^\pi f(t) g(t) d t=0
$$

if $g$ is any trigonometric polynomial. By Theorem $4.25$ and the dominated convergence theorem, (1) holds for every $g \in C(T)$. Apply the dominated convergence theorem once more, in conjunction with the Corollary to Lusin's theorem, to conclude that (1) holds if $g$ is the characteristic function of any measurable set in $T$. Now Theorem 1.39(b) shows that $f=0$ a.e.

If the range of $\Lambda$ were all of $c_0$, Theorem $5.10$ would imply the existence of a $\delta>0$ such that

$$
\|\hat{f}\|_{\infty} \geq \delta\|f\|_1
$$

for every $f \in L^1(T)$. But if $D_n(t)$ is defined as in Sec. 5.11, then $D_n \in L^1(T)$, $\left\|\hat{D}_n\right\|_{\infty}=1$ for $n=1,2,3, \ldots$, and $\left\|D_n\right\|_1 \rightarrow \infty$ as $n \rightarrow \infty$. Hence there is no $\delta>0$ such that the inequalities

$$
\left\|\hat{D}_n\right\|_{\infty} \geq \delta\left\|D_n\right\|_1
$$

hold for every $n$.

This completes the proof.
