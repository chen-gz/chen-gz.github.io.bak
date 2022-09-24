---
title: 4 PERFECT SETS
date: 2022-08-30
---

**2.43 Theorem** Let $P$ be a nonempty perfect set in $R^{k}$. Then $P$ is uncountable.

Proof Since $P$ has limit points, $P$ must be infinite. Suppose $P$ is countable, and denote the points of $P$ by $\mathbf{x}_{1}, \mathbf{x}_{2}, \mathbf{x}_{3}, \ldots$ We shall construct a sequence $\left\{V_{n}\right\}$ of neighborhoods, as follows.

Let $V_{1}$ be any neighborhood of $\mathbf{x}_{1}$. If $V_{1}$ consists of all $\mathbf{y} \in R^{k}$ such that $\left|\mathbf{y}-\mathbf{x}_{1}\right|<r$, the closure $\bar{V}_{1}$ of $V_{1}$ is the set of all $\mathbf{y} \in R^{k}$ such that $\left|\mathbf{y}-\mathbf{x}_{1}\right| \leq r$.

Suppose $V_{n}$ has been constructed, so that $V_{n} \cap P$ is not empty. Since every point of $P$ is a limit point of $P$, there is a neighborhood $V_{n+1}$ such that (i) $\bar{V}_{n+1} \subset V_{n}$, (ii) $\mathbf{x}_{n} \notin \bar{V}_{n+1}$, (iii) $V_{n+1} \cap P$ is not empty. By (iii), $V_{n+1}$ satisfies our induction hypothesis, and the construction can proceed.

Put $K_{n}=\bar{V}_{n} \cap P$. Since $\bar{V}_{n}$ is closed and bounded, $\bar{V}_{n}$ is compact. Since $\mathbf{x}_{n} \notin K_{n+1}$, no point of $P$ lies in $\bigcap_{1}^{\infty} K_{n}$. Since $K_{n} \subset P$, this implies that $\bigcap_{1}^{\infty} K_{n}$ is empty. But each $K_{n}$ is nonempty, by (iii), and $K_{n} \supset K_{n+1}$, by (i); this contradicts the Corollary to Theorem $2.36$.

Corollary Every interval $[a, b](a<b)$ is uncountable. In particular, the set of all real numbers is uncountable.

**2.44 The Cantor set** The set which we are now going to construct shows that there exist perfect sets in $R^{1}$ which contain no segment.

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

