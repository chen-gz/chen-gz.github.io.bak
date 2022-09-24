---
title: 3 COMPACT SETS
date: 2022-08-20
---

**2.31 Definition** By an open cover of a set $E$ in a metric space $X$ we mean a collection $\left\{G_{\alpha}\right\}$ of open subsets of $X$ such that $E \subset U_{\alpha} G_{\alpha}$.

**2.32 Definition** A subset $K$ of a metric space $X$ is said to be compact if every open cover of $K$ contains a finite subcover.

More explicitly, the requirement is that if $\left\{G_{\alpha}\right\}$ is an open cover of $K$, then there are finitely many indices $\alpha_{1}, \ldots, \alpha_{n}$ such that

$$
K \subset G_{\alpha_{1}} \cup \cdots \cup G_{\alpha_{n}} .
$$

The notion of compactness is of great importance in analysis, especially in connection with continuity (Chap. 4).

It is clear that every finite set is compact. The existence of a large class of infinite compact sets in $R^{k}$ will follow from Theorem $2.41$.

We observed earlier (in Sec. 2.29) that if $E \subset Y \subset X$, then $E$ may be open relative to $Y$ without being open relative to $X$. The property of being open thus depends on the space in which $E$ is embedded. The same is true of the property of being closed.

Compactness, however, behaves better, as we shall now see. To formulate the next theorem, let us say, temporarily, that $K$ is compact relative to $X$ if the requirements of Definition $2.32$ are met. 



**2.33 Theorem** Suppose $K \subset Y \subset X$. Then $K$ is compact relative to $X$ if and only if $K$ is compact relative to $Y$.

By virtue of this theorem we are able, in many situations, to regard compact sets as metric spaces in their own right, without paying any attention to any embedding space. In particular, although it makes little sense to talk of open spaces, or of closed spaces (every metric space $X$ is an open subset of itself, and is a closed subset of itself), it does make sense to talk of compact metric spaces.

**Proof** Suppose $K$ is compact relative to $X$, and let $\left\{V_{\alpha}\right\}$ be a collection of sets, open relative to $Y$, such that $K \subset \bigcup_{\alpha} V_{\alpha}$. By theorem $2.30$, there are sets $G_{\alpha}$, open relative to $X$, such that $V_{\alpha}=\mathrm{Y} \cap G_{\alpha}$, for all $\alpha$; and since $K$ is compact relative to $X$, we have
$$
K \subset G_{\alpha_{1}} \cup \cdots \cup G_{\alpha_{n}}
$$

for some choice of finitely many indices $\alpha_{1}, \ldots, \alpha_{n}$. Since $K \subset Y,(22)$ implies

$$
K \subset V_{\alpha_{1}} \cup \cdots \cup V_{\alpha_{n}} .
$$

This proves that $K$ is compact relative to $Y$.

Conversely, suppose $K$ is compact relative to $Y$, let $\left\{G_{\alpha}\right\}$ be a collection of open subsets of $X$ which covers $K$, and put $V_{\alpha}=Y \cap G_{\alpha}$. Then (23) will hold for some choice of $\alpha_{1}, \ldots, \alpha_{n}$; and since $V_{\alpha} \subset G_{\alpha}$, (23) implies (22).

This completes the proof.

**2.34 Theorem** Compact subsets of metric spaces are closed.

Proof Let $K$ be a compact subset of a metric space $X$. We shall prove that the complement of $K$ is an open subset of $X$.

Suppose $p \in X, p \notin K$. If $q \in K$, let $V_{q}$ and $W_{q}$ be neighborhoods of $p$ and $q$, respectively, of radius less than $\frac{1}{2} d(p, q)$ [see Definition $2.18(a)$ ]. Since $K$ is compact, there are finitely many points $q_{1}, \ldots, q_{n}$ in $K$ such that

$$
K \subset W_{q_{1}} \cup \cdots \cup W_{q_{n}}=W .
$$

If $V=V_{q_{1}} \cap \cdots \cap V_{q_{n}}$, then $V$ is a neighborhood of $p$ which does not intersect $W$. Hence $V \subset K^{c}$, so that $p$ is an interior point of $K^{c}$. The theorem follows.

**2.35 Theorem** Closed subsets of compact sets are compact.

Proof Suppose $F \subset K \subset X, F$ is closed (relative to $X$ ), and $K$ is compact. Let $\left\{V_{\alpha}\right\}$ be an open cover of $F$. If $F^{c}$ is adjoined to $\left\{V_{\alpha}\right\}$, we obtain an open cover $\Omega$ of $K$. Since $K$ is compact, there is a finite subcollection $\Phi$ of $\Omega$ which covers $K$, and hence $F$. If $F^{c}$ is a member of $\Phi$, we may remove it from $\Phi$ and still retain an open cover of $F$. We have thus shown that a finite subcollection of $\left\{V_{\alpha}\right\}$ covers $F$.

Corollary If $F$ is closed and $K$ is compact, then $F \cap K$ is compact.

Proof Theorems $2.24(b)$ and $2.34$ show that $F \cap K$ is closed; since $F \cap K \subset K$, Theorem $2.35$ shows that $F \cap K$ is compact.

**2.36 Theorem** If $\left\{K_{\alpha}\right\}$ is a collection of compact subsets of a metric space $X$ such that the intersection of every finite subcollection of $\left\{K_{\alpha}\right\}$ is nonempty, then $\cap K_{\alpha}$ is nonempty.

Proof Fix a member $K_{1}$ of $\left\{K_{\alpha}\right\}$ and put $G_{\alpha}=K_{\alpha}^{c}$. Assume that no point of $K_{1}$ belongs to every $K_{\alpha}$. Then the sets $G_{\alpha}$ form an open cover of $K_{1}$; and since $K_{1}$ is compact, there are finitely many indices $\alpha_{1}, \ldots, \alpha_{n}$ such that $K_{1} \subset G_{a_{1}} \cup \cdots \cup G_{a_{n}}$. But this means that

$$
K_{1} \cap K_{\alpha_{1}} \cap \cdots \cap K_{\alpha_{n}}
$$

is empty, in contradiction to our hypothesis.

**Corollary** If $\left\{K_{n}\right\}$ is a sequence of nonempty compact sets such that $K_{n} \supset K_{n+1}$ $(n=1,2,3, \ldots)$, then $\bigcap_{1}^{\infty} K_{n}$ is not empty.

**2.37 Theorem** If $E$ is an infinite subset of a compact set $K$, then $E$ has a limit point in $K$.

Proof If no point of $K$ were a limit point of $E$, then each $q \in K$ would have a neighborhood $V_{q}$ which contains at most one point of $E$ (namely, $q$, if $q \in E$ ). It is clear that no finite subcollection of $\left\{V_{q}\right\}$ can cover $E$; and the same is true of $K$, since $E \subset K$. This contradicts the compactness of $K$.

**2.38 Theorem** If $\left\{I_{n}\right\}$ is a sequence of intervals in $R^{1}$, such that $I_{n} \supset I_{n+1}$ $(n=1,2,3, \ldots)$, then $\bigcap_{1}^{\infty} I_{n}$ is not empty.

Proof If $I_{n}=\left[a_{n}, b_{n}\right]$, let $E$ be the set of all $a_{n}$. Then $E$ is nonempty and bounded above (by $b_{1}$ ). Let $x$ be the sup of $E$. If $m$ and $n$ are positive integers, then

$$
a_{n} \leq a_{m+n} \leq b_{m+n} \leq b_{m},
$$

so that $x \leq b_{m}$ for each $m$. Since it is obvious that $a_{m} \leq x$, we see that $x \in I_{m}$ for $m=1,2,3, \ldots$ 

**2.39 Theorem** Let $k$ be a positive integer. If $\left\{I_{n}\right\}$ is a sequence of $k$-cells such that $I_{n} \supset I_{n+1}(n=1,2,3, \ldots)$, then $\bigcap_{1}^{\infty} I_{n}$ is not empty.

Proof Let $I_{n}$ consist of all points $\mathrm{x}=\left(x_{1}, \ldots, x_{k}\right)$ such that

$$
a_{n, j} \leq x_{j} \leq b_{n, j} \quad(1 \leq j \leq k ; n=1,2,3, \ldots) \text {, }
$$

and put $I_{n, j}=\left[a_{n, j}, b_{n, j}\right]$. For each $j$, the sequence $\left\{I_{n, j}\right\}$ satisfies the hypotheses of Theorem $2.38$. Hence there are real numbers $x_{j}^{*}(1 \leq j \leq k)$ such that

$$
a_{n, j} \leq x_{j}^{*} \leq b_{n, j} \quad(1 \leq j \leq k ; n=1,2,3, \ldots) \text {. }
$$

Setting $\mathbf{x}^{*}=\left(x_{1}^{*}, \ldots, x_{k}^{*}\right)$, we see that $\mathrm{x}^{*} \in I_{n}$ for $n=1,2,3, \ldots$ The theorem follows.

**2.40 Theorem** Every $k$-cell is compact.

Proof Let $I$ be a $k$-cell, consisting of all points $\mathrm{x}=\left(x_{1}, \ldots, x_{k}\right)$ such that $a_{j} \leq x_{j} \leq b_{j}(1 \leq j \leq k)$. Put

$$
\delta=\left\{\sum_{1}^{k}\left(b_{j}-a_{j}\right)^{2}\right\}^{1 / 2} .
$$

Then $|\mathbf{x}-\mathbf{y}| \leq \delta$, if $\mathbf{x} \in I, \mathbf{y} \in I$.

Suppose, to get a contradiction, that there exists an open cover $\left\{G_{\alpha}\right\}$ of $I$ which contains no finite subcover of $I$. Put $c_{j}=\left(a_{j}+b_{j}\right) / 2$. The intervals $\left[a_{j}, c_{j}\right]$ and $\left[c_{j}, b_{j}\right]$ then determine $2^{k} k$-cells $Q_{i}$ whose union is $I$. At least one of these sets $Q_{i}$, call it $I_{1}$, cannot be covered by any finite subcollection of $\left\{G_{\alpha}\right\}$ (otherwise $I$ could be so covered). We next subdivide $I_{1}$ and continue the process. We obtain a sequence $\left\{I_{n}\right\}$ with the following properties:

(a) $I \supset I_{1} \supset I_{2} \supset I_{3} \supset \cdots$;

(b) $I_{n}$ is not covered by any finite subcollection of $\left\{G_{\alpha}\right\}$;

(c) if $\mathbf{x} \in I_{n}$ and $\mathbf{y} \in I_{n}$, then $|\mathbf{x}-\mathbf{y}| \leq 2^{-n} \delta$.

By $(a)$ and Theorem $2.39$, there is a point $\mathrm{x}^{*}$ which lies in every $I_{n}$. For some $\alpha, \mathbf{x}^{*} \in G_{\alpha}$. Since $G_{\alpha}$ is open, there exists $r>0$ such that $\left|\mathbf{y}-\mathbf{x}^{*}\right|<r$ implies that $\mathbf{y} \in G_{\alpha}$. If $n$ is so large that $2^{-n} \delta<r$ (there is such an $n$, for otherwise $2^{n} \leq \delta / r$ for all positive integers $n$, which is absurd since $R$ is archimedean), then (c) implies that $I_{n} \subset G_{\alpha}$, which contradicts $(b)$.

This completes the proof.

The equivalence of $(a)$ and $(b)$ in the next theorem is known as the HeineBorel theorem. 

**2.41 Theorem** If a set $E$ in $R^{k}$ has one of the following three properties, then it has the other two:

(a) E is closed and bounded.

(b) E is compact.

(c) Every infinite subset of $E$ has a limit point in $E$.

**Proof** If (a) holds, then $E \subset I$ for some $k$-cell $I$, and $(b)$ follows from Theorems $2.40$ and 2.35. Theorem $2.37$ shows that $(b)$ implies $(c)$. It remains to be shown that $(c)$ implies $(a)$.

If $E$ is not bounded, then $E$ contains points $\mathbf{x}_{n}$ with

$$
\left|\mathbf{x}_{n}\right|>n \quad(n=1,2,3, \ldots) \text {. }
$$

The set $S$ consisting of these points $\mathbf{x}_{n}$ is infinite and clearly has no limit point in $R^{k}$, hence has none in $E$. Thus (c) implies that $E$ is bounded.

If $E$ is not closed, then there is a point $\mathbf{x}_{0} \in R^{k}$ which is a limit point of $E$ but not a point of $E$. For $n=1,2,3, \ldots$, there are points $\mathbf{x}_{n} \in E$ such that $\left|\mathbf{x}_{n}-\mathbf{x}_{0}\right|<1 / n$. Let $S$ be the set of these points $\mathbf{x}_{n}$. Then $S$ is infinite (otherwise $\left|\mathbf{x}_{n}-\mathbf{x}_{0}\right|$ would have a constant positive value, for infinitely many $n$ ), $S$ has $\mathbf{x}_{0}$ as a limit point, and $S$ has no other limit point in $R^{k}$. For if $\mathbf{y} \in R^{k}, \mathbf{y} \neq \mathbf{x}_{0}$, then

$$
\begin{aligned}
\left|\mathbf{x}_{n}-\mathbf{y}\right| & \geq\left|\mathbf{x}_{0}-\mathbf{y}\right|-\left|\mathbf{x}_{n}-\mathbf{x}_{0}\right| \\
& \geq\left|\mathbf{x}_{0}-\mathbf{y}\right|-\frac{1}{n} \geq \frac{1}{2}\left|\mathbf{x}_{0}-\mathbf{y}\right|
\end{aligned}
$$

for all but finitely many $n$; this shows that $y$ is not a limit point of $S$ (Theorem 2.20).

Thus $S$ has no limit point in $E$; hence $E$ must be closed if $(c)$ holds.

We should remark, at this point, that $(b)$ and $(c)$ are equivalent in any metric space (Exercise 26) but that $(a)$ does not, in general, imply $(b)$ and $(c)$. Examples are furnished by Exercise 16 and by the space $\mathscr{L}^{2}$, which is discussed in Chap. $11 .$

**2.42 Theorem** (Weierstrass) Every bounded infinite subset of $R^{k}$ has a limit point in $R^{k}$.

Proof Being bounded, the set $E$ in question is a subset of a $k$-cell $I \subset R^{k}$. By Theorem $2.40, I$ is compact, and so $E$ has a limit point in $I$, by Theorem 2.37. 

