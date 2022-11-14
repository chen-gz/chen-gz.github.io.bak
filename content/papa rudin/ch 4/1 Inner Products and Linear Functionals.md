---
title: 1 Inner Products and Linear Functionals
date: 2022-10-30
---


### 4.1 Definition

A complex vector space $H$ is called an inner product space (or unitary space) if to each ordered pair of vectors $x$ and $y \in H$ there is associated a complex number $(x, y)$, the so-called "inner product" (or "scalar product") of $x$ and $y$, such that the following rules hold:

(a) $(y, x)=(\overline{x, y)}$. (The bar denotes complex conjugation.)
(b) $(x+y, z)=(x, z)+(y, z)$ if $x, y$, and $z \in H$.
(c) $(\alpha x, y)=\alpha(x, y)$ if $x$ and $y \in H$ and $\alpha$ is a scalar.
(d) $(x, x) \geq 0$ for all $x \in H$.
(e) $(x, x)=0$ only if $x=0$.

Let us list some immediate consequences of these axioms:

(c) implies that $(0, y)=0$ for all $y \in H$.
(b) and $(c)$ may be combined into the statement: *For every $y \in H$, the mapping $x \rightarrow(x, y)$ is a linear functional on $H$.*
$(a)$ and $(c)$ show that $(x, \alpha y)=\bar{\alpha}(x, y)$.
$(a)$ and $(b)$ imply the second distributive law:
$$
(z, x+y)=(z, x)+(z, y)
$$

By $(d)$, we may define $\|x\|$, the norm of the vector $x \in H$, to be the nonnegative square root of $(x, x)$. Thus
$(f)$

$$
\|x\|^2=(x, x) .
$$

### 4.2 The Schwarz Inequality

The properties $4.1($ a) to $(d)$ imply that

$$
|(x, y)| \leq\|x\|\|y\|
$$

for all $x$ and $y \in H$.
Proof Put $A=\|x\|^2, B=|(x, y)|$, and $C=\|y\|^2$. There is a complex number $\alpha$ such that $|\alpha|=1$ and $\alpha(y, x)=B$. For any real $r$, we then have

$$
(x-r \alpha y, x-r \alpha y)=(x, x)-r \alpha(y, x)-r \bar{\alpha}(x, y)+r^2(y, y) .
$$

The expression on the left is real and not negative. Hence

$$
A-2 B r+C r^2 \geq 0
$$

for every real $r$. If $C=0$, we must have $B=0$; otherwise (2) is false for large positive $r$. If $C>0$, take $r=B / C$ in (2), and obtain $B^2 \leq A C$.

### 4.3 The Triangle Inequality 

For $x$ and $y \in H$, we have
$$
\|x+y\| \leq\|x\|+\|y\| \text {. }
$$
Proof By the Schwarz inequality,
$$
\begin{aligned}
\|x+y\|^2 &=(x+y, x+y)=(x, x)+(x, y)+(y, x)+(y, y) \\
& \leq\|x\|^2+2\|x\|\|y\|+\|y\|^2=(\|x\|+\|y\|)^2 .
\end{aligned}
$$
### 4.4 Definition 

It follows from the triangle inequality that
$$
\|x-z\| \leq\|x-y\|+\|y-z\| \quad(x, y, z \in H) .
$$

If we define the distance between $x$ and $y$ to be $\|x-y\|$, all the axioms for a metric space are satisfied; here, for the first time, we use part $(e)$ of Definition 4.1.

Thus $H$ is now a metric space. If this metric space is **complete**, i.e., if every Cauchy sequence converges in $H$, then $H$ is called a Hilbert space.

Throughout the rest of this chapter, the letter $H$ will denote a Hilbert space.

### 4.5 Examples

(a) For any fixed $n$, the set $C^n$ of all $n$-tuples
$$
x=\left(\xi_1, \ldots, \xi_n\right),
$$
where $\xi_1, \ldots, \xi_n$ are complex numbers, is a Hilbert space if addition and scalar multiplication are defined componentwise, as usual, and if
$$
(x, y)=\sum_{j=1}^n \xi_j \bar{\eta}_j \quad\left(y=\left(\eta_1, \ldots, \eta_n\right)\right) .
$$
(b) If $\mu$ is any positive measure, $L^2(\mu)$ is a Hilbert space, with inner product
$$
(f, g)=\int_X f \bar{g} d \mu .
$$
The integrand on the right is in $L^1(\mu)$, by Theorem $3.8$, so that $(f, g)$ is well defined. Note that
$$
\|f\|=(f, f)^{1 / 2}=\left\{\int_X|f|^2 d \mu\right\}^{1 / 2}=\|f\|_2 .
$$
The completeness of $L^2(\mu)$ (Theorem 3.11) shows that $L^2(\mu)$ is indeed a Hilbert space. [We recall that $L^2(\mu)$ should be regarded as a space of equivalence classes of functions; compare the discussion in Sec. 3.10.]

For $H=L^2(\mu)$, the inequalities $4.2$ and $4.3$ turn out to be special cases of the inequalities of Hölder and Minkowski.

Note that Example $(a)$ is a special case of $(b)$. What is the measure in (a)?

(c) The vector space of all continuous compiex functions on $[0,1]$ is an inner product space if
$$
(f, g)=\int_0^1 f(t) \overline{g(t)} d t
$$
but is not a Hilbert space.

### 4.6 Theorem

For any fixed $y \in H$, the mappings
$$
x \rightarrow(x, y), \quad x \rightarrow(y, x), \quad x \rightarrow\|x\|
$$
are continuous functions on $H$.
Proof The Schwarz inequality implies that
$$
\left|\left(x_1, y\right)-\left(x_2, y\right)\right|=\left|\left(x_1-x_2, y\right)\right| \leq\left\|x_1-x_2\right\|\|y\|,
$$
which proves that $x \rightarrow(x, y)$ is, in fact, uniformly continuous, and the same is true for $x \rightarrow(y, x)$. The triangle inequality $\left\|x_1\right\| \leq\left\|x_1-x_2\right\|+\left\|x_2\right\|$ yields
$$
\left\|x_1\right\|-\left\|x_2\right\| \leq\left\|x_1-x_2\right\| \text {, }
$$
and if we interchange $x_1$ and $x_2$ we see that
$$
\left|\left\|x_1\right\|-\left\|x_2\right\|\right| \leq\left\|x_1-x_2\right\|
$$
for all $x_1$ and $x_2 \in H$. Thus $x \rightarrow\|x\|$ is also uniformly continuous.

### 4.7 Subspaces

A subset $M$ of a vector space $V$ is called a subspace of $V$ if $M$ is itself a vector space, relative to the addition and scalar multiplication which are defined in $V$. A necessary and sufficient condition for a set $M \subset V$ to be a subspace is that $x+y \in M$ and $\alpha x \in M$ whenever $x$ and $y \in M$ and $\alpha$ is a scalar.

In the vector space context, the word "subspace" will always have this meaning. Sometimes, for emphasis, we may use the term "linear subspace" in place of subspace.

For example, if $V$ is the vector space of all complex functions on a set $S$, the set of all bounded complex functions on $S$ is a subspace of $V$, but the set of all $f \in V$ with $|f(x)| \leq 1$ for all $x \in S$ is not. The real vector space $R^3$ has the following subspaces, and no others: $(a) R^3,(b)$ all planes through the origin $0,(c)$ all straight lines through 0 , and $(d)\{0\}$.

A **closed subspace** of $H$ is a subspace that is a closed set relative to the topology induced by the metric of $H$.

Note that if $M$ is a **subspace** of $H$, so is **its closure** $\bar{M}$. To see this, pick $x$ and $y$ in $\bar{M}$ and let $\alpha$ be a scalar. There are sequences $\left\{x_n\right\}$ and $\left\{y_n\right\}$ in $M$ that converge to $x$ and $y$, respectively. It is then easy to verify that $x_n+y_n$ and $\alpha x_n$ converge to $x+y$ and $\alpha x$, respectively. Thus $x+y \in \bar{M}$ and $\alpha x \in \bar{M}$.

### 4.8 Convex Sets

A set $E$ in a vector space $V$ is said to be convex if it has the following geometric property: Whenever $x \in E, y \in E$, and $0<t<1$, the point
$$
z_t=(1-t) x+t y
$$
also lies in $E$. As $t$ runs from 0 to 1, one may visualize $z_t$ as describing a straight line segment in $V$, from $x$ to $y$. Convexity requires that $E$ contain the segments between any two of its points.
It is clear that every subspace of $V$ is convex.
Also, if $E$ is convex, so is each of its translates
$$
E+x=\{y+x: y \in E\}
$$

### 4.9 Orthogonality

 If $(x, y)=0$ for some $x$ and $y \in H$, we say that $x$ is orthogonal to $y$, and sometimes write $x \perp y$. Since $(x, y)=0$ implies $(y, x)=0$, the relation $\perp$ is symmetric.

Let $x^{\perp}$ denote the set of all $y \in H$ which are orthogonal to $x$; and if $M$ is a subspace of $H$, let $M^{\perp}$ be the set of all $y \in H$ which are orthogonal to every $x \in M$.

Note that $x^{\perp}$ is a subspace of $H$, since $x \perp y$ and $x \perp y^{\prime}$ implies $x \perp\left(y+y^{\prime}\right)$ and $x \perp \alpha y$. Also, $x^{\perp}$ is precisely the set of points where the continuous function $y \rightarrow(x, y)$ is 0 . Hence $x^{\perp}$ is a closed subspace of $H$. Since
$$
M^{\perp}=\bigcap_{x \in M} x^{\perp},
$$
$M^{\perp}$ is an intersection of closed subspaces, and it follows that $M^{\perp}$ is a closed subspace of $H$.

### 4.10 Theorem 

Every nonempty, closed, convex set $E$ in a Hilbert space $H$ contains a unique element of smallest norm.

In other words, there is one and only one $x_0 \in E$ such that $\left\|x_0\right\| \leq\|x\|$ for every $x \in E$.

Proof An easy computation, using only the properties listed in Definition 4.1, establishes the identity
$$
\|x+y\|^2+\|x-y\|^2=2\|x\|^2+2\|y\|^2 \quad(x \text { and } y \in H) .
$$
This is known as the parallelogram law: If we interpret $\|x\|$ to be the length of the vector $x$, (1) says that the sum of the squares of the diagonals of a parallelogram is equal to the sum of the squares of its sides, a familiar proposition in plane geometry.

Let $\delta=\inf \{\|x\|: x \in E\}$. For any $x$ and $y \in E$, we apply (1) to $\frac{1}{2} x$ and $\frac{1}{2} y$ and obtain
$$
\frac{1}{4}\|x-y\|^2=\frac{1}{2}\|x\|^2+\frac{1}{2}\|y\|^2-\left\|\frac{x+y}{2}\right\|^2 .
$$
Since $E$ is convex, $(x+y) / 2 \in E$. Hence
$$
\|x-y\|^2 \leq 2\|x\|^2+2\|y\|^2-4 \delta^2 \quad(x \text { and } y \in E) .
$$
If also $\|x\|=\|y\|=\delta$, then (3) implies $x=y$, and we have proved the uniqueness assertion of the theorem.

The definition of $\delta$ shows that there is a sequence $\left\{y_n\right\}$ in $E$ so that $\left\|y_n\right\| \rightarrow \delta$ as $n \rightarrow \infty$. Replace $x$ and $y$ in (3) by $y_n$ and $y_m$. Then, as $n \rightarrow \infty$ and $m \rightarrow \infty$, the right side of (3) will tend to 0 . This shows that $\left\{y_n\right\}$ is a Cauchy sequence. Since $H$ is complete, there exists an $x_0 \in H$ so that $y_n \rightarrow x_0$, i.e., $\left\|y_n-x_0\right\| \rightarrow 0$, as $n \rightarrow \infty$. Since $y_n \in E$ and $E$ is closed, $x_0 \in E$. Since the norm is a continuous function on $H$ (Theorem 4.6), it follows that
$$
\left\|x_0\right\|=\lim _{n \rightarrow \infty}\left\|y_n\right\|=\delta . 
$$

### 4.11 Theorem

Let $M$ be a closed subspace of a Hilbert space $H$.

(a) Every $x \in H$ has then a unique decomposition
$$
x=P x+Q x
$$
into a sum of $P x \in M$ and $Q x \in M^{\perp}$.
(b) Px and $Q x$ are the nearest points to $x$ in $M$ and in $M^{\perp}$, respectively.
(c) The mappings $P: H \rightarrow M$ and $Q: H \rightarrow M^{\perp}$ are linear.
(d) $\|x\|^2=\|P x\|^2+\|Q x\|^2$.

**Corollary** If $M \neq H$, then there exists $y \in H, y \neq 0$, such that $y \perp M$.
$P$ and $Q$ are called the orthogonal projections of $H$ onto $M$ and $M^{\perp}$.

**Proof** As regards the uniqueness in $(a)$, suppose that $x^{\prime}+y^{\prime}=x^{\prime \prime}+y^{\prime \prime}$ for some vectors $x^{\prime}, x^{\prime \prime}$ in $M$ and $y^{\prime}, y^{\prime \prime}$ in $M^{\perp}$. Then
$$
x^{\prime}-x^{\prime \prime}=y^{\prime \prime}-y^{\prime} .
$$
Since $x^{\prime}-x^{\prime \prime} \in M, y^{\prime \prime}-y^{\prime} \in M^{\perp}$, and $M \cap M^{\perp}=\{0\}$ [an immediate consequence of the fact that $(x, x)=0$ implies $x=0]$, we have $x^{\prime \prime}=x^{\prime}, y^{\prime \prime}=y^{\prime}$.

To prove the existence of the decomposition, note that the set
$$
x+M=\{x+y: y \in M\}
$$
is closed and convex. Define $Q x$ to be the element of smallest norm in $x+M$; this exists, by Theorem 4.10. Define $P x=x-Q x$.

Since $Q x \in x+M$, it is clear that $P x \in M$. Thus $P$ maps $H$ into $M$.

To prove that $Q$ maps $H$ into $M^{\perp}$ we show that $(Q x, y)=0$ for all $y \in M$.
Assume $\|y\|=1$, without loss of generality, and put $z=Q x$. The minimizing property of $Q x$ shows that
$$
(z, z)=\|z\|^2 \leq\|z-\alpha y\|^2=(z-\alpha y, z-\alpha y)
$$
for every scalar $\alpha$. This simplifies to
$$
0 \leq-\alpha(y, z)-\bar{\alpha}(z, y)+\alpha \bar{\alpha} .
$$
With $\alpha=(z, y)$, this gives $0 \leq-|(z, y)|^2$, so that $(z, y)=0$. Thus $Q x \in M^{\perp}$.
We have already seen that $P x \in M$. If $y \in M$, it follows that
$$
\|x-y\|^2=\|Q x+(P x-y)\|^2=\|Q x\|^2+\|P x-y\|^2
$$
which is obviously minimized when $y=P x$.
We have now proved $(a)$ and $(b)$. If we apply $(a)$ to $x$, to $y$, and to $\alpha x+\beta y$, we obtain
$$
P(\alpha x+\beta y)-\alpha P x-\beta P y=\alpha Q x+\beta Q y-Q(\alpha x+\beta y) .
$$
The left side is in $M$, the right side in $M^{\perp}$. Hence both are 0 , so $P$ and $Q$ are linear.
Since $P x \perp Q x,(d)$ follows from $(a)$.
To prove the corollary, take $x \in H, x \notin M$, and put $y=Q x$. Since $P x \in M, x \neq P x$, hence $y=x-P x \neq 0$.

We have already observed that $x \rightarrow(x, y)$ is, for each $y \in H$, a continuous linear functional on $H$. It is a very important fact that all continuous linear functionals on $H$ are of this type.

### 4.12 Theorem

If $L$ is a continuous linear functional on $H$, then there is $a$ unique $y \in H$ such that
$$
L x=(x, y) \quad(x \in H) .
$$
**PROOF** If $L x=0$ for all $x$, take $y=0$. Otherwise, define
$$
M=\{x: L x=0\}
$$
The linearity of $L$ shows that $M$ is a subspace. The continuity of $L$ shows that $M$ is closed. Since $L x \neq 0$ for some $x \in H$, Theorem $4.11$ shows that $M^{\perp}$ does not consist of 0 alone.

Hence there exists $z \in M^{\perp}$, with $\|z\|=1$. Put
$$
u=(L x) z-(L z) x
$$
Since $L u=(L x)(L z)-(L z)(L x)=0$, we have $u \in M$. Thus $(u, z)=0$. This gives
$$
L x=(L x)(z, z)=(L z)(x, z) .
$$
Thus (1) holds with $y=\alpha z$, where $\bar{\alpha}=L z$.

The uniqueness of $y$ is easily proved, for if $(x, y)=\left(x, y^{\prime}\right)$ for al $x \in H$, set $z=y-y^{\prime} ;$ then $(x, z)=0$ for all $x \in H ;$ in particular, $(z, z)=0$, hence $z=0$.
