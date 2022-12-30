---
title: "Bounded linear functional on Lp"
date: "2022-12-20"
editor_options: 
  markdown: 
    wrap: 80
---

### 6.15

Let $\mu$ be a positive measure, suppose $1 \leq p \leq \infty$, and let $q$ be
the exponent conjugate to $p$. The Hölder inequality (Theorem 3.8) shows that if
$g \in L^q(\mu)$ and if $\Phi_g$ is defined by

$$
\Phi_g(f)=\int_X f g d \mu,
$$

then $\Phi_g$ is a bounded linear functional on $L^p(\mu)$, of norm at most
$\|g\|_q$. The question naturally arises whether all bounded linear functionals
on $L^p(\mu)$ have this form, and whether the representation is unique.

For $p=\infty$, Exercise 13 shows that the answer is negative: $L^1(m)$ does not
furnish all bounded linear functionals on $L^{\infty}(m)$. For $1<p<\infty$, the
answer is affirmative. It is also affirmative for $p=1$, provided certain
measure-theoretic pathologies are excluded. For $\sigma$-finite measure spaces,
no difficulties arise, and we shall confine ourselves to this case.

then $\Phi_g$ is a bounded linear functional on $L^p(\mu)$, of norm at most $\|g\|_q$. The question naturally arises whether all bounded linear functionals on $L^p(\mu)$ have this form, and whether the representation is unique.

For $p=\infty$, Exercise 13 shows that the answer is negative: $L^1(m)$ does not furnish all bounded linear functionals on $L^{\infty}(m)$. For $1<p<\infty$, the answer is affirmative. It is also affirmative for $p=1$, provided certain measure-theoretic pathologies are excluded. For $\sigma$-finite measure spaces, no difficulties arise, and we shall confine ourselves to this case.

### 6.16 Theorem 

Suppose $1 \leq p<\infty, \mu$ is a $\sigma$-finite positive measure on $X$, and $\Phi$ is a bounded linear functional on $L^p(\mu)$. Then there is a unique $g \in L^q(\mu)$, where $q$ is the exponent conjugate to $p$, such that

$$
\Phi(f)=\int_X f g d \mu \quad\left(f \in L^p(\mu)\right) .
$$

Moreover, if $\Phi$ and $g$ are related as in (1), we have

$$
\|\boldsymbol{\Phi}\|=\|g\|_{\boldsymbol{q}} .
$$

In other words, $L^q(\mu)$ is isometrically isomorphic to the dual space of $L^p(\mu)$, under the stated conditions.

Proof The uniqueness of $g$ is clear, for if $g$ and $g^{\prime}$ satisfy (1), then the integral of $g-g^{\prime}$ over any measurable set $E$ of finite measure is 0 (as we see by taking $\chi_E$ for $f$ ), and the $\sigma$-finiteness of $\mu$ implies therefore that $g-g^{\prime}=0$ a.e.
Next, if (1) holds, Hölder's inequality implies

$$
\|\Phi\| \leq\|g\|_q .
$$

So it remains to prove that $g$ exists and that equality holds in (3). If $\|\Phi\|=0$, (1) and (2) hold with $g=0$. So assume $\|\Phi\|>0$.
We first consider the case $\mu(X)<\infty$.
For any measurable set $E \subset X$, define

$$
\lambda(E)=\Phi\left(\chi_E\right)
$$

Since $\Phi$ is linear, and since $\chi_{A \cup B}=\chi_A+\chi_B$ if $A$ and $B$ are disjoint, we see that $\lambda$ is additive. To prove countable additivity, suppose $E$ is the union of countably many disjoint measurable sets $E_i$, put $A_k=E_1 \cup \cdots \cup E_k$, and note that

$$
\left\|\chi_E-\chi_{A_k}\right\|_p=\left[\mu\left(E-A_k\right)\right]^{1 / p} \rightarrow 0 \quad(k \rightarrow \infty) ;
$$

the continuity of $\Phi$ shows now that $\lambda\left(A_k\right) \rightarrow \lambda(E)$. So $\lambda$ is a complex measure. [In (4) the assumption $p<\infty$ was used.] It is clear that $\lambda(E)=0$ if $\mu(E)=0$,

since then $\left\|\chi_E\right\|_p=0$. Thus $\lambda \ll \mu$, and the Radon-Nikodym theorem ensures the existence of a function $g \in L^1(\mu)$ such that, for every measurable $E \subset X$,

$$
\Phi\left(\chi_E\right)=\int_E g d \mu=\int_X \chi_E g d \mu .
$$

By linearity it follows that

$$
\Phi(f)=\int_{\boldsymbol{X}} f g d \mu
$$

holds for every simple measurable $f$, and so also for every $f \in L^{\infty}(\mu)$, since every $f \in L^{\infty}(\mu)$ is a uniform limit of simple functions $f_i$. Note that the uniform convergence of $f_i$ to $f$ implies $\left\|f_i-f\right\|_p \rightarrow 0$, hence $\Phi\left(f_i\right) \rightarrow \Phi(f)$, as $i \rightarrow \infty$.

We want to conclude that $g \in L^q(\mu)$ and that (2) holds; it is best to split the argument into two cases.

CASE $1 p=1$. Here (5) shows that

$$
\left|\int_E g d \mu\right| \leq\|\Phi\| \cdot\left\|\chi_E\right\|_1=\|\Phi\| \cdot \mu(E)
$$

for every $E \in \mathfrak{M}$. By Theorem $1.40,|g(x)| \leq\|\Phi\|$ a.e., so that $\|g\|_{\infty} \leq\|\Phi\|$.

CASE $21<p<\infty$. There is a measurable function $\alpha,|\alpha|=1$, such that $\alpha g=|g|$ [Proposition $1.9(e)$ ]. Let $E_n=\{x:|g(x)| \leq n\}$, and define $f=$ $\chi_{E_n}|g|^{q-1} \alpha$. Then $|f|^p=|g|^q$ on $E_n, f \in L^{\infty}(\mu)$, and (6) gives

$$
\int_{E_n}|g|^q d \mu=\int_X f g d \mu=\Phi(f) \leq\|\Phi\|\left\{\int_{E_n}|g|^q\right\}^{1 / p},
$$

so that

$$
\int_X \chi_{E_n}|g|^q d \mu \leq\|\Phi\|^q \quad(n=1,2,3, \ldots) .
$$

If we apply the monotone convergence theorem to (7), we obtain $\|g\|_q \leq\|\Phi\|$.

Thus (2) holds and $g \in L^q(\mu)$. It follows that both sides of (6) are continuous functions on $L^p(\mu)$. They coincide on the dense subset $L^{\infty}(\mu)$ of $L^p(\mu)$; hence they coincide on all of $L^p(\mu)$, and this completes the proof if $\mu(X)<\infty$.

If $\mu(X)=\infty$ but $\mu$ is $\sigma$-finite, choose $w \in L^1(\mu)$ as in Lemma 6.9. Then $d \tilde{\mu}=w d \mu$ defines a finite measure on $\mathfrak{M}$, and

$$
F \rightarrow w^{1 / p} F
$$

is a linear isometry of $L^p(\tilde{\mu})$ onto $L^p(\mu)$, because $w(x)>0$ for every $x \in X$. Hence

$$
\Psi(F)=\Phi\left(w^{1 / p} F\right)
$$

defines a bounded linear functional $\Psi$ on $L^p(\tilde{\mu})$, with $\|\Psi\|=\|\Phi\|$.

The first part of the proof shows now that there exists $G \in L^q(\tilde{\mu})$ such that

$$
\Psi(F)=\int_X F G d \tilde{\mu} \quad\left(F \in L^p(\tilde{\mu})\right) .
$$

Put $g=w^{1 / q} G$. (If $p=1, g=G$.) Then

$$
\int_X|g|^q d \mu=\int_X|G|^q d \tilde{\mu}=\|\Psi\|^q=\|\Phi\|^q
$$

if $p>1$, whereas $\|g\|_{\infty}=\|G\|_{\infty}=\|\Psi\|=\|\Phi\|$ if $p=1$. Thus (2) holds, and since $G d \tilde{\mu}=w^{1 / p} g d \mu$, we finally get

$$
\Phi(f)=\Psi\left(w^{-1 / p} f\right)=\int_X w^{-1 / p} f G d \tilde{\mu}=\int_X f g d \mu
$$

for every $f \in L^p(\mu)$.

### 6.17 Remark 

We have already encountered the special case $p=q=2$ of Theorem 6.16. In fact, the proof of the general case was based on this special case, for we used the knowledge of the bounded linear functionals on $L^2(\mu)$ in the proof of the Radon-Nikodym theorem, and the latter was the key to the proof of Theorem 6.16. The special case $p=2$, in turn, depended on the completeness of $L^2(\mu)$, on the fact that $L^2(\mu)$ is therefore a Hilbert space, and on the fact that the bounded linear functionals on a Hilbert space are given by inner products.
We now turn to the complex version of Theorem 2.14.