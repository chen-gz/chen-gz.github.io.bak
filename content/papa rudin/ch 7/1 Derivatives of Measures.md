---
title: "Derivatives of Measures"
date: "2023-01-01"
editor_options: 
  markdown: 
    wrap: 80
---


We begin with a simple, theorem whose main purpose is to motivate the definitions that follow.

### 7.1 Theorem 

Suppose $\mu$ is a complex Borel measure on $R^1$ and

$$
f(x)=\mu((-\infty, x)) \quad\left(x \in R^1\right) .
$$

If $x \in R^1$ and $A$ is a complex number, each of the following two statements implies the other:

(a) $f$ is differentiable at $x$ and $f^{\prime}(x)=A$.
(b) To every $\epsilon>0$ corresponds a $\delta>0$ such that

$$
\left|\frac{\mu(I)}{m(I)}-A\right|<\epsilon
$$

for every open segment I that contains $x$ and whose length is less than $\delta$. Here $m$ denotes Lebesgue measure on $R^1$.

### 7.2 Definitions

Theorem $7.1$ suggests that one might define the derivative of $\mu$ at $x$ to be the limit of the quotients $\mu(I) / m(I)$, as the segments $I$ shrink to $x$, and that an analogous definition might be appropriate in several variables, i.e., in $R^k$ rather than in $R^1$.

Accordingly, let us fix a dimension $k$, denote the open ball with center $x \in R^k$ and radius $r>0$ by

$$
B(x, r)=\left\{y \in R^k:|y-x|<r\right\}
$$

(the absolute value indicates the euclidean metric, as in Sec. 2.19), associate to any complex Borel measure $\mu$ on $R^k$ the quotients

$$
\left(Q_r \mu\right)(x)=\frac{\mu(B(x, r))}{m(B(x, r))},
$$

where $m=m_k$ is Lebesgue measure on $R^k$, and define the symmetric derivative of $\mu$ at $x$ to be

$$
(D \mu)(x)=\lim _{r \rightarrow 0}\left(Q_r \mu\right)(x)
$$

at those points $x \in R^k$ at which this limit exists.

We shall study $D \mu$ by means of the maximal function $M \mu$. For $\mu \geq 0$, this is defined by

$$
(M \mu)(x)=\sup _{0<r<\infty}\left(Q_r \mu\right)(x),
$$

and the maximal function of a complex Borel measure $\mu$ is, by definition, that of its total variation $|\mu|$.

The functions $M \mu: R^k \rightarrow[0, \infty]$ are lower semicontinuous, hence measurable.

To see this, assume $\mu \geq 0$, pick $\lambda>0$, let $E=\{M \mu>\lambda\}$, and fix $x \in E$. Then there is an $r>0$ such that

$$
\mu(B(x, r))=\operatorname{tm}(B(x, r))
$$

for some $t>\lambda$, and there is a $\delta>0$ that satisfies

$$
(r+\delta)^k<r^k t / \lambda
$$

If $|y-x|<\delta$, then $B(y, r+\delta) \supset B(x, r)$, and therefore

$$
\mu(B(y, r+\delta)) \geq \operatorname{tm}(B(x, r))=t[r /(r+\delta)]^k m(B(y, r+\delta))>\lambda m(B(y, r+\delta)) \text {. }
$$

Thus $B(x, \delta) \subset E$. This proves that $E$ is open.

Our first objective is the "maximal theorem" 7.4. The following covering lemma will be used in its proof.

### 7.3 Lemma

If $W$ is the union of a finite collection of balls $B\left(x_i, r_i\right), 1 \leq i \leq N$, then there is a set $S \subset\{1, \ldots, N\}$ so that

(a) the balls $B\left(x_i, r_i\right)$ with $i \in S$ are disjoint,
(b) $W \subset \bigcup_{i \in S} B\left(x_i, 3 r_i\right)$, and
(c) $m(W) \leq 3^k \sum_{i \in S} m\left(B\left(x_i, r_i\right)\right)$

Proof Order the balls $B_i=B\left(x_i, r_i\right)$ so that $r_1 \geq r_2 \geq \cdots \geq r_N$. Put $i_1=1$. Discard all $B_j$ that intersect $B_{i_1}$. Let $B_{i_2}$ be the first of the remaining $B_j$, if there are any. Discard all $B_j$ with $j>i_2$ that intersect $B_{i_2}$, let $B_{i_3}$ be the first of the remaining ones, and so on, as long as possible. This process stops after a finite number of steps and gives $S=\left\{i_1, i_2, \ldots\right\}$.

It is clear that $(a)$ holds. Every discarded $B_j$ is a subset of $B\left(x_i, 3 r_i\right)$ for some $i \in S$, for if $r^{\prime} \leq r$ and $B\left(x^{\prime}, r^{\prime}\right)$ intersects $B(x, r)$, then $B\left(x^{\prime}, r^{\prime}\right) \subset B(x, 3 r)$. This proves $(b)$, and $(c)$ follows from $(b)$ because
in $R^k$.

$$
m(B(x, 3 r))=3^k m(B(x, r))
$$

The following theorem says, roughly speaking, that the maximal function of a measure cannot be large on a large set.


### 7.4 Theorem

If $\mu$ is a complex Borel measure on $R^k$ and $\lambda$ is a positive number, then

$$
m\{M \mu>\lambda\} \leq 3^k \lambda^{-1}\|\mu\| .
$$

Here $\|\mu\|=|\mu|\left(R^k\right)$, and the left side of (1) is an abbreviation for the more cumbersome expression

$$
m\left(\left\{x \in R^k:(M \mu)(x)>\lambda\right\}\right) .
$$

We shall often simplify notation in this way.

Proof Fix $\mu$ and $\lambda$. Let $K$ be a compact subset of the open set $\{M \mu>\lambda\}$. Each $x \in K$ is the center of an open ball $B$ for which

$$
|\mu|(B)>\lambda m(B) .
$$

Some finite collection of these $B$ 's covers $K$, and Lemma $7.3$ gives us a disjoint subcollection, say $\left\{B_1, \ldots, B_n\right\}$, that satisfies

$$
m(K) \leq 3^k \sum_1^n m\left(B_i\right) \leq 3^k \lambda^{-1} \sum_1^n|\mu|\left(B_i\right) \leq 3^k \lambda^{-1}\|\mu\| .
$$

The disjointness of $\left\{B_1, \ldots, B_n\right\}$ was used in the last inequality.
Now (1) follows by taking the supremum over all compact $K \subset\{M \mu>\lambda\}$.

### 7.5 Weak

$L^1$ If $f \in L^1\left(R^k\right)$ and $\lambda>0$, then

$$
m\{|f|>\lambda\} \leq \lambda^{-1}\|f\|_1
$$

because, putting $E=\{|f|>\lambda\}$, we have

$$
\lambda m(E) \leq \int_E|f| d m \leq \int_{R^k}|f| d m=\|f\|_1 .
$$

Accordingly, any measurable function $f$ for which

$$
\lambda \cdot m\{|f|>\lambda\}
$$

is a bounded function of $\lambda$ on $(0, \infty)$ is said to belong to weak $L^1$.
Thus weak $L^1$ contains $L^1$. That it is actually larger is shown most simply by the function $1 / x$ on $(0,1)$.

We associate to each $f \in L^1\left(R^k\right)$ its maximal function $M f: R^k \rightarrow[0, \infty]$, by setting

$$
(M f)(x)=\sup _{0<r<\infty} \frac{1}{m\left(B_r\right)} \int_{B(x, r)}|f| d m .
$$

[We wrote $B_r$ in place of $B(x, r)$ because $m(B(x, r))$ depends only on the radius $r$.] If we identify $f$ with the measure $\mu$ given by $d \mu=f d m$, we see that (4) agrees with the previously defined $M \mu$. Theorem $7.4$ states therefore that the "maximal operator" $M$ sends $L^1$ to weak $L^1$, with a bound (namely $3^k$ ) that depends only on the space $R^k$ :

For every $f \in L^1\left(R^k\right)$ and every $\lambda>0$

$$
m\{M f>\lambda\} \leq 3^k \lambda^{-1}\|f\|_1
$$


### 7.6 Lebesgue points 

If $f \in L^1\left(R^k\right)$, any $x \in R^k$ for which it is true that

$$
\lim _{r \rightarrow 0} \frac{1}{m\left(B_r\right)} \int_{B(x, r)}|f(y)-f(x)| d m(y)=0
$$

is called a Lebesgue point of $f$.

For example, (1) holds if $f$ is continuous at the point $x$. In general, (1) means that the averages of $|f-f(x)|$ are small on small balls centered at $x$. The Lebesgue points of $f$ are thus points where $f$ does not oscillate too much, in an average sense.


It is probably far from obvious that every $f \in L^1$ has Lebesgue points. But the following remarkable theorem shows that they always exist. (See also Exercise 23.)

### 7.7 Theorem

If $f \in L^1\left(R^k\right)$, then almost every $x \in R^k$ is a Lebesgue point of $f$.
