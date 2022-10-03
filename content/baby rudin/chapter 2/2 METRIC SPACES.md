---
title: 2 METRIC SPACES
date: 2022-08-20
---

* youtube [part1](https://youtu.be/SZTJCJcPwDk) [part2](https://youtu.be/3FNNbVYKLFQ) [part3](https://youtu.be/cxhZsJYeW3g)
* bilibili [part1](https://www.bilibili.com/video/BV1Rg411e7XQ/) [part2](https://www.bilibili.com/video/BV1se411T7EU/) [part3](https://www.bilibili.com/video/BV1vd4y1q7nT/)
* note part1 [pdf](https://github.com/chen-gz/bed2/blob/5cd2019dbdfb1fc5788215c3111a9073b24a2225/8%20PART1%202022-08-22-Note-15-20.pdf) [xopp](https://github.com/chen-gz/bed2/blob/5cd2019dbdfb1fc5788215c3111a9073b24a2225/8%20PART1%202022-08-22-Note-15-20.xopp)
* note part2 [pdf](https://github.com/chen-gz/bed2/blob/5cd2019dbdfb1fc5788215c3111a9073b24a2225/8%20PART2%202022-08-23-Note-16-01.pdf) [xopp](https://github.com/chen-gz/bed2/blob/5cd2019dbdfb1fc5788215c3111a9073b24a2225/8%20PART2%202022-08-23-Note-16-01.xopp)
* note part3 [pdf](https://github.com/chen-gz/bed2/blob/5cd2019dbdfb1fc5788215c3111a9073b24a2225/8%20PART3%202022-08-23-Note-22-07.pdf) [oxpp](https://github.com/chen-gz/bed2/blob/5cd2019dbdfb1fc5788215c3111a9073b24a2225/8%20PART3%202022-08-23-Note-22-07.xopp)

**2.15 Definition** A set $X$, whose elements we shall call points, is said to be a metric space if with any two points $p$ and $q$ of $X$ there is associated a real number $d(p, q)$, called the distance from $p$ to $q$, such that

(a) $d(p, q)>0$ if $p \neq q ; d(p, p)=0$;

(b) $d(p, q)=d(q, p)$;

(c) $d(p, q) \leq d(p, r)+d(r, q)$, for any $r \in X$.

Any function with these three properties is called a distance function, or a metric. 

**2.16 Examples**

The most important examples of metric spaces, from our standpoint, are the euclidean spaces $R^{k}$, especially $R^{1}$ (the real line) and $R^{2}$ (the complex plane); the distance in $R^{k}$ is defined by

$$
d(\mathbf{x}, \mathbf{y})=|\mathbf{x}-\mathbf{y}| \quad\left(\mathbf{x}, \mathbf{y} \in R^{k}\right) .
$$

By Theorem 1.37, the conditions of Definition $2.15$ are satisfied by (19).

It is important to observe that every subset $Y$ of a metric space $X$ is a metric space in its own right, with the same distance function. For it is clear that if conditions $(a)$ to $(c)$ of Definition $2.15$ hold for $p, q, r \in X$, they also hold if we restrict $p, q, r$ to lie in $Y$.

Thus every subset of a euclidean space is a metric space. Other examples are the spaces $\mathscr{C}(K)$ and $\mathscr{L}^{2}(\mu)$, which are discussed in Chaps. 7 and 11 , respectively.

**2.17 Definition** By the segment $(a, b)$ we mean the set of all real numbers $x$ such that $a<x<b$.

By the interval $[a, b]$ we mean the set of all real numbers $x$ such that $a \leq x \leq b$.

Occasionally we shall also encounter "half-open intervals" $[a, b)$ and $(a, b]$; the first consists of all $x$ such that $a \leq x<b$, the second of all $x$ such that $a<x \leq b$

If $a_{i}<b_{i}$ for $i=1, \ldots, k$, the set of all points $\mathbf{x}=\left(x_{1}, \ldots, x_{k}\right)$ in $R^{k}$ whose coordinates satisfy the inequalities $a_{i} \leq x_{i} \leq b_{i}(1 \leq i \leq k)$ is called a $k$-cell. Thus a 1 -cell is an interval, a 2-cell is a rectangle, etc.

If $\mathbf{x} \in R^{k}$ and $r>0$, the open (or closed) ball $B$ with center at $\mathbf{x}$ and radius $r$ is defined to be the set of all $\mathbf{y} \in R^{k}$ such that $|\mathbf{y}-\mathbf{x}|<r($ or $|\mathbf{y}-\mathbf{x}| \leq r$ ).

We call a set $E \subset R^{k}$ convex if

$$
\lambda \mathbf{x}+(1-\lambda) \mathbf{y} \in E
$$

whenever $\mathbf{x} \in E, \mathbf{y} \in E$, and $0<\lambda<1$.

For example, balls are convex. For if $|\mathbf{y}-\mathbf{x}|<r,|\mathbf{z}-\mathbf{x}|<r$, and $0<\lambda<1$, we have

$$
\begin{aligned}
|\lambda \mathbf{y}+(1-\lambda) \mathbf{z}-\mathbf{x}| &=|\lambda(\mathbf{y}-\mathbf{x})+(1-\lambda)(\mathbf{z}-\mathbf{x})| \\
& \leq \lambda|\mathbf{y}-\mathbf{x}|+(1-\lambda)|\mathbf{z}-\mathbf{x}|<\lambda r+(1-\lambda) r \\
&=r .
\end{aligned}
$$

The same proof applies to closed balls. It is also easy to see that $k$-cells are convex. 

**2.18 Definition** Let $X$ be a metric space. All points and sets mentioned below are understood to be elements and subsets of $X$.

(a) A neighborhood of $p$ is a set $N_{r}(p)$ consisting of all $q$ such that $d(p, q)<r$, for some $r>0$. The number $r$ is called the radius of $N_{r}(p)$.

(b) A point $p$ is a limit point of the set $E$ if every neighborhood of $p$ contains a point $q \neq p$ such that $q \in E$.

(c) If $p \in E$ and $p$ is not a limit point of $E$, then $p$ is called an isolated point of $E$.

(d) $E$ is closed if every limit point of $E$ is a point of $E$.

(e) A point $p$ is an interior point of $E$ if there is a neighborhood $N$ of $p$ such that $N \subset E$.

(f) $E$ is open if every point of $E$ is an interior point of $E$.

(g) The complement of $E$ (denoted by $E^{c}$ ) is the set of all points $p \in X$ such that $p \notin E$.

(h) $E$ is perfect if $E$ is closed and if every point of $E$ is a limit point of $E$.

(i) $E$ is bounded if there is a real number $M$ and a point $q \in X$ such that $d(p, q)<M$ for all $p \in E$.

(j) $E$ is dense in $X$ if every point of $X$ is a limit point of $E$, or a point of $E$ (or both).

Let us note that in $R^{1}$ neighborhoods are segments, whereas in $R^{2}$ neighborhoods are interiors of circles.

**2.19 Theorem** Every neighborhood is an open set.

Proof Consider a neighborhood $E=N_{r}(p)$, and let $q$ be any point of $E$. Then there is a positive real number $h$ such that

$$
d(p, q)=r-h .
$$

For all points $s$ such that $d(q, s)<h$, we have then

$$
d(p, s) \leq d(p, q)+d(q, s)<r-h+h=r,
$$

so that $s \in E$. Thus $q$ is an interior point of $E$.

**2.20 Theorem** If $p$ is a limit point of a set $E$, then every neighborhood of $p$ contains infinitely many points of $E$.

Proof Suppose there is a neighborhood $N$ of $p$ which contains only a finite number of points of $E$. Let $q_{1}, \ldots, q_{n}$ be those points of $N \cap E$, which are distinct from $p$, and put

$$
r=\min _{1 \leq m \leq n} d\left(p, q_{m}\right)
$$

[we use this notation to denote the smallest of the numbers $d\left(p, q_{1}\right), \ldots$, $\left.d\left(p, q_{n}\right)\right]$. The minimum of a finite set of positive numbers is clearly positive, so that $r>0$.

The neighborhood $N_{r}(p)$ contains no point $q$ of $E$ such that $q \neq p$, so that $p$ is not a limit point of $E$. This contradiction establishes the theorem.

\section{Corollary A finite point set has no limit points.}

**2.21 Examples** Let us consider the following subsets of $R^{2}$ :

(a) The set of all complex $z$ such that $|z|<1$.

(b) The set of all complex $z$ such that $|z| \leq 1$.

(c) A nonempty finite set.

(d) The set of all integers.

(e) The set consisting of the numbers $1 / n(n=1,2,3, \ldots)$. Let us note that this set $E$ has a limit point (namely, $z=0$ ) but that no point of $E$ is a limit point of $E$; we wish to stress the difference between having a limit point and containing one.

( $f$ ) The set of all complex numbers (that is, $R^{2}$ ).

(g) The segment $(a, b)$.

Let us note that $(d),(e),(g)$ can be regarded also as subsets of $R^{1}$.

Some properties of these sets are tabulated below:

$\begin{array}{cccc}\text { Closed } & \text { Open } & \text { Perfect } & \text { Bounded } \\ \text { No } & \text { Yes } & \text { No } & \text { Yes } \\ \text { Yes } & \text { No } & \text { Yes } & \text { Yes } \\ \text { Yes } & \text { No } & \text { No } & \text { Yes } \\ \text { Yes } & \text { No } & \text { No } & \text { No } \\ \text { No } & \text { No } & \text { No } & \text { Yes } \\ \text { Yes } & \text { Yes } & \text { Yes } & \text { No } \\ \text { No } & & \text { No } & \text { Yes }\end{array}$

In $(g)$, we left the second entry blank. The reason is that the segment $(a, b)$ is not open if we regard it as a subset of $R^{2}$, but it is an open subset of $R^{1}$.

**2.22 Theorem** Let $\left\{E_{\alpha}\right\}$ be a (finite or infinite) collection of sets $E_{\alpha}$. Then

$$
\left(\bigcup_{a} E_{\alpha}\right)^{c}=\bigcap_{\alpha}\left(E_{\alpha}^{c}\right) .
$$

Proof Let $A$ and $B$ be the left and right members of (20). If $x \in A$, then $x \notin U_{\alpha} E_{\alpha}$, hence $x \notin E_{\alpha}$ for any $\alpha$, hence $x \in E_{\alpha}^{c}$ for every $\alpha$, so that $x \in \cap E_{\alpha}^{c}$. Thus $A \subset B$. Conversely, if $x \in B$, then $x \in E_{\alpha}^{c}$ for every $\alpha$, hence $x \notin E_{\alpha}$ for any $\alpha$, hence $x \notin \cup_{\alpha} E_{\alpha}$, so that $x \in\left(\bigcup_{\alpha} E_{\alpha}\right)^{c}$. Thus $B \subset A$.

It follows that $A=B$.

**2.23 Theorem** A set $E$ is open if and only if its complement is closed.

Proof First, suppose $E^{c}$ is closed. Choose $x \in E$. Then $x \notin E^{c}$, and $x$ is not a limit point of $E^{c}$. Hence there exists a neighborhood $N$ of $x$ such that $E^{c} \cap N$ is empty, that is, $N \subset E$. Thus $x$ is an interior point of $E$, and $E$ is open.

Next, suppose $E$ is open. Let $x$ be a limit point of $E^{c}$. Then every neighborhood of $x$ contains a point of $E^{c}$, so that $x$ is not an interior point of $E$. Since $E$ is open, this means that $x \in E^{c}$. It follows that $E^{c}$ is closed.

Corollary $A$ set $F$ is closed if and only if its complement is open.

**2.24 Theorem**

(a) For any collection $\left\{G_{\alpha}\right\}$ of open sets, $\bigcup_{\alpha} G_{\alpha}$ is open.

(b) For any collection $\left\{F_{\alpha}\right\}$ of closed sets, $\bigcap_{\alpha} F_{\alpha}$ is closed.

(c) For any finite collection $G_{1}, \ldots, G_{n}$ of open sets, $\bigcap_{i=1}^{n} G_{i}$ is open.

(d) For any finite collection $F_{1}, \ldots, F_{n}$ of closed sets, $\bigcup_{i=1}^{n} F_{l}$ is closed.

Proof Put $G=\bigcup_{\alpha} G_{\alpha}$. If $x \in G$, then $x \in G_{\alpha}$ for some $\alpha$. Since $x$ is an interior point of $G_{\alpha}, x$ is also an interior point of $G$, and $G$ is open. This proves $(a)$.

By Theorem 2.22,

$$
\left(\bigcap_{\alpha} F_{\alpha}\right)^{c}=\bigcup_{\alpha}\left(F_{a}^{c}\right) \text {, }
$$

and $F_{a}^{c}$ is open, by Theorem 2.23. Hence (a) implies that (21) is open so that $\bigcap_{a} F_{\alpha}$ is closed.

Next, put $H=\bigcap_{i=1}^{n} G_{i}$. For any $x \in H$, there exist neighborhoods $N_{l}$ of $x$, with radii $r_{i}$, such that $N_{l} \subset G_{i}(i=1, \ldots, n)$. Put

$$
r=\min \left(r_{1}, \ldots, r_{n}\right),
$$

and let $N$ be the neighborhood of $x$ of radius $r$. Then $N \subset G_{i}$ for $i=1$, $\ldots, n$, so that $N \subset H$, and $H$ is open.

By taking complements, $(d)$ follows from $(c)$ :

$$
\left(\bigcup_{l=1}^{n} F_{l}\right)^{c}=\bigcap_{i=1}^{n}\left(F_{l}^{c}\right) .
$$

**2.25 Examples** In parts $(c)$ and $(d)$ of the preceding theorem, the finiteness of the collections is essential. For let $G_{n}$ be the segment $\left(-\frac{1}{n}, \frac{1}{n}\right)(n=1,2,3, \ldots)$. Then $G_{n}$ is an open subset of $R^{1}$. Put $G=\bigcap_{n=1}^{\infty} G_{n}$. Then $G$ consists of a single point (namely, $x=0$ ) and is therefore not an open subset of $R^{1}$.

Thus the intersection of an infinite collection of open sets need not be open. Similarly, the union of an infinite collection of closed sets need not be closed.

**2.26 Definition** If $X$ is a metric space, if $E \subset X$, and if $E^{\prime}$ denotes the set of all limit points of $E$ in $X$, then the closure of $E$ is the set $E=E \cup E^{\prime}$.

**2.27 Theorem** If $X$ is a metric space and $E \subset X$, then

(a) E is closed,

(b) $E=E$ if and only if $E$ is closed,

(c) $\bar{E} \subset F$ for every closed set $F \subset X$ such that $E \subset F$.

By $(a)$ and (c), $\bar{E}$ is the smallest closed subset of $X$ that contains $E$.

Proof

(a) If $p \in X$ and $p \notin E$ then $p$ is neither a point of $E$ nor a limit point of $E$. Hence $p$ has a neighborhood which does not intersect $E$. The complement of $\bar{E}$ is therefore open. Hence $E$ is closed.

(b) If $E=E$, (a) implies that $E$ is closed. If $E$ is closed, then $E^{\prime} \subset E$

[by Definitions $2.18(d)$ and 2.26], hence $E=E$.

(c) If $F$ is closed and $F \supset E$, then $F \supset F^{\prime}$, hence $F \supset E^{\prime}$. Thus $F \supset E$.

**2.28 Theorem** Let $E$ be a nonempty set of real numbers which is bounded above. Let $y=\sup E$. Then $y \in E$. Hence $y \in E$ if $E$ is closed.

Compare this with the examples in Sec. 1.9.

Proof If $y \in E$ then $y \in E$. Assume $y \notin E$. For every $h>0$ there exists then a point $x \in E$ such that $y-h<x<y$, for otherwise $y-h$ would be an upper bound of $E$. Thus $y$ is a limit point of $E$. Hence $y \in E$.

**2.29 Remark** Suppose $E \subset Y \subset X$, where $X$ is a metric space. To say that $E$ is an open subset of $X$ means that to each point $p \in E$ there is associated a positive number $r$ such that the conditions $d(p, q)<r, q \in X$ imply that $q \in E$. But we have already observed (Sec. 2.16) that $Y$ is also a metric space, so that our definitions may equally well be made within $Y$. To be quite explicit, let us say that $E$ is open relative to $Y$ if to each $p \in E$ there is associated an $r>0$ such that $q \in E$ whenever $d(p, q)<r$ and $q \in Y$. Example $2.21(g)$ showed that a set may be open relative to $Y$ without being an open subset of $X$. However, there is a simple relation between these concepts, which we now state.

**2.30 Theorem** Suppose $Y \subset X$. A subset $E$ of $Y$ is open relative to $Y$ if and only if $E=Y \cap G$ for some open subset $G$ of $X$.

Proof Suppose $E$ is open relative to $Y$. To each $p \in E$ there is a positive number $r_{p}$ such that the conditions $d(p, q)<r_{p}, q \in Y$ imply that $q \in E$. Let $V_{p}$ be the set of all $q \in X$ such that $d(p, q)<r_{p}$, and define

$$
G=\bigcup_{p \in E} V_{p} .
$$

Then $G$ is an open subset of $X$, by Theorems $2.19$ and $2.24$.

Since $p \in V_{p}$ for all $p \in E$, it is clear that $E \subset G \cap Y$.

By our choice of $V_{p}$, we have $V_{p} \cap Y \subset E$ for every $p \in E$, so that $G \cap Y \subset E$. Thus $E=G \cap Y$, and one half of the theorem is proved.

Conversely, if $G$ is open in $X$ and $E=G \cap Y$, every $p \in E$ has a neighborhood $V_{p} \subset G$. Then $V_{p} \cap Y \subset E$, so that $E$ is open relative to $Y$.
