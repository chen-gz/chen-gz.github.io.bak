---
title: 2 The $L^p$-spaces
date: 2022-10-28
---

In this section, $X$ will be an arbitrary measure space with a positive measure $\mu$.

### 3.6 Definition 

If $0<p<\infty$ and if $f$ is a complex measurable function on $X$, define

$$
\|f\|_p=\left\{\int_X|f|^p d \mu\right\}^{1 / p}
$$

and let $L^p(\mu)$ consist of all $f$ for which

$$
\|f\|_p<\infty .
$$

We call $\|f\|_p$ the $L^p$-norm of $f$.

If $\mu$ is Lebesgue measure on $R^k$, we write $L^p\left(R^k\right)$ instead of $L^p(\mu)$, as in Sec. $2.21$. If $\mu$ is the counting measure on a set $A$, it is customary to denote the corresponding $L^p$-space by $\ell^p(A)$, or simply by $\ell^p$, if $A$ is countable. An element of $\ell^p$ may be regarded as a complex sequence $x=\left\{\xi_n\right\}$, and

$$
\|x\|_p=\left\{\sum_{n=1}^{\infty}\left|\xi_n\right|^p\right\}^{1 / p} .
$$

### 3.7 Definition 

Suppose $g: X \rightarrow[0, \infty]$ is measurable. Let $S$ be the set of all real $\alpha$ such that

$$
\mu\left(g^{-1}((\alpha, \infty])\right)=0 .
$$

If $S=\varnothing$, put $\beta=\infty$. If $S \neq \varnothing$, put $\beta=\inf S$. Since

$$
g^{-1}((\beta, \infty])=\bigcup_{n=1}^{\infty} g^{-1}\left(\left(\beta+\frac{1}{n}, \infty\right]\right),
$$

and since the union of a countable collection of sets of measure 0 has measure 0 , we see that $\beta \in S$. We call $\beta$ the essential supremum of $g$.

If $f$ is a complex measurable function on $X$, we define $\|f\|_{\infty}$ to be the essential supremum of $|f|$, and we let $L^{\infty}(\mu)$ consist of all $f$ for which $\|f\|_{\infty}<\infty$. The members of $L^{\infty}(\mu)$ are sometimes called essentially bounded measurable functions on $X$.

*It follows from this definition that the inequality $|f(x)| \leq \lambda$ holds for almost all $x$ if and only if $\lambda \geq\|f\|_{\infty}$.*

As in Definition 3.6, $L^{\infty}\left(R^k\right)$ denotes the class of all essentially bounded (with respect to Lebesgue measure) functions on $R^k$, and $\ell^{\infty}(A)$ is the class of all bounded functions on $A$. (Here bounded means the same as essentially bounded, since every nonempty set has positive measure!)

### 3.8 Theorem 

If $p$ and $q$ are conjugate exponents, $1 \leq p \leq \infty$, and if $f \in L^p(\mu)$ and $g \in L^q(\mu)$, then $f g \in L^1(\mu)$, and

$$
\|f g\|_1 \leq\|f\|_p\|g\|_q .
$$

Proof For $1<p<\infty,(1)$ is simply Hölder's inequality, applied to $|f|$ and $|g|$. If $p=\infty$, note that
$$
|f(x) g(x)| \leq\|f\|_{\infty}|g(x)|
$$
for almost all $x$; integrating (2), we obtain (1). If $p=1$, then $q=\infty$, and the same argument applies.

### 3.9 Theorem 

Suppose $1 \leq p \leq \infty$, and $f \in L^p(\mu), g \in L^p(\mu)$. Then $f+g \in L^p(\mu)$, and

$$
\|f+g\|_p \leq\|f\|_p+\|g\|_p .
$$

Proof For $1<p<\infty$, this follows from Minkowski's inequality, since

$$
\int_X|f+g|^p d \mu \leq \int_X(|f|+|g|)^p d \mu .
$$

For $p=1$ or $p=\infty$, (1) is a trivial consequence of the inequality $|f+g| \leq|f|+|g|$.

### 3.10 Remarks

Fix $p, 1 \leq p \leq \infty$. If $f \in L^p(\mu)$ and $\alpha$ is a complex number, it is clear that $\alpha f \in L^p(\mu)$. In fact,

$$
\|\alpha f\|_p=|\alpha|\|f\|_p .
$$

In conjunction with Theorem $3.9$, this shows that $L^p(\mu)$ is a complex vector space.

Suppose $f, g$, and $h$ are in $L^p(\mu)$. Replacing $f$ by $f-g$ and $g$ by $g-h$ in Theorem 3.9, we obtain

$$
\|f-h\|_p \leq\|f-g\|_p+\|g-h\|_p .
$$

This suggests that a metric may be introduced in $L^p(\mu)$ by defining the distance between $f$ and $g$ to be $\|f-g\|_p$. Call this distance $d(f, g)$ for the moment. Then $0 \leq d(f, g)<\infty, d(f, f)=0, d(f, g)=d(g, f)$, and (2) shows that the triangle inequality $d(f, h) \leq d(f, g)+d(g, h)$ is satisfied. The only other property which $d$ should have to define a metric space is that $d(f, g)=0$ should imply that $f=g$. In our present situation this need not be so; we have $d(f, g)=0$ precisely when $f(x)=g(x)$ for almost all $x$.

Let us write $f \sim g$ if and only if $d(f, g)=0$. It is clear that this is an equivalence relation in $L^p(\mu)$ which partitions $L^p(\mu)$ into equivalence classes; each class consists of all functions which are equivalent to a given one. If $F$ and $G$ are two equivalence classes, choose $f \in F$ and $g \in G$, and define $d(F, G)=d(f, g)$; note that $f \sim f_1$ and $g \sim g_1$ implies

$$
d(f, g)=d\left(f_1, g_1\right)
$$

With this definition, the set of equivalence classes is now a metric space.
Note that it is also a vector space, since $f \sim f_1$ and $g \sim g_1$ implies $f+g \sim$ $f_1+g_1$ and $\alpha f \sim \alpha f_1$.

When $L^p(\mu)$ is regarded as a metric space, then the space which is really under consideration is therefore *not a space whose elements are functions, but a space whose elements are equivalence classes of functions.* For the sake of simplicity of language, it is, however, customary to relegate this distinction to the status of a tacit understanding and to continue to speak of $L^p(\mu)$ as a space of functions. We shall follow this custom.

If $\left\{f_n\right\}$ is a sequence in $L^p(\mu)$, if $f \in L^p(\mu)$, and if $\lim _{n \rightarrow \infty}\left\|f_n-f\right\|_p=0$, we say that $\left\{f_n\right\}$ converges to $f$ in $L^p(\mu)$ (or that $\left\{f_n\right\}$ converges to $f$ in the mean of order $p$, or that $\left\{f_n\right\}$ is $L^p$-convergent to $f$ ). If to every $\epsilon>0$ there corresponds an integer $N$ such that $\left\|f_n-f_m\right\|_p<\epsilon$ as soon as $n>N$ and $m>N$, we call $\left\{f_n\right\}$ a Cauchy sequence in $L^p(\mu)$. These definitions are exactly as in any metric space.

It is a very important fact that $L^p(\mu)$ is a complete metric space, i.e., that every Cauchy sequence in $L^p(\mu)$ converges to an element of $L^p(\mu)$ :

### 3.11 Theorem

$L^p(\mu)$ is a complete metric space, for $1 \leq p \leq \infty$ and for every positive measure $\mu$.

Proof Assume first that $1 \leq p<\infty$. Let $\left\{f_n\right\}$ be a Cauchy sequence in $L^p(\mu)$. There is a subsequence $\left\{f_{n_i}\right\}, n_1<n_2<\cdots$, such that

$$
\left\|f_{n_{i+1}}-f_{n_i}\right\|_p<2^{-i} \quad(i=1,2,3, \ldots)
$$

Put

$$
g_k=\sum_{i=1}^k\left|f_{n_{i+1}}-f_{n_i}\right|, \quad g=\sum_{i=1}^{\infty}\left|f_{n_{i+1}}-f_{n_i}\right| .
$$

Since (1) holds, the Minkowski inequality shows that $\left\|g_k\right\|_p<1$ for $k=1$, $2,3, \ldots$. Hence an application of Fatou's lemma to $\left\{g_k^p\right\}$ gives $\|g\|_p \leq 1$. In particular, $g(x)<\infty$ a.e., so that the series

$$
f_{n_1}(x)+\sum_{i=1}^{\infty}\left(f_{n_{i+1}}(x)-f_{n_i}(x)\right)
$$

converges absolutely for almost every $x \in X$. Denote the sum of (3) by $f(x)$, for those $x$ at which (3) converges; put $f(x)=0$ on the remaining set of measure zero. Since

$$
f_{n_1}+\sum_{i=1}^{k-1}\left(f_{n_{i+1}}-f_{n_i}\right)=f_{n_k},
$$

we see that

$$
f(x)=\lim _{i \rightarrow \infty} f_{n_i}(x) \quad \text { a.e. }
$$

Having found a function $f$ which is the pointwise limit a.e. of $\left\{f_{n i}\right\}$, we now have to prove that this $f$ is the $L^p$-limit of $\left\{f_n\right\}$. Choose $\epsilon>0$. There exists an $N$ such that $\left\|f_n-f_m\right\|_p<\epsilon$ if $n>N$ and $m>N$. For every $m>N$, Fatou's lemma shows therefore that

$$
\int_X\left|f-f_m\right|^p d \mu \leq \liminf _{i \rightarrow \infty} \int_X\left|f_{n_i}-f_m\right|^p d \mu \leq \epsilon^p .
$$

We conclude from (6) that $f-f_m \in L^p(\mu)$, hence that $f \in L^p(\mu)$ [since $f=$ $\left.\left(f-f_m\right)+f_m\right]$, and finally that $\left\|f-f_m\right\|_p \rightarrow 0$ as $m \rightarrow \infty$. This completes the proof for the case $1 \leq p<\infty$.

In $L^{\infty}(\mu)$ the proof is much easier. Suppose $\left\{f_n\right\}$ is a Cauchy sequence in $L^{\infty}(\mu)$, let $A_k$ and $B_{m, n}$ be the sets where $\left|f_k(x)\right|>\left\|f_k\right\|_{\infty}$ and where $\left|f_n(x)-f_m(x)\right|>\left\|f_n-f_m\right\|_{\infty}$, and let $E$ be the union of these sets, for $k, m$, $n=1,2,3, \ldots$. Then $\mu(E)=0$, and on the complement of $E$ the sequence $\left\{f_n\right\}$ converges uniformly to a bounded function $f$. Define $f(x)=0$ for $x \in E$. Then $f \in L^{\infty}(\mu)$, and $\left\|f_n-f\right\|_{\infty} \rightarrow 0$ as $n \rightarrow \infty$.

The preceding proof contains a result which is interesting enough to be stated separately:

### 3.12 Theorem

If $1 \leq p \leq \infty$ and if $\left\{f_n\right\}$ is a Cauchy sequence in $L^p(\mu)$, with limit $f$, then $\left\{f_n\right\}$ has a subsequence which converges pointwise almost everywhere to $f(x)$.

The simple functions play an interesting role in $L^p(\mu)$ :

### 3.13 Theorem

Let $S$ be the class of all complex, measurable, simple functions on $X$ such that
$$
\mu(\{x: s(x) \neq 0\})<\infty .
$$
If $1 \leq p<\infty$, then $S$ is dense in $L^p(\mu)$.

Proof First, it is clear that $S \subset L^p(\mu)$. Suppose $f \geq 0, f \in L^p(\mu)$, and let $\left\{s_n\right\}$ be as in Theorem 1.17. Since $0 \leq s_n \leq f$, we have $s_n \in L^p(\mu)$, hence $s_n \in S$. Since $\left|f-s_n\right|^p \leq f^p$, the dominated convergence theorem shows that $\left\|f-s_n\right\|_p \rightarrow 0$ as $n \rightarrow \infty$. Thus $f$ is in the $L^p$-closure of $S$. The general case $(f$ complex) follows from this.



