---
title: COMPACT SETS
date: 2022-08-20
---


2.31 Definition By an open cover of a set $E$ in a metric space $X$ we mean a collection $\left\{G_{\alpha}\right\}$ of open subsets of $X$ such that $E \subset U_{\alpha} G_{\alpha}$.

2.32 Definition A subset $K$ of a metric space $X$ is said to be compact if every open cover of $K$ contains a finite subcover.

More explicitly, the requirement is that if $\left\{G_{\alpha}\right\}$ is an open cover of $K$, then there are finitely many indices $\alpha_{1}, \ldots, \alpha_{n}$ such that

$$
K \subset G_{\alpha_{1}} \cup \cdots \cup G_{\alpha_{n}} .
$$

The notion of compactness is of great importance in analysis, especially in connection with continuity (Chap. 4).

It is clear that every finite set is compact. The existence of a large class of infinite compact sets in $R^{k}$ will follow from Theorem $2.41$.

We observed earlier (in Sec. 2.29) that if $E \subset Y \subset X$, then $E$ may be open relative to $Y$ without being open relative to $X$. The property of being open thus depends on the space in which $E$ is embedded. The same is true of the property of being closed.

Compactness, however, behaves better, as we shall now see. To formulate the next theorem, let us say, temporarily, that $K$ is compact relative to $X$ if the requirements of Definition $2.32$ are met. 2.33 Theorem Suppose $K \subset Y \subset X$. Then $K$ is compact relative to $X$ if and only if $K$ is compact relative to $Y$.

By virtue of this theorem we are able, in many situations, to regard compact sets as metric spaces in their own right, without paying any attention to any embedding space. In particular, although it makes little sense to talk of open spaces, or of closed spaces (every metric space $X$ is an open subset of itself, and is a closed subset of itself), it does make sense to talk of compact metric spaces.

Proof Suppose $K$ is compact relative to $X$, and let $\left\{V_{\alpha}\right\}$ be a collection of sets, open relative to $Y$, such that $K \subset \bigcup_{\alpha} V_{\alpha}$. By theorem $2.30$, there are sets $G_{\alpha}$, open relative to $X$, such that $V_{\alpha}=\mathrm{Y} \cap G_{\alpha}$, for all $\alpha$; and since $K$ is compact relative to $X$, we have

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

2.34 Theorem Compact subsets of metric spaces are closed.

Proof Let $K$ be a compact subset of a metric space $X$. We shall prove that the complement of $K$ is an open subset of $X$.

Suppose $p \in X, p \notin K$. If $q \in K$, let $V_{q}$ and $W_{q}$ be neighborhoods of $p$ and $q$, respectively, of radius less than $\frac{1}{2} d(p, q)$ [see Definition $2.18(a)$ ]. Since $K$ is compact, there are finitely many points $q_{1}, \ldots, q_{n}$ in $K$ such that

$$
K \subset W_{q_{1}} \cup \cdots \cup W_{q_{n}}=W .
$$

If $V=V_{q_{1}} \cap \cdots \cap V_{q_{n}}$, then $V$ is a neighborhood of $p$ which does not intersect $W$. Hence $V \subset K^{c}$, so that $p$ is an interior point of $K^{c}$. The theorem follows.

2.35 Theorem Closed subsets of compact sets are compact.

Proof Suppose $F \subset K \subset X, F$ is closed (relative to $X$ ), and $K$ is compact. Let $\left\{V_{\alpha}\right\}$ be an open cover of $F$. If $F^{c}$ is adjoined to $\left\{V_{\alpha}\right\}$, we obtain an open cover $\Omega$ of $K$. Since $K$ is compact, there is a finite subcollection $\Phi$ of $\Omega$ which covers $K$, and hence $F$. If $F^{c}$ is a member of $\Phi$, we may remove it from $\Phi$ and still retain an open cover of $F$. We have thus shown that a finite subcollection of $\left\{V_{\alpha}\right\}$ covers $F$.

Corollary If $F$ is closed and $K$ is compact, then $F \cap K$ is compact.

Proof Theorems $2.24(b)$ and $2.34$ show that $F \cap K$ is closed; since $F \cap K \subset K$, Theorem $2.35$ shows that $F \cap K$ is compact.

2.36 Theorem If $\left\{K_{\alpha}\right\}$ is a collection of compact subsets of a metric space $X$ such that the intersection of every finite subcollection of $\left\{K_{\alpha}\right\}$ is nonempty, then $\cap K_{\alpha}$ is nonempty.

Proof Fix a member $K_{1}$ of $\left\{K_{\alpha}\right\}$ and put $G_{\alpha}=K_{\alpha}^{c}$. Assume that no point of $K_{1}$ belongs to every $K_{\alpha}$. Then the sets $G_{\alpha}$ form an open cover of $K_{1}$; and since $K_{1}$ is compact, there are finitely many indices $\alpha_{1}, \ldots, \alpha_{n}$ such that $K_{1} \subset G_{a_{1}} \cup \cdots \cup G_{a_{n}}$. But this means that

$$
K_{1} \cap K_{\alpha_{1}} \cap \cdots \cap K_{\alpha_{n}}
$$

is empty, in contradiction to our hypothesis.

Corollary If $\left\{K_{n}\right\}$ is a sequence of nonempty compact sets such that $K_{n} \supset K_{n+1}$ $(n=1,2,3, \ldots)$, then $\bigcap_{1}^{\infty} K_{n}$ is not empty.

2.37 Theorem If $E$ is an infinite subset of a compact set $K$, then $E$ has a limit point in $K$.

Proof If no point of $K$ were a limit point of $E$, then each $q \in K$ would have a neighborhood $V_{q}$ which contains at most one point of $E$ (namely, $q$, if $q \in E$ ). It is clear that no finite subcollection of $\left\{V_{q}\right\}$ can cover $E$; and the same is true of $K$, since $E \subset K$. This contradicts the compactness of $K$.

2.38 Theorem If $\left\{I_{n}\right\}$ is a sequence of intervals in $R^{1}$, such that $I_{n} \supset I_{n+1}$ $(n=1,2,3, \ldots)$, then $\bigcap_{1}^{\infty} I_{n}$ is not empty.

Proof If $I_{n}=\left[a_{n}, b_{n}\right]$, let $E$ be the set of all $a_{n}$. Then $E$ is nonempty and bounded above (by $b_{1}$ ). Let $x$ be the sup of $E$. If $m$ and $n$ are positive integers, then

$$
a_{n} \leq a_{m+n} \leq b_{m+n} \leq b_{m},
$$

so that $x \leq b_{m}$ for each $m$. Since it is obvious that $a_{m} \leq x$, we see that $x \in I_{m}$ for $m=1,2,3, \ldots$ 2.39 Theorem Let $k$ be a positive integer. If $\left\{I_{n}\right\}$ is a sequence of $k$-cells such that $I_{n} \supset I_{n+1}(n=1,2,3, \ldots)$, then $\bigcap_{1}^{\infty} I_{n}$ is not empty.

Proof Let $I_{n}$ consist of all points $\mathrm{x}=\left(x_{1}, \ldots, x_{k}\right)$ such that

$$
a_{n, j} \leq x_{j} \leq b_{n, j} \quad(1 \leq j \leq k ; n=1,2,3, \ldots) \text {, }
$$

and put $I_{n, j}=\left[a_{n, j}, b_{n, j}\right]$. For each $j$, the sequence $\left\{I_{n, j}\right\}$ satisfies the hypotheses of Theorem $2.38$. Hence there are real numbers $x_{j}^{*}(1 \leq j \leq k)$ such that

$$
a_{n, j} \leq x_{j}^{*} \leq b_{n, j} \quad(1 \leq j \leq k ; n=1,2,3, \ldots) \text {. }
$$

Setting $\mathbf{x}^{*}=\left(x_{1}^{*}, \ldots, x_{k}^{*}\right)$, we see that $\mathrm{x}^{*} \in I_{n}$ for $n=1,2,3, \ldots$ The theorem follows.

\subsection{Theorem Every $k$-cell is compact.}

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

The equivalence of $(a)$ and $(b)$ in the next theorem is known as the HeineBorel theorem. 2.41 Theorem If a set $E$ in $R^{k}$ has one of the following three properties, then it has the other two:

(a) E is closed and bounded.

(b) E is compact.

(c) Every infinite subset of $E$ has a limit point in $E$.

Proof If (a) holds, then $E \subset I$ for some $k$-cell $I$, and $(b)$ follows from Theorems $2.40$ and 2.35. Theorem $2.37$ shows that $(b)$ implies $(c)$. It remains to be shown that $(c)$ implies $(a)$.

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

2.42 Theorem (Weierstrass) Every bounded infinite subset of $R^{k}$ has a limit point in $R^{k}$.

Proof Being bounded, the set $E$ in question is a subset of a $k$-cell $I \subset R^{k}$. By Theorem $2.40, I$ is compact, and so $E$ has a limit point in $I$, by Theorem 2.37. 

\section{PERFECT SETS}

2.43 Theorem Let $P$ be a nonempty perfect set in $R^{k}$. Then $P$ is uncountable.

Proof Since $P$ has limit points, $P$ must be infinite. Suppose $P$ is countable, and denote the points of $P$ by $\mathbf{x}_{1}, \mathbf{x}_{2}, \mathbf{x}_{3}, \ldots$ We shall construct a sequence $\left\{V_{n}\right\}$ of neighborhoods, as follows.

Let $V_{1}$ be any neighborhood of $\mathbf{x}_{1}$. If $V_{1}$ consists of all $\mathbf{y} \in R^{k}$ such that $\left|\mathbf{y}-\mathbf{x}_{1}\right|<r$, the closure $\bar{V}_{1}$ of $V_{1}$ is the set of all $\mathbf{y} \in R^{k}$ such that $\left|\mathbf{y}-\mathbf{x}_{1}\right| \leq r$.

Suppose $V_{n}$ has been constructed, so that $V_{n} \cap P$ is not empty. Since every point of $P$ is a limit point of $P$, there is a neighborhood $V_{n+1}$ such that (i) $\bar{V}_{n+1} \subset V_{n}$, (ii) $\mathbf{x}_{n} \notin \bar{V}_{n+1}$, (iii) $V_{n+1} \cap P$ is not empty. By (iii), $V_{n+1}$ satisfies our induction hypothesis, and the construction can proceed.

Put $K_{n}=\bar{V}_{n} \cap P$. Since $\bar{V}_{n}$ is closed and bounded, $\bar{V}_{n}$ is compact. Since $\mathbf{x}_{n} \notin K_{n+1}$, no point of $P$ lies in $\bigcap_{1}^{\infty} K_{n}$. Since $K_{n} \subset P$, this implies that $\bigcap_{1}^{\infty} K_{n}$ is empty. But each $K_{n}$ is nonempty, by (iii), and $K_{n} \supset K_{n+1}$, by (i); this contradicts the Corollary to Theorem $2.36$.

Corollary Every interval $[a, b](a<b)$ is uncountable. In particular, the set of all real numbers is uncountable.

2.44 The Cantor set The set which we are now going to construct shows that there exist perfect sets in $R^{1}$ which contain no segment.

Let $E_{0}$ be the interval $[0,1]$. Remove the segment $\left(\frac{1}{3}, \frac{2}{3}\right)$, and let $E_{1}$ be the union of the intervals

$$
\left[0, \frac{1}{3}\right]\left[\frac{2}{3}, 1\right] \text {. }
$$

Remove the middle thirds of these intervals, and let $E_{2}$ be the union of the intervals

$$
\left[0, \frac{1}{9}\right],\left[\frac{2}{9}, \frac{3}{9}\right],\left[\frac{6}{9}, \frac{7}{9}\right],\left[\frac{8}{9}, 1\right] \text {. }
$$

Continuing in this way, we obtain a sequence of compact sets $E_{n}$, such that

(a) $E_{1} \supset E_{2} \supset E_{3} \supset \cdots$;

(b) $E_{n}$ is the union of $2^{n}$ intervals, each of length $3^{-n}$.

The set

$$
P=\bigcap_{n=1}^{\infty} E_{n}
$$

is called the Cantor set. $P$ is clearly compact, and Theorem $2.36$ shows that $P$ is not empty. No segment of the form

$$
\left(\frac{3 k+1}{3^{m}}, \frac{3 k+2}{3^{m}}\right)
$$

where $k$ and $m$ are positive integers, has a point in common with $P$. Since every segment $(\alpha, \beta)$ contains a segment of the form (24), if

$$
3^{-m}<\frac{\beta-\alpha}{6},
$$

$P$ contains no segment.

To show that $P$ is perfect, it is enough to show that $P$ contains no isolated point. Let $x \in P$, and let $S$ be any segment containing $x$. Let $I_{n}$ be that interval of $E_{n}$ which contains $x$. Choose $n$ large enough, so that $I_{n} \subset S$. Let $x_{n}$ be an endpoint of $I_{n}$, such that $x_{n} \neq x$.

It follows from the construction of $P$ that $x_{n} \in P$. Hence $x$ is a limit point of $P$, and $P$ is perfect.

One of the most interesting properties of the Cantor set is that it provides us with an example of an uncountable set of measure zero (the concept of measure will be discussed in Chap. 11).

\section{CONNECTED SETS}

2.45 Definition Two subsets $A$ and $B$ of a metric space $X$ are said to be separated if both $A \cap \bar{B}$ and $\bar{A} \cap B$ are empty, i.e., if no point of $A$ lies in the closure of $B$ and no point of $B$ lies in the closure of $A$.

$A$ set $E \subset X$ is said to be connected if $E$ is not a union of two nonempty separated sets.

2.46 Remark Separated sets are of course disjoint, but disjoint sets need not be separated. For example, the interval $[0,1]$ and the segment $(1,2)$ are not separated, since 1 is a limit point of $(1,2)$. However, the segments $(0,1)$ and $(1,2)$ are separated.

The connected subsets of the line have a particularly simple structure:

2.47 Theorem A subset $E$ of the real line $R^{1}$ is connected if and only if $i$ thas the following property: If $x \in E, y \in E$, and $x<z<y$, then $z \in E$.

Proof If there exist $x \in E, y \in E$, and some $z \in(x, y)$ such that $z \notin E$, then $E=A_{z} \cup B_{z}$ where

$$
A_{z}=E \cap(-\infty, z), \quad B_{z}=E \cap(z, \infty) .
$$

Since $x \in A_{z}$ and $y \in B_{z}, A$ and $B$ are nonempty. Since $A_{z} \subset(-\infty, z)$ and $\boldsymbol{B}_{z} \subset(z, \infty)$, they are separated. Hence $E$ is not connected.

To prove the converse, suppose $E$ is not connected. Then there are nonempty separated sets $A$ and $B$ such that $A \cup B=E$. Pick $x \in A, y \in B$, and assume (without loss of generality) that $x<y$. Define

$$
z=\sup (A \cap[x, y]) .
$$

By Theorem 2.28, $z \in \bar{A}$; hence $z \notin B$. In particular, $x \leq z<y$.

If $z \notin A$, it follows that $x<z<y$ and $z \notin E$.

If $z \in A$, then $z \notin \bar{B}$, hence there exists $z_{1}$ such that $z<z_{1}<y$ and $z_{1} \notin B$. Then $x<z_{1}<y$ and $z_{1} \notin E$.

\section{EXERCISES}

1. Prove that the empty set is a subset of every set.

2. A complex number $z$ is said to be algebraic if there are integers $a_{0}, \ldots, a_{n}$, not all zero, such that

$$
a_{0} z^{n}+a_{1} z^{n-1}+\cdots+a_{n-1} z+a_{n}=0 .
$$

Prove that the set of all algebraic numbers is countable. Hint: For every positive integer $N$ there are only finitely many equations with

$$
n+\left|a_{0}\right|+\left|a_{1}\right|+\cdots+\left|a_{n}\right|=N .
$$

3. Prove that there exist real numbers which are not algebraic.

4. Is the set of all irrational real numbers countable?

5. Construct a bounded set of real numbers with exactly three limit points.

6. Let $E^{\prime}$ be the set of all limit points of a set $E$. Prove that $E^{\prime}$ is closed. Prove that $E$ and $E$ have the same limit points. (Recall that $E=E \cup E^{\prime}$.) Do $E$ and $E^{\prime}$ always have the same limit points?

7. Let $A_{1}, A_{2}, A_{3}, \ldots$ be subsets of a metric space.

(a) If $B_{n}=\bigcup_{i=1}^{n} A_{i}$, prove that $\bar{B}_{n}=\bigcup_{i=1}^{n} \bar{A}_{i}$, for $n=1,2,3, \ldots$

(b) If $B=\bigcup_{i=1}^{\infty} A_{i}$, prove that $\bar{B} \supset \bigcup_{i=1}^{\infty} \bar{A}_{i}$.

Show, by an example, that this inclusion can be proper.

8. Is every point of every open set $E \subset R^{2}$ a limit point of $E$ ? Answer the same question for closed sets in $R^{2}$.

9. Let $E^{\circ}$ denote the set of all interior points of a set $E$. [See Definition 2.18(e); $E^{\circ}$ is called the interior of $E$.]

(a) Prove that $E^{\circ}$ is always open.

(b) Prove that $E$ is open if and only if $E^{\circ}=E$.

(c) If $G \subset E$ and $G$ is open, prove that $G \subset E^{\circ}$.

(d) Prove that the complement of $E^{\circ}$ is the closure of the complement of $E$.

(e) Do $E$ and $E$ always have the same interiors?

( $f$ ) Do $E$ and $E^{\circ}$ always have the same closures? 10. Let $X$ be an infinite set. For $p \in X$ and $q \in X$, define

$$
d(p, q)= \begin{cases}1 & (\text { if } p \neq q) \\ 0 & (\text { if } p=q)\end{cases}
$$

Prove that this is a metric. Which subsets of the resulting metric space are open? Which are closed? Which are compact?

11. For $x \in R^{1}$ and $y \in R^{1}$, define

$$
\begin{aligned}
&d_{1}(x, y)=(x-y)^{2} \\
&d_{2}(x, y)=\sqrt{|x-y|} \\
&d_{3}(x, y)=\left|x^{2}-y^{2}\right| \\
&d_{4}(x, y)=|x-2 y| \\
&d_{5}(x, y)=\frac{|x-y|}{1+|x-y|}
\end{aligned}
$$

Determine, for each of these, whether it is a metric or not.

12. Let $K \subset R^{1}$ consist of 0 and the numbers $1 / n$, for $n=1,2,3, \ldots$ Prove that $K$ is compact directly from the definition (without using the Heine-Borel theorem).

13. Construct a compact set of real numbers whose limit points form a countable set.

14. Give an example of an open cover of the segment $(0,1)$ which has no finite subcover.

15. Show that Theorem $2.36$ and its Corollary become false (in $R^{1}$, for example) if the word "compact"' is replaced by "closed" or by "bounded."

16. Regard $Q$, the set of all rational numbers, as a metric space, with $d(p, q)=|p-q|$. Let $E$ be the set of all $p \in Q$ such that $2<p^{2}<3$. Show that $E$ is closed and bounded in $Q$, but that $E$ is not compact. Is $E$ open in $Q$ ?

17. Let $E$ be the set of all $x \in[0,1]$ whose decimal expansion contains only the digits 4 and 7. Is $E$ countable? Is $E$ dense in $[0,1]$ ? Is $E$ compact? Is $E$ perfect?

18. Is there a nonempty perfect set in $R^{1}$ which contains no rational number?

19. (a) If $A$ and $B$ are disjoint closed sets in some metric space $X$, prove that they are separated.

(b) Prove the same for disjoint open sets.

(c) Fix $p \in X, \delta>0$, define $A$ to be the set of all $q \in X$ for which $d(p, q)<\delta$, define $B$ similarly, with $>$ in place of $<$. Prove that $A$ and $B$ are separated.

(d) Prove that every connected metric space with at least two points is uncountable. Hint: Use $(c)$.

20. Are closures and interiors of connected sets always connected? (Look at subsets of $R^{2}$.)

21. Let $A$ and $B$ be separated subsets of some $R^{k}$, suppose $a \in A, b \in B$, and define

$$
\mathbf{p}(t)=(1-t) \mathbf{a}+t \mathbf{b}
$$

for $t \in R^{1}$. Put $A_{0}=p^{-1}(A), B_{0}=p^{-1}(B)$. [Thus $t \in A_{0}$ if and only if $p(t) \in A$.] (a) Prove that $A_{0}$ and $B_{0}$ are separated subsets of $R^{1}$.

(b) Prove that there exists $t_{0} \in(0,1)$ such that $\mathbf{p}\left(t_{0}\right) \notin A \cup B$.

(c) Prove that every convex subset of $R^{k}$ is connected.

22. A metric space is called separable if it contains a countable dense subset. Show that $R^{k}$ is separable. Hint: Consider the set of points which have only rational coordinates.

23. A collection $\left\{V_{\alpha}\right\}$ of open subsets of $X$ is said to be a base for $X$ if the following is true: For every $x \in X$ and every open set $G \subset X$ such that $x \in G$, we have $x \in V_{\alpha} \subset G$ for some $\alpha$. In other words, every open set in $X$ is the union of a subcollection of $\left\{V_{\alpha}\right\}$.

Prove that every separable metric space has a countable base. Hint: Take all neighborhoods with rational radius and center in some countable dense subset of $X$.

24. Let $X$ be a metric space in which every infinite subset has a limit point. Prove that $X$ is separable. Hint: Fix $\delta>0$, and pick $x_{1} \in X$. Having chosen $x_{1}, \ldots, x_{j} \in X$, choose $x_{j+1} \in X$, if possible, so that $d\left(x_{l}, x_{j+1}\right) \geq \delta$ for $i=1, \ldots, j$. Show that this process must stop after a finite number of steps, and that $X$ can therefore be covered by finitely many neighborhoods of radius $\delta$. Take $\delta=1 / n(n=1,2,3, \ldots)$, and consider the centers of the corresponding neighborhoods.

25. Prove that every compact metric space $K$ has a countable base, and that $K$ is therefore separable. Hint: For every positive integer $n$, there are finitely many neighborhoods of radius $1 / n$ whose union covers $K$.

26. Let $X$ be a metric space in which every infinite subset has a limit point. Prove that $X$ is compact. Hint: By Exercises 23 and $24, X$ has a countable base. It follows that every open cover of $X$ has a countable subcover $\left\{G_{n}\right\}, n=1,2,3, \ldots$ If no finite subcollection of $\left\{G_{n}\right\}$ covers $X$, then the complement $F_{n}$ of $G_{1} \cup \cdots \cup G_{n}$ is nonempty for each $n$, but $\bigcap F_{n}$ is empty. If $E$ is a set which contains a point from each $F_{n}$, consider a limit point of $E$, and obtain a contradiction.

27. Define a point $p$ in a metric space $X$ to be a condensation point of a set $E \subset X$ if every neighborhood of $p$ contains uncountably many points of $E$.

Suppose $E \subset R^{k}, E$ is uncountable, and let $P$ be the set of all condensation points of $E$. Prove that $P$ is perfect and that at most countably many points of $E$ are not in $P$. In other words, show that $P^{c} \cap E$ is at most countable. Hint: Let $\left\{V_{n}\right\}$ be a countable base of $R^{k}$, let $W$ be the union of those $V_{n}$ for which $E \cap V_{n}$ is at most countable, and show that $P=W^{c}$.

28. Prove that every closed set in a separable metric space is the union of a (possibly empty) perfect set and a set which is at most countable. (Corollary: Every countable closed set in $R^{k}$ has isolated points.) Hint: Use Exercise $27 .$

29. Prove that every open set in $R^{1}$ is the union of an at most countable collection of disjoint segments. Hint: Use Exercise $22 .$ 30. Imitate the proof of Theorem $2.43$ to obtain the following result:

If $R^{k}=\bigcup_{1}^{\infty} F_{n}$, where each $F_{n}$ is a closed subset of $R^{k}$, then at least one $F_{n}$ has a nonempty interior.

Equivalent statement: If $G_{n}$ is a dense open subset of $R^{k}$, for $n=1,2,3, \ldots$, then $\bigcap_{1}^{\infty} G_{n}$ is not empty (in fact, it is dense in $R^{k}$ ).

(This is a special case of Baire's theorem; see Exercise 22, Chap. 3, for the general case.)