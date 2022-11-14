---
title: Orthonormal Sets
date: 2022-10-31
---

### 4.13 Definitions

If $V$ is a vector space, if $x_1, \ldots, x_k \in V$, and if $c_1, \ldots, c_k$ are scalars, then $c_1 x_1+\cdots+c_k x_k$ is called a *linear combination* of $x_1, \ldots, x_k$. The set $\left\{x_1, \ldots, x_k\right\}$ is called *independent* if $c_1 x_1+\cdots+c_k x_k=0$ implies that $c_1=\cdots=c_k=0$. A set $S \subset V$ is independent if every finite subset of $S$ is independent. The set $[S]$ of all linear combinations of all finite subsets of $S$ (also called the set of all *finite linear combinations* of members of $S$ ) is clearly a vector space; $[S]$ is the smallest subspace of $V$ which contains $S ;[S]$ is called the *span* of $S$, or the space spanned by $S$.

A set of vectors $u_\alpha$ in a Hilbert space $H$, where $\alpha$ runs through some index set $A$, is called *orthonormal* if it satisfies the orthogonality relations $\left(u_\alpha, u_\beta\right)=0$ for all $\alpha \neq \beta, \alpha \in A$, and $\beta \in A$, and if it is normalized so that $\left\|u_\alpha\right\|=1$ for each $\alpha \in A$. In other words, $\left\{u_\alpha\right\}$ is orthonormal provided that

$$
\left(u_\alpha, u_\beta\right)= \begin{cases}1 & \text { if } \alpha=\beta, \\ 0 & \text { if } \alpha \neq \beta .\end{cases}
$$

If $\left\{u_\alpha: \alpha \in A\right\}$ is orthonormal, we associate with each $x \in H$ a complex function $\hat{x}$ on the index set $A$, defined by

$$
\hat{x}(\alpha)=\left(x, u_\alpha\right) \quad(\alpha \in A) .
$$

One sometimes calls the numbers $\hat{x}(\alpha)$ the Fourier coefficients of $x$, relative to the set $\left\{u_\alpha\right\}$.

We begin with some simple facts about finite orthonormal sets.

### 4.14 Theorem

Suppose that $\left\{u_\alpha: \alpha \in A\right\}$ is an orthonormal set in $H$ and that $F$ is a finite subset of $A$. Let $M_F$ be the span of $\left\{u_\alpha: \alpha \in F\right\}$.

(a) If $\varphi$ is a complex function on $A$ that is 0 outside $F$, then there is a vector $y \in M_F$, namely

$$
y=\sum_{\alpha \in F} \varphi(\alpha) u_\alpha
$$

that has $\hat{y}(\alpha)=\varphi(\alpha)$ for every $\alpha \in A$. Also,

$$
\|y\|^2=\sum_{\alpha \in F}|\varphi(\alpha)|^2 .
$$

(b) If $x \in H$ and

$$
s_F(x)=\sum_{\alpha \in F} \hat{x}(\alpha) u_\alpha
$$

then

$$
\left\|x-s_F(x)\right\|<\|x-s\|
$$

for every $s \in M_F$, except for $s=s_F(x)$, and

$$
\sum_{\alpha \in F}|\hat{x}(\alpha)|^2 \leq\|x\|^2
$$

Proof Part $(a)$ is an immediate consequence of the orthogonality relations $4.13(1)$.

In the proof of $(b)$, let us write $s_F$ in place of $s_F(x)$, and note that $\hat{s}_F(\alpha)=$ $\hat{x}(\alpha)$ for all $\alpha \in F$. This says that $\left(x-s_F\right) \perp u_\alpha$ if $\alpha \in F$, hence $\left(x-s_F\right) \perp$ $\left(s_F-s\right)$ for every $s \in M_F$, and therefore

$$
\|x-s\|^2=\left\|\left(x-s_F\right)+\left(s_F-s\right)\right\|^2=\left\|x-s_F\right\|^2+\left\|s_F-s\right\|^2 .
$$

This gives (4). With $s=0$, (6) gives $\left\|s_F\right\|^2 \leq\|x\|^2$, which is the same as (5), because of (2).

The inequality (4) states that the "partial sum" $s_F(x)$ of the "Fourier series" $\sum \hat{x}(\alpha) u_\alpha$ of $x$ is the unique best approximation to $x$ in $M_F$, relative to the metric defined by the Hilbert space norm.

### 4.15

We want to drop the finiteness condition that appears in Theorem $4.14$ (thus obtaining Theorems $4.17$ and 4.18) without even restricting ourselves to sets that are necessarily countable. For this reason it seems advisable to clarify the meaning of the symbol $\sum_{\alpha \in 4} \varphi(\alpha)$ when $\alpha$ ranges over an arbitrary set $A$.

Assume $0 \leq \varphi(\alpha) \leq \infty$ for each $\alpha \in A$. Then

$$
\sum_{\alpha \in A} \varphi(\alpha)
$$

denotes the supremum of the set of all finite sums $\varphi\left(\alpha_1\right)+\cdots+\varphi\left(\alpha_n\right)$, where $\alpha_1, \ldots, \alpha_n$ are distinct members of $A$.

A moment's consideration will show that the sum (1) is thus precisely the Lebesgue integral of $\varphi$ relative to the counting measure $\mu$ on $A$.

In this context one usually writes $\ell^p(A)$ for $L^p(\mu)$. A complex function $\varphi$ with domain $A$ is thus in $\ell^2(A)$ if and only if

$$
\sum_{\alpha \in A}|\varphi(\alpha)|^2<\infty .
$$

Example 4.5(b) shows that $\ell^2(A)$ is a Hilbert space, with inner product

$$
(\varphi, \psi)=\sum_{\alpha \in A} \varphi(\alpha) \overline{\psi(\alpha)} .
$$

Here, again, the sum over $A$ stands for the integral of $\varphi \bar{\psi}$ with respect to the counting measure; note that $\varphi \bar{\psi} \in \ell^1(A)$ because $\varphi$ and $\psi$ are in $\ell^2(A)$.

Theorem $3.13$ shows that the functions $\varphi$ that are zero except on some finite subset of $A$ are dense in $\ell^2(A)$.

Moreover, if $\varphi \in \ell^2(A)$, then $\{\alpha \in A: \varphi(\alpha) \neq 0\}$ is at most countable. For if $A_n$ is the set of all $\alpha$ where $|\varphi(\alpha)|>1 / n$, then the number of elements of $A$ is at most

$$
\sum_{\alpha \in A_n}|n \varphi(\alpha)|^2 \leq n^2 \sum_{\alpha \in A}|\varphi(\alpha)|^2 .
$$

Each $A_n(n=1,2,3, \ldots)$ is thus a finite set.
The following lemma about complete metric spaces will make it easy to pass from finite orthonormal sets to infinite ones.

### 4.16 Lemma Suppose that

(a) $X$ and $Y$ are metric spaces, $X$ is complete,
(b) $f: X \rightarrow Y$ is continuous,
(c) $X$ has a dense subset $X_0$ on which $f$ is an isometry, and
(d) $f\left(X_0\right)$ is dense in $Y$.
Then $f$ is an isometry of $X$ onto $Y$.
The most important part of the conclusion is that $f$ maps $X$ onto all of $Y$.
Recall that an isometry is simply a mapping that preserves distances. Thus, by assumption, the distance between $f\left(x_1\right)$ and $f\left(x_2\right)$ in $Y$ is equal to that between $x_1$ and $x_2$ in $X$, for all points $x_1, x_2$ in $X_0$.

Proof The fact that $f$ is an isometry on $X$ is an immediate consequence of the continuity of $f$, since $X_0$ is dense in $X$.

Pick $y \in Y$. Since $f\left(X_0\right)$ is dense in $Y$, there is a sequence $\left\{x_n\right\}$ in $X_0$ such that $f\left(x_n\right) \rightarrow y$ as $n \rightarrow \infty$. Thus $\left\{f\left(x_n\right)\right\}$ is a Cauchy sequence in $Y$. Since $f$ is an isometry on $X_0$, it follows that $\left\{x_n\right\}$ is also a Cauchy sequence. The completeness of $X$ implies now that $\left\{x_n\right\}$ converges to some $x \in X$, and the continuity of $f$ shows that $f(x)=\lim f\left(x_n\right)=y$.

### 4.17 Theorem

Let $\left\{u_\alpha: \alpha \in A\right\}$ be an orthonormal set in $H$, and let $P$ be the space of all finite linear combinations of the vectors $u_\alpha$.

The inequality

$$
\sum_{\alpha \in A}|\hat{x}(\alpha)|^2 \leq\|x\|^2
$$

holds then for every $x \in H$, and $x \rightarrow \hat{x}$ is a continuous linear mapping of $H$ onto $\ell^2(A)$ whose restriction to the closure $\bar{P}$ of $P$ is an isometry of $\bar{P}$ onto $\ell^2(A)$.

**Proof** Since the inequality $4.14(5)$ holds for every finite set $F \subset A$, we have (1), the so-called Bessel inequality.

Define $f$ on $H$ by $f(x)=\hat{x}$. Then (1) shows explicitly that $f$ maps $H$ into $\ell^2(A)$. The linearity of $f$ is obvious. If we apply (1) to $x-y$ we see that

$$
\|f(y)-f(x)\|_2=\|\hat{y}-\hat{x}\|_2 \leq\|y-x\| .
$$

Thus $f$ is continuous. Theorem 4.14(a) shows that $f$ is an isometry of $P$ onto the dense subspace of $\ell^2(A)$ consisting of those functions whose support is a finite set $F \subset A$. The theorem follows therefore from Lemma 4.16, applied with $X=\bar{P}, X_0=P, Y=\ell^2(A)$; note that $\bar{P}$, being a closed subset of the complete metric spate $H$, is itself complete.

The fact that the mapping $x \rightarrow \hat{x}$ carries $H$ onto $\ell^2(A)$ is known as the RieszFischer theorem.

### 4.18 Theorem

Let $\left\{u_\alpha: \alpha \in A\right\}$ be an orthonormal set in $H$. Each of the following four conditions on $\left\{u_\alpha\right\}$ implies the other three:

(i) $\left\{u_\alpha\right\}$ is a maximal orthonormal set in $H$.
(ii) The set $P$ of all finite linear combinations of members of $\left\{u_\alpha\right\}$ is dense in $H$.
(iii) The equality

$$
\sum_{\alpha \in A}|\hat{x}(\alpha)|^2=\|x\|^2
$$

holds for every $x \in H$.
(iv) The equality

$$
\sum_{\alpha \in A} \hat{x}(\alpha) \overline{\hat{y}(\alpha)}=(x, y)
$$

holds for all $x \in H$ and $y \in H$.
The last formula is known as Parseval's identity. Observe that $\hat{x}$ and $\hat{y}$ are in $\ell^2(A)$, hence $\hat{x} \hat{y}$ is in $\ell^1(A)$, so that the sum in (iv) is well defined. Of course, (iii) is the special case $x=y$ of (iv).

Maximal orthonormal sets are often called *complete orthoriormal* sets or *orthonormal bases*.

**Proof** To say that $\left\{u_\alpha\right\}$ is maximal means simply that no vector of $H$ can be adjoined to $\left\{u_\alpha\right\}$ in such a way that the resulting set is still orthonormal. This happens precisely when there is no $x \neq 0$ in $H$ that is orthogonal to every $u_\alpha$.

We shall prove that (i) $\rightarrow$ (ii) $\rightarrow$ (iii) $\rightarrow$ (iv) $\rightarrow$ (i).

If $P$ is not dense in $H$, then its closure $\bar{P}$ is not all of $H$, and the corollary to Theorem $4.11$ implies that $P^{\perp}$ contains a nonzero vector. Thus $\left\{u_\alpha\right\}$ is not maximal when $P$ is not dense, and (i) implies (ii).

If (ii) holds, so does (iii), by Theorem 4.17.

The implication (iii) $\rightarrow$ (iv) follows from the easily proved Hilbert space identity (sometimes called the "polarization identity")

$$
4(x, y)=\|x+y\|^2-\|x-y\|^2+i\|x+i y\|^2-i\|x-i y\|^2
$$

which expresses the inner product $(x, y)$ in terms of norms and which is equally valid with $\hat{x}, \hat{y}$ in place of $x, y$, simply because $\ell^2(A)$ is also a Hilbert space. (See Exercise 19 for other identities of this type.) Note that the sums in (iii) and (iv) are $\|\hat{x}\|_2^2$ and $(\hat{x}, \hat{y})$, respectively.

Finally, if (i) is false, there exists $u \neq 0$ in $H$ so that $\left(u, u_\alpha\right)=0$ for all $\alpha \in A$. If $x=y=u$, then $(x, y)=\|u\|^2>0$ but $\hat{x}(\alpha)=0$ for all $\alpha \in A$, hence (iv) fails. Thus (iv) implies (i), and the proof is complete.

### 4.19 Isomorphisms

Speaking informally, two algebraic systems of the same nature are said to be isomorphic if there is a one-to-one mapping of one onto the other which preserves all relevant properties. For instance, we may ask whether two groups are isomorphic or whether two fields are isomorphic. Two vector spaces are isomorphic if there is a one-to-one linear mapping of one onto the other. The linear mappings are the ones which preserve the relevant concepts in a vector space, namely, addition and scalar multiplication.

In the same way, two Hilbert spaces $H_1$ and $H_2$ are isomorphic if there is a one-to-one linear mapping $\Lambda$ of $H_1$ onto $H_2$ which also preserves inner products: $(\Lambda x, \Lambda y)=(x, y)$ for all $x$ and $y \in H_1$. Such a $\Lambda$ is an isomorphism (or, more specifically, a Hilbert space isomorphism) of $H_1$ onto $H_2$. Using this terminology, Theorems $4.17$ and $4.18$ yield the following statement:

*If $\left\{u_\alpha: \alpha \in A\right\}$ is a maximal orthonormal set in a Hilbert space $H$, and if $\hat{x}(\alpha)=$ $\left(x, u_\alpha\right)$, then the mapping $x \rightarrow \hat{x}$ is a Hilbert space isomorphism of $H$ onto $\ell^2(A)$.*

One can prove (we shall omit this) that $\ell^2(A)$ and $\ell^2(B)$ are isomorphic if and only if the sets $A$ and $B$ have the same cardinal number. But we shall prove that every nontrivial Hilbert space (this means that the space does not consist of 0 alone) is isomorphic to some $\ell^2(A)$, by proving that every such space contains a maximal orthonormal set (Theorem 4.22). The proof will depend on a property of partially ordered sets which is equivalent to the axiom of choice.

### 4.20 Partially Ordered Sets 

A set $\mathscr{P}$ is said to be partially ordered by a binary relation $\leq$ if

(a) $a \leq b$ and $b \leq c$ implies $a \leq c$.
(b) $a \leq a$ for every $\alpha \in \mathscr{P}$.
(c) $a \leq b$ and $b \leq a$ implies $a=b$.

A subset $\mathscr{2}$ of a partially ordered set $\mathscr{P}$ is said to be totally ordered (or linearly ordered) if every pair $a, b \in \mathscr{2}$ satisfies either $\alpha \leq b$ or $b \leq a$.

For example, every collection of subsets of a given set is partially ordered by the inclusion relation $\subset$.

To give a more specific example, let $\mathscr{P}$ be the collection of all open subsets of the plane, partially ordered by set inclusion, and let $\mathscr{2}$ be the collection of all open circular discs with center at the origin. Then $\mathscr{Q} \subset \mathscr{P}, \mathscr{Q}$ is totally ordered by $\subset$, and $\mathscr{2}$ is a maximal totally ordered subset of $\mathscr{P}$. This means that if any member of $\mathscr{P}$ not in $\mathscr{Q}$ is adjoined to $\mathscr{2}$, the resulting collection of sets is no longer totally ordered by $\subset$.

### 4.21 The Hausdorff Maximality Theorem

Every nonempty partially ordered set contains a maximal totally ordered subset.

This is a consequence of the axiom of choice and is, in fact, equivalent to it ; another (very similar) form of it is known as Zorn's lemma. We give the proof in the Appendix.

If now $H$ is a nontrivial Hilbert space, then there exists a $u \in H$ with $\|u\|=1$, so that there is a nonempty orthonormal set in $H$. The existence of a maximal orthonormal set is therefore a consequence of the following theorem:

### 4.22 Theorem

Every orthonormal set $B$ in a Hilbert space $H$ is contained in a maximal orthonormal set in $H$.

Proof Let $\mathscr{P}$ be the class of all orthonormal sets in $H$ which contain the given set $B$. Partially order $\mathscr{P}$ by set inclusion. Since $B \in \mathscr{P}, \mathscr{P} \neq \varnothing$. Hence $\mathscr{P}$ contains a maximal totally ordered class $\Omega$. Let $S$ be the union of all members of $\Omega$. It is clear that $B \subset S$. We claim that $S$ is a maximal orthonormal set:

If $u_1$ and $u_2 \in S$, then $u_1 \in A_1$ and $u_2 \in A_2$ for some $A_1$ and $A_2 \in \Omega$. Since $\Omega$ is total ordered, $A_1 \subset A_2$ (or $A_2 \subset A_1$ ), so that $u_1 \in A_2$ and $u_2 \in A_2$. Since $A_2$ is orthonormal, $\left(u_1, u_2\right)=0$ if $u_1 \neq u_2,\left(u_1, u_2\right)=1$ if $u_1=u_2$. Thus $S$ is an orthonormal set.

Suppose $S$ is not maximal. Then $S$ is a proper subset of an orthonormal set $S^*$. Clearly, $S^* \notin \Omega$, and $S^*$ contains every member of $\Omega$. Hence we may adjoin $S^*$ to $\Omega$ and still have a total order. This contradicts the maximality of $\Omega$.
