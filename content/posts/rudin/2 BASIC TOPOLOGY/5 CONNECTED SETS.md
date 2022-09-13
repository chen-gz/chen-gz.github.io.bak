---
title: 5 CONNECTED SETS
date: 2022-08-30
---

**2.45 Definition** Two subsets $A$ and $B$ of a metric space $X$ are said to be separated if both $A \cap \bar{B}$ and $\bar{A} \cap B$ are empty, i.e., if no point of $A$ lies in the closure of $B$ and no point of $B$ lies in the closure of $A$.

$A$ set $E \subset X$ is said to be connected if $E$ is not a union of two nonempty separated sets.

**2.46 Remark** Separated sets are of course disjoint, but disjoint sets need not be separated. For example, the interval $[0,1]$ and the segment $(1,2)$ are not separated, since 1 is a limit point of $(1,2)$. However, the segments $(0,1)$ and $(1,2)$ are separated.

The connected subsets of the line have a particularly simple structure:

**2.47 Theorem** A subset $E$ of the real line $R^{1}$ is connected if and only if $i$ thas the following property: If $x \in E, y \in E$, and $x<z<y$, then $z \in E$.

**Proof** If there exist $x \in E, y \in E$, and some $z \in(x, y)$ such that $z \notin E$, then $E=A_{z} \cup B_{z}$ where
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