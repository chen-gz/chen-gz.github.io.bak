---
title:  Total Variation
date: 2022-12-11
---

### 6.1 Introduction

Let $\mathfrak{M}$ be a $\sigma$-algebra in a set $X$. Call a countable collection $\left\{E_i\right\}$ of members of $\mathfrak{M}$ a partition of $E$ if $E_i \cap E_j=\varnothing$ whenever $i \neq j$, and if $E=$ $\bigcup E_i$. A complex measure $\mu$ on $\mathfrak{M}$ is then a complex function on $\mathfrak{M}$ such that
$$
\mu(E)=\sum_{i=1}^{\infty} \mu\left(E_i\right) \quad(E \in \mathfrak{M})
$$
for every partition $\left\{E_i\right\}$ of $E$.

Observe that the convergence of the series in (1) is now part of the requirement (unlike for positive measures, where the series could either converge or diverge to $\infty$ ). Since the union of the sets $E_i$ is not changed if the subscripts are permuted, every rearrangement of the series (1) must also converge. Hence ([26], Theorem 3.56) the series actually converges absolutely.

Let us consider the problem of finding a positive measure $\lambda$ which dominates a given complex measure $\mu$ on $\mathfrak{M}$, in the sense that $|\mu(E)| \leq \lambda(E)$ for every $E \in \mathfrak{M}$, and let us try to keep $\lambda$ as small as we can. Every solution to our problem (if there is one at all) must satisfy
$$
\lambda(E)=\sum_{i=1}^{\infty} \lambda\left(E_i\right) \geq \sum_1^{\infty}\left|\mu\left(E_i\right)\right|,
$$
for every partition $\left\{E_i\right\}$ of any set $E \in \mathfrak{M}$, so that $\lambda(E)$ is at least equal to the supremum of the sums on the right of (2), taken over all partitions of $E$. *This suggests that we define a set function $|\mu|$ on $\mathfrak{M}$ by*
$$
|\mu|(E)=\sup \sum_{i=1}^{\infty}\left|\mu\left(E_i\right)\right| \quad(E \in \mathfrak{M}),
$$
*the supremum being taken over all partitions $\left\{E_i\right\}$ of $E$.*

This notation is perhaps not the best, but it is the customary one. Note that $|\mu|(E) \geq|\mu(E)|$, but that in general $|\mu|(E)$ is not equal to $|\mu(E)|$.

It turns out, as will be proved below, that $|\mu|$ actually is a measure, so that our problem does have a solution. The discussion which led to (3) shows then clearly that $|\mu|$ is the minimal solution, in the sense that any other solution $\lambda$ has the property $\lambda(E) \geq|\mu|(E)$ for all $E \in \mathfrak{M}$.

The set function $|\mu|$ is called the total variation of $\mu$, or sometimes, to avoid misunderstanding, the **total variation measure.** The term "**total variation of $\mu$** " is also frequently used to denote the number $|\mu|(X)$.

If $\mu$ is a positive measure, then of course $|\mu|=\mu$.

Besides being a measure, $|\mu|$ has another unexpected property: $|\mu|(X)<\infty$. Since $|\mu(E)| \leq|\mu|(E) \leq|\mu|(X)$, this implies that every complex measure $\mu$ on any $\sigma$-algebra is bounded: If the range of $\mu$ lies in the complex plane, then it actually lies in some disc of finite radius. This property (proved in Theorem 6.4) is sometimes expressed by saying that $\mu$ is of **bounded** variation.

### 6.2 Theorem 

The total variation $|\mu|$ of a complex measure $\mu$ on $\mathfrak{M}$ is a positive measure on $\mathfrak{M}$.

ProOF Let $\left\{E_i\right\}$ be a partition of $E \in \mathfrak{M}$. Let $t_i$ be real numbers such that $t_i<|\mu|\left(E_i\right)$. Then each $E_i$ has a partition $\left\{A_{i j}\right\}$ such that
$$
\sum_j\left|\mu\left(A_{i j}\right)\right|>t_i \quad(i=1,2,3, \ldots) .
$$
Since $\left\{A_{i j}\right\}(i, j=1,2,3, \ldots)$ is a partition of $E$, it follows that
$$
\sum_i t_i \leq \sum_{i, j}\left|\mu\left(A_{i j}\right)\right| \leq|\mu|(E) .
$$
Taking the supremum of the left side of $(2)$, over all admissible choices of $\left\{t_i\right\}$, we see that
$$
\sum_i|\mu|\left(E_i\right) \leq|\mu|(E) .
$$
To prove the opposite inequality, let $\left\{A_j\right\}$ be any partition of $E$. Then for any fixed $j,\left\{A_j \cap E_i\right\}$ is a partition of $A_j$, and for any fixed $i,\left\{A_j \cap E_i\right\}$ is a partition of $E_i$. Hence
$$
\begin{aligned}
\sum_j\left|\mu\left(A_j\right)\right| & =\sum_j\left|\sum_i \mu\left(A_j \cap E_i\right)\right| \\
& \leq \sum_j \sum_i\left|\mu\left(A_j \cap E_i\right)\right| \\
& =\sum_i \sum_j\left|\mu\left(A_j \cap E_i\right)\right| \leq \sum_i|\mu|\left(E_i\right)
\end{aligned}
$$
Since (4) holds for every partition $\left\{A_j\right\}$ of $E$, we have
$$
|\mu|(E) \leq \sum_i|\mu|\left(E_i\right) .
$$
By (3) and (5), $|\mu|$ is countably additive.

Note that the Corollary to Theorem $1.27$ was used in (2) and (4).
That $|\mu|$ is not identically $\infty$ is a trivial consequence of Theorem $6.4$ but can also be seen right now, since $|\mu|(\varnothing)=0$.

### 6.3 Lemma

 If $z_1, \ldots, z_N$ are complex numbers then there is a subset $S$ of $\{1, \ldots, N\}$ for which
$$
\left|\sum_{k \in S} z_k\right| \geq \frac{1}{\pi} \sum_{k=1}^N\left|z_k\right| .
$$
Proof Write $z_k=\left|z_k\right| e^{i a_k}$. For $-\pi \leq \theta \leq \pi$, let $S(\theta)$ be the set of all $k$ for which $\cos \left(\alpha_k-\theta\right)>0$. Then
$$
\left|\sum_{S(\theta)} z_k\right|=\left|\sum_{S(\theta)} e^{-i \theta} z_k\right| \geq \operatorname{Re} \sum_{S(\theta)} e^{-i \theta} z_k=\sum_{k=1}^N\left|z_k\right| \cos ^{+}\left(\alpha_k-\theta\right) .
$$
Choose $\theta_0$ so as to maximize the last sum, and put $S=S\left(\theta_0\right)$. This maximum is at least as large as the average of the sum over $[-\pi, \pi]$, and this average is $\pi^{-1} \sum\left|z_k\right|$, because
$$
\frac{1}{2 \pi} \int_{-\pi}^\pi \cos ^{+}(\alpha-\theta) d \theta=\frac{1}{\pi}
$$
for every $\alpha$.

### 6.4 Theorem

If $\mu$ is a complex measure on $X$, then
$$
|\mu|(X)<\infty .
$$
Proof Suppose first that some set $E \in \mathfrak{M}$ has $|\mu|(E)=\infty$. Put $t=\pi(1+|\mu(E)|)$. Since $|\mu|(E)>t$, there is a partition $\left\{E_i\right\}$ of $E$ such that
$$
\sum_{i=1}^N\left|\mu\left(E_i\right)\right|>t
$$
for some $N$. Apply Lemma 6.3, with $z_i=\mu\left(E_i\right)$, to conclude that there is a set $A \subset E$ (a union of some of the sets $\left.E_i\right)$ for which
$$
|\mu(A)|>t / \pi>1 \text {. }
$$
Setting $B=E-A$, it follows that
$$
|\mu(B)|=|\mu(E)-\mu(A)| \geq|\mu(A)|-|\mu(E)|>\frac{t}{\pi}-|\mu(E)|=1 .
$$
We have thus split $E$ into disjoint sets $A$ and $B$ with $|\mu(A)|>1$ and $|\mu(B)|>1$. Evidently, at least one of $|\mu|(A)$ and $|\mu|(B)$ is $\infty$, by Theorem 6.2. Now if $|\mu|(X)=\infty$, split $X$ into $A_1, B_1$, as above, with $\left|\mu\left(A_1\right)\right|>1$, $|\mu|\left(B_1\right)=\infty$. Split $B_1$ into $A_2, B_2$, with $\left|\mu\left(A_2\right)\right|>1,|\mu|\left(B_2\right)=\infty$. Continuing in this way, we get a countably infinite disjoint collection $\left\{A_i\right\}$, with $\left|\mu\left(A_i\right)\right|>1$ for each $i$. The countable additivity of $\mu$ implies that
$$
\mu\left(\bigcup_i A_i\right)=\sum_i \mu\left(A_i\right) .
$$
But this series cannot converge, since $\mu\left(A_i\right)$ does not tend to 0 as $i \rightarrow \infty$. This contradiction shows that $|\mu|(X)<\infty$.

