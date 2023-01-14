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

Proof Define
$$
\left(T_r f\right)(x)=\frac{1}{m\left(B_r\right)} \int_{B(x, r)}|f-f(x)| d m
$$
for $x \in R^k, r>0$, and put
$$
(T f)(x)=\underset{r \rightarrow 0}{\lim \sup }\left(T_r f\right)(x) .
$$
We have to prove that $T f=0$ a.e. $[\mathrm{m}]$.

Pick $y>0$. Let $n$ be a positive integer. By Theorem 3.14, there exists $g \in C\left(R^k\right)$ so that $\|f-g\|_1<1 / n$ : Put $h=f-g$.

Since $g$ is continuous, $T g=0$. Since
$$
\left(T_r h\right)(x) \leq \frac{1}{m\left(B_r\right)} \int_{B(x, r)}|h| d m+|h(x)|
$$
we have
$$
T h \leq M h+|h| .
$$
Since $T_r f \leq T_r g+T_r h$, it follows that
$$
T f \leq M h+|h| .
$$
Proof Define
$$
\left(T_r f\right)(x)=\frac{1}{m\left(B_r\right)} \int_{B(x, r)}|f-f(x)| d m
$$
for $x \in R^k, r>0$, and put
$$
(T f)(x)=\underset{r \rightarrow 0}{\lim \sup }\left(T_r f\right)(x) .
$$
We have to prove that $T f=0$ a.e. $[\mathrm{m}]$.

Pick $y>0$. Let $n$ be a positive integer. By Theorem 3.14, there exists $g \in C\left(R^k\right)$ so that $\|f-g\|_1<1 / n$ : Put $h=f-g$.

Since $g$ is continuous, $T g=0$. Since
$$
\left(T_r h\right)(x) \leq \frac{1}{m\left(B_r\right)} \int_{B(x, r)}|h| d m+|h(x)|
$$
we have
$$
T h \leq M h+|h| .
$$
Since $T_r f \leq T_r g+T_r h$, it follows that
$$
T f \leq M h+|h| .
$$
Therefore
$$
\{T f>2 y\} \subset\{M h>y\} \cup\{|h|>y\} .
$$
Denote the union on the right of (6) by $E(y, n)$. Since $\|h\|_1<1 / n$, Theorem $7.4$ and the inequality $7.5(1)$ show that
$$
m(E(y, n)) \leq\left(3^k+1\right) /(y n) .
$$
The left side of (6) is independent of $n$. Hence
$$
\{T f>2 y\} \subset \bigcap_{n=1}^{\infty} E(y, n) .
$$
This intersection has measure 0 , by (7), so that $\{T f>2 y\}$ is a subset of a set of measure 0. Since Lebesgue measure is complete, $\{T f>2 y\}$ is Lebesgue measurable, and has measure 0 . This holds for every positive $y$. Hence $T f=0$ a.e. $[m]$.

Theorem $7.7$ yields interesting information, with very little effort, about topics such as
(a) differentiation of absolutely continuous measures,
(b) differentiation using sets other than balls,
(c) differentiation of indefinite integrals in $R^1$,
(d) metric density of measurable sets.

We shall now discuss these topics.
### 7.8 Theorem

Suppose $\mu$ is a complex Borel measure on $R^k$, and $\mu \ll m$. Let $f$ be the Radon-Nikodym derivative of $\mu$ with respect to $m$. Then $D \mu=f$ a.e. $[\mathrm{m}]$, and
$$
\mu(E)=\int_E(D \mu) d m
$$
for all Borel sets $E \subset R^k$.

In other words, the Radon-Nikodym derivative can also be obtained as a limit of the quotients $Q_r \mu$.

### 7.9 Nicely shrinking sets

Suppose $x \in R^k$. A sequence $\left\{E_i\right\}$ of Borel sets in $R^k$ is said to shrink to $x$ nicely if there is a number $\alpha>0$ with the following property: There is a sequence of balls $B\left(x, r_i\right)$, with $\lim r_i=0$, such that $E_i \subset B\left(x, r_i\right)$ and
$$
m\left(E_i\right) \geq \alpha \cdot m\left(B\left(x, r_i\right)\right)
$$
for $i=1,2,3, \ldots$

Note that it is not required that $x \in E_i$, nor even that $x$ be in the closure of $E_i$. Condition (1) is a quantitative version of the requirement that each $E_i$ must occupy a substantial portion of some spherical neighborhood of $x$. For example, a nested sequence of $k$-cells whose longest edge is at most 1,000 times as long as its shortest edge and whose diameter tends to 0 shrinks nicely. A nested sequence of rectangles (in $R^2$ ) whose edges have lengths $1 / i$ and $(1 / i)^2$ does not shrink nicely.

### 7.10 Theorem 

Associate to each $x \in R^k$ a sequence $\left\{E_i(x)\right\}$ that shrinks to $x$ nicely, and let $f \in L^1\left(R^k\right)$. Then
$$
f(x)=\lim _{i \rightarrow \infty} \frac{1}{m\left(E_i(x)\right)} \int_{E_i(x)} f d m
$$
at every Lebesgue point of $f$, hence a.e. $[\mathrm{m}]$.

Proof Let $x$ be a Lebesgue point of $f$ and let $\alpha(x)$ and $B\left(x, r_i\right)$ be the positive number and the balls that are associated to the sequence $\left\{E_i(x)\right\}$. Then, because $E_i(x) \subset B\left(x, r_i\right)$,
$$
\frac{\alpha(x)}{m\left(E_i(x)\right)} \int_{E_i(x)}|f-f(x)| d m \leq \frac{1}{m\left(B\left(x, r_i\right)\right)} \int_{B\left(x, r_i\right)}|f-f(x)| d m .
$$
The right side converges to 0 as $i \rightarrow \infty$, because $r_i \rightarrow 0$ and $x$ is a Lebesgue point of $f$. Hence the left side converges to 0 , and (1) follows.

Note that no relation of any sort was assumed to exist between $\left\{E_i(x)\right\}$ and $\left\{E_i(y)\right\}$, for different points $x$ and $y$.

Note also that Theorem $7.10$ leads to a correspondingly stronger form of Theorem 7.8. We omit the details.

### 7.11 Theorem 

If $f \in L^1\left(R^1\right)$ and
$$
F(x)=\int_{-\infty}^x f d m \quad(-\infty<x<\infty),
$$
then $F^{\prime}(x)=f(x)$ at every Lebesgue point of $f$, hence a.e. $[m]$.
(This is the easy half of the fundamental theorem of Calculus, extended to Lebesgue integrals.)

Proof Let $\left\{\delta_i\right\}$ be a sequence of positive numbers that converges to 0 . Theorem 7.10, with $E_i(x)=\left[x, x+\delta_i\right]$, shows then that the right-hand derivative of $F$ exists at all Lebesgue points of $x$ of $f$ and that it is equal to $f(x)$ at these points. If we let $E_i(x)$ be $\left[x-\delta_i, x\right]$ instead, we obtain the same result for the left-hand derivative of $F$ at $x$.

### 7.12 Metric density 

Let $E$ be a Lebesgue measurable subset of $R^k$. The metric density of $E$ at a point $x \in R^k$ is defined to be
$$
\lim _{r \rightarrow 0} \frac{m(E \cap B(x, r))}{m(B(x, r))}
$$
provided, of course, that this limit exists.

If we let $f$ be the characteristic function of $E$ and apply Theorem $7.8$ or Theorem 7.10, we see that the metric density of $E$ is 1 at almost every point of $E$, and that it is 0 at almost every point of the complement of $E$.

Here is a rather striking consequence of this, which should be compared with Exercise 8 in Chap. 2 :
If $\epsilon>0$, there is no set $E \subset R^1$ that satisfies
$$
\epsilon<\frac{m(E \cap I)}{m(I)}<1-\epsilon
$$
for every segment $I$.

Having dealt with differentiation of absolutely continuous measures, we now turn to those that are singular with respect to $m$.

### 7.13 Theorem 

Associate to each $x \in R^k$ a sequence $\left\{E_i(x)\right\}$ that shrinks to $x$ nicely. If $\mu$ is a complex Borel measure and $\mu \perp m$, then
$$
\lim _{i \rightarrow \infty} \frac{\mu\left(E_i(x)\right)}{m\left(E_i(x)\right)}=0 \quad \text { a.e. }[m]
$$
Proof The Jordan decomposition theorem shows that it suffices to prove (1) under the additional assumption that $\mu \geq 0$. In that case, arguing as in the proof of Theorem $7.10$, we have
$$
\frac{\alpha(x) \mu\left(E_i(x)\right)}{m\left(E_i(x)\right)} \leq \frac{\mu\left(E_i(x)\right)}{m\left(B\left(x, r_i\right)\right)} \leq \frac{\mu\left(B\left(x, r_i\right)\right)}{m\left(B\left(x, r_i\right)\right)} .
$$
Hence (1) is a consequence of the special case
$$
(D \mu)(x)=0 \quad \text { a.e. }[m],
$$
which will now be proved.

The upper derivative $\bar{D} \mu$, defined by
$$
(\bar{D} \mu)(x)=\lim _{n \rightarrow \infty}\left[\sup _{0<r<1 / n}\left(Q_r \mu\right)(x)\right] \quad\left(x \in R^k\right)
$$
is a Borel function, because the quantity in brackets decreases as $n$ increases and is, for each $n$, a lower semicontinuous function of $x$; the reasoning used in Sec. $7.2$ proves this.

Choose $\lambda>0, \epsilon>0$. Since $\mu \perp m, \mu$ is concentrated on a set of Lebesgue measure 0 . The regularity of $\mu$ (Theorem 2.18) shows therefore that there is a compact set $K$, with $m(K)=0, \mu(K)>\|\mu\|-\epsilon$.

Define $\mu_1(E)=\mu(K \cap E)$, for any Borel set $E \subset R^k$, and put $\mu_2=\mu-\mu_1$. Then $\left\|\mu_2\right\|<\epsilon$, and, for every $x$ outside $K$,
$$
(\bar{D} \mu)(x)=\left(\bar{D} \mu_2\right)(x) \leq\left(M \mu_2\right)(x) .
$$
Hence
$$
\{\bar{D} \mu>\lambda\} \subset K \cup\left\{M \mu_2>\lambda\right\},
$$
and Theorem $7.4$ shows that
$$
m\{\bar{D} \mu>\lambda\} \leq 3^k \lambda^{-1}\left\|\mu_2\right\|<3^k \lambda^{-1} \epsilon .
$$
Since (6) holds for every $\epsilon>0$ and for every $\lambda>0$, we conclude that $\bar{D} \mu=0$ a.e. $[m]$, i.e., that (2) holds. $\quad / / / /$
Theorems $7.10$ and $7.13$ can be combined in the following way:

### 7.14 Theorem 

Suppose that to each $x \in R^k$ is associated some sequence $\left\{E_i(x)\right\}$ that shrinks to $x$ nicely, and that $\mu$ is a complex Borel measure on $R^k$.

Let $d \mu=f d m+d \mu_s$ be the Lebesgue decomposition of $\mu$ with respect to $m$. Then
$$
\lim _{i \rightarrow \infty} \frac{\mu\left(E_i(x)\right)}{m\left(E_i(x)\right)}=f(x) \quad \text { a.e. }[m] .
$$
In particular, $\mu \perp m$ if and only if $(D \mu)(x)=0$ a.e. $[m]$.

The following result contrasts strongly with Theorem 7.13:

### 7.15 Theorem 

If $\mu$ is a positive Borel measure on $R^k$ and $\mu \perp m$, then
$$
(D \mu)(x)=\infty \quad \text { a.e. }[\mu] .
$$
Proof There is a Borel set $S \subset R^k$ with $m(S)=0$ and $\mu\left(R^k-S\right)=0$, and there are open sets $V_j \supset S$ with $m\left(V_j\right)<1 / j$, for $j=1,2,3, \ldots$.

For $N=1,2,3, \ldots$, let $E_N$ be the set of all $x \in S$ to which correspond radii $r_i=r_i(x)$, with $\lim r_i=0$, such that
$$
\mu\left(B\left(x, r_i\right)\right)<N m\left(B\left(x, r_i\right)\right) .
$$
Then (1) holds for every $x \in S-\bigcup_N E_N$.

Fix $N$ and $j$, for the moment. Every $x \in E_N$ is then the center of a ball $B_x \subset V_j$ that satisfies (2). Let $\beta_x$ be the open ball with center $x$ whose radius is $1 / 3$ of that of $B_x$. The union of these balls $\beta_x$ is an open set $W_{j, N}$ that contains $E_N$ and lies in $V_j$. We claim that
$$
\mu\left(W_{j, N}\right)<3^k N / j .
$$
To prove (3), let $K \subset W_{j, N}$ be compact. Finitely many $\beta_x$ cover $K$. Lemma $7.3$ shows therefore that there is a finite set $F \subset E_N$ with the following properties:

(a) $\left\{\beta_x: x \in F\right\}$ is a disjoint collection, and
(b) $K \subset \bigcup_{x \in F} B_x$.

Thus
$$
\begin{aligned}
\mu(K) & \leq \sum_{x \in F} \mu\left(B_x\right)<N \sum_{x \in F} m\left(B_x\right) \\
& =3^k N \sum_{x \in F} m\left(\beta_x\right) \leq 3^k N m\left(V_j\right)<3^k N / j .
\end{aligned}
$$
This proves (3).

Now put $\Omega_N=\bigcap_j W_{j, N}$. Then $E_N \subset \Omega_N, \Omega_N$ is a $G_\delta, \mu\left(\Omega_N\right)=0$, and $(D \mu)(x)=\infty$ at every point of $S-\bigcup_N \Omega_N$.



