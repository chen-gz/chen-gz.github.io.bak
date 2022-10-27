---
title: 4 Lebesgue Measure
date: 2022-10-16
---

### 2.19 Euclidean Spaces 

Euclidean $k$-dimensional space $R^k$ is the set of all points $x=(ξ_1, \ldots, ξ_k)$ whose coordinates $ξ_i$ are real numbers, with the following algebraic and topological structure:

If $x=\left( ξ_1, \ldots, ξ_k\right), y=\left( \eta_1, \ldots, \eta_k\right)$, and $\alpha$ is a real number, $x+y$ and $\alpha x$ are defined by
$$
x+y=\left(ξ_1+\eta_1, \ldots, ξ_k+\eta_k\right), \quad \alpha x=\left(\alpha ξ_1, \ldots, \alpha ξ_k\right) .
$$
This makes $R^k$ into a real vector space. If $x \cdot y=\sum ξ_i \eta_i$ and $|x|=(x \cdot x)^{1 / 2}$, the Schwarz inequality $|x \cdot y| \leq|x||y|$ leads to the triangle inequality
$$
|x-y| \leq|x-z|+|z-y| ;
$$
hence we obtain a metric by setting $\rho(x, y)=|x-y|$. We assume that these facts are familiar and shall prove them in greater generality in Chap. 4.

If $E \subset R^k$ and $x \in R^k$, the **translate** of $E$ by $x$ is the set
$$
E+x=\{y+x: y \in E\}
$$
A set of the form
$$
W=\left\{x: \alpha_i<\xi_i<\beta_i, 1 \leq i \leq k\right\},
$$
or any set obtained by replacing any or all of the $<$ signs in (4) by $\leq$, is called a **$k$-cell**; its volume is defined to be
$$
\operatorname{vol}(W)=\prod_{i=1}^k\left(\beta_i-\alpha_i\right)
$$
If $a \in R^k$ and $\delta>0$, we shall call the set
$$
Q(a ; \delta)=\left\{x: \alpha_i \leq \xi_i<\alpha_i+\delta, 1 \leq i \leq k\right\}
$$
the **$\delta$-box with corner at $a$**. Here $a=\left(\alpha_1, \ldots, \alpha_k\right)$.

For $n=1,2,3, \ldots$, we let $P_n$ be the set of all $x \in R^k$ whose coordinates are integer multiples of $2^{-n}$, and we let $\Omega_n$ be the collection of all $2^{-n}$ boxes with corners at points of $P_n$. We shall need the following four properties of $\left\{\Omega_n\right\}$. The first three are obvious by inspection.

(a) If $n$ is fixed, each $x \in R^k$ lies in one and only one member of $\Omega_n$.
(b) If $Q^{\prime} \in \Omega_n, Q^{\prime \prime} \in \Omega_r$, and $r<n$, then either $Q^{\prime} \subset Q^{\prime \prime}$ or $Q^{\prime} \cap Q^{\prime \prime}=\varnothing$.
(c) If $Q \in \Omega_r$, then $\mathrm{vol}(Q)=2^{-r k}$; and if $n>r$, the set $P_n$ has exactly $2^{(n-r) k}$ points in $Q$.
(d) Every nonempty open set in $R^k$ is a countable union of disjoint boxes belonging to $\Omega_1 \cup \Omega_2 \cup \Omega_3 \cup \cdots$.

**Proof** of $(d)$ If $V$ is open, every $x \in V$ lies in an open ball which lies in $V$; hence $x \in Q \subset V$ for some $Q$ belonging to some $\Omega_n$. In other words, $V$ is the union of all boxes which lie in $V$ and which belong to some $\Omega_n$. From this collection of boxes, select those which belong to $\Omega_1$, and remove those in $\Omega_2$, $\Omega_3, \ldots$ which lie in any of the selected boxes. From the remaining collection, select those boxes of $\Omega_2$ which lie in $V$, and remove those in $\Omega_3, \Omega_4, \ldots$ which lie in any of the selected boxes. If we proceed in this way, $(a)$ and (b) show that $(d)$ holds.

### 2.20 Theorem

There exists a positive complete measure $m$ defined on a $\sigma$ algebra $\mathfrak{M}$ in $R^k$, with the following properties:

(a) $m(W)=\operatorname{vol}(W)$ for every $k$-cell $W$.
(b) $\mathfrak{M}$ contains all Borel sets in $R^k$; more precisely, $E \in \mathfrak{M}$ if and only if there are sets $A$ and $B \subset R^k$ such that $A \subset E \subset B, A$ is an $F_\sigma, B$ is a $G_\delta$, and $m(B-A)=0$. Also, $m$ is regular.
(c) $m$ is translation-invariant, i.e.,

$$
m(E+x)=m(E)
$$

for every $E \in \mathfrak{M}$ and every $x \in R^k$.

(d) If $\mu$ is any positive translation-invariant Borel measure on $R^k$ such that $\mu(K)<\infty$ for every compact set $K$, then there is a constant $c$ such that $\mu(E)=c m(E)$ for all Borel sets $E \subset R^k$.
(e) To every linear transformation $T$ of $R^k$ into $R^k$ corresponds a real number $\Delta(T)$ such that
$$
m(T(E))=\Delta(T) m(E)
$$
for every $E \in \mathfrak{M}$. In particular, $m(T(E))=m(E)$ when $T$ is a rotation.


The members of $\mathfrak{M}$ are the Lebesgue measurable sets in $R^k ; m$ is the Lebesgue measure on $R^k$. When clarity requires it, we shall write $m_k$ in place of $m$.

**Proof** If $f$ is any complex function on $R^k$, with compact support, define

$$
\begin{equation}
\Lambda_n f=2^{-n k} \sum_{x \in P_n} f(x) \quad(n=1,2,3, \ldots),
\end{equation}
$$

where $P_n$ is as in Sec. $2.19$.

Now suppose $f \in C_c\left(R^k\right), f$ is real, $W$ is an open $k$-cell which contains the support of $f$, and $\epsilon>0$. The uniform continuity of $f([26]$, Theorem 4.19) shows that there is an integer $N$ and that there are functions $g$ and $h$ with support in $W$, such that (i) $g$ and $h$ are constant on each box belonging to $\Omega_N$, (ii) $g \leq f \leq h$, and (iii) $h-g<\epsilon$. If $n>N$, Property $2.19(c)$ shows that

$$
\begin{equation}
\Lambda_N g=\Lambda_n g \leq \Lambda_n f \leq \Lambda_n h=\Lambda_N h .
\end{equation}
$$

Thus the upper and lower limits of $\left\{\Lambda_n f\right\}$ differ by at most $\epsilon$ vol $(W)$, and since $\epsilon$ was arbitrary, we have proved the existence of

$$
\begin{equation}
\Lambda f=\lim _{n \rightarrow \infty} \Lambda_n f \quad\left(f \in C_c\left(R^k\right)\right) .
\end{equation}
$$

It is immediate that $\Lambda$ is a positive linear functional on $C_c\left(R^k\right)$. (In fact, $\Lambda f$ is precisely the Riemann integral of $f$ over $R^k$. We went through the preceding construction in order not to have to rely on any theorems about Riemann integrals in several variables.)

$W e$ define $m$ and $\mathfrak{M}$ to be the measure and $\sigma$-algebra associated with this $\Lambda$ as in Theorem $2.14$.

Since Theorem $2.14$ gives us a complete measure and since $R^k$ is $\sigma$ compact, Theorem $2.17$ implies assertion $(b)$ of Theorem $2.20$.


To prove $(a)$, let $W$ be the open cell $2.19(4)$, let $E_r$ be the union of those boxes belonging to $\Omega_r$ whose closures lie in $W$, choose $f_r$ so that $\bar{E}_r \prec$ $f_r \prec W$, and put $g_r=\max \left\{f_1, \ldots, f_r\right\}$. Our construction of $\Lambda$ shows that

$$
\begin{equation}
\operatorname{vol}\left(E_r\right) \leq \Lambda f_r \leq \Lambda g_r \leq \operatorname{vol} W .
\end{equation}
$$

As $r \rightarrow \infty, \operatorname{vol}\left(E_r\right) \rightarrow \operatorname{vol}(W)$, and

$$
\begin{equation}
\Lambda g_r=\int g_r d m \rightarrow m(W)
\end{equation}
$$

by the monotone convergence theorem, since $g_r(x) \rightarrow \chi_W(x)$ for all $x \in R^k$. Thus $m(W)=\operatorname{vol}(W)$ for every open cell $W$, and since every $k$-cell is the intersection of a decreasing sequence of open $k$-cells, we obtain $(a)$.

The proofs of $(c),(d)$, and $(e)$ will use the following observation: If $\lambda$ is a positive Borel measure on $R^k$ and $\lambda(E)=m(E)$ for all boxes $E$, then the same equality holds for all open sets $E$, by property $2.19(d)$, and therefore for all Borel sets $E$, since $\lambda$ and $m$ are regular (Theorem 2.18).

To prove $(c)$, fix $x \in R^k$ and define $\lambda(E)=m(E+x)$. It is clear that $\lambda$ is then a measure; by $(a), \lambda(E)=m(E)$ for all boxes, hence $m(E+x)=m(E)$ for all Borel sets $E$. The same equality holds for every $E \in \mathfrak{M}$, because of $(b)$.

Suppose next that $\mu$ satisfies the hypotheses of $(d)$. Let $Q_0$ be a 1-box, put $c=\mu\left(Q_0\right)$. Since $Q_0$ is the union of $2^{n k}$ disjoint $2^{-n}$ boxes that are translates of each other, we have

$$
2^{n k} \mu(Q)=\mu\left(Q_0\right)=c m\left(Q_0\right)=c \cdot 2^{n k} m(Q)
$$

for every $2^{-n}$-box $Q$. Property $2.19(d)$ implies now that $\mu(E)=c m(E)$ for all open sets $E \subset R^k$. This proves $(d)$.

To prove (e), let $T: R^k \rightarrow R^k$ be linear. If the range of $T$ is a subspace $Y$ of lower dimension, then $m(Y)=0$ and the desired conclusion holds with $\Delta(T)=0$. In the other case, elementary linear algebra tells us that $T$ is a one-to-one map of $R^k$ onto $R^k$ whose inverse is also linear. Thus $T$ is a homeomorphism of $R^k$ onto $R^k$, so that $T(E)$ is a Borel set for every Borel set $E$, and we can therefore define a positive Borel measure $\mu$ on $R^k$ by

$$
\begin{equation}
\mu(E)=m(T(E)) .
\end{equation}
$$

The linearity of $T$, combined with the translation-invariance of $m$, gives

$$
\begin{equation}
\mu(E+x)=m(T(E+x))=m(T(E)+T x)=m(T(E))=\mu(E) .
\end{equation}
$$

Thus $\mu$ is translation-invariant, and the first assertion of $(e)$ follows from (d), first for Borel sets $E$, then for all $E \in \mathfrak{M}$ by $(b)$.

To find $\Delta(T)$, we merely need to know $m(T(E)) / m(E)$ for one set $E$ with $0<m(E)<\infty$. If $T$ is a rotation, let $E$ be the unit ball of $R^k$; then $T(E)=E$, and $\Delta(T)=1$.



### 2.21 Remarks 

If $m$ is the Lebesgue measure on $R^k$, it is customary to write $L^1\left(R^k\right)$ in place of $L^1(m)$. If $E$ is a Lebesgue measurable subset of $R^k$, and if $m$ is restricted to the measurable subsets of $E$, a new measure space is obtained in an obvious fashion. The phrase " $f \in L^1$ on $E$ " or " $f \in L^1(E)$ " is used to indicate that $f$ is integrable on this measure space.

If $k=1$, if $I$ is any of the sets $(a, b),(a, b],[a, b),[a, b]$, and if $f \in L^1(I)$, it is customary to write

$$
\int_a^b f(x) d x \text { in place of } \int_I f d m \text {. }
$$

Since the Lebesgue measure of any single point is 0 , it makes no difference over which of these four sets the integral is extended.

Everything learned about integration in elementary Calculus courses is still useful in the present context, for if $f$ is a continuous complex function on $[a, b]$, then the Riemann integral of $f$ and the Lebesgue integral of $f$ over $[a, b]$ coincide. This is obvious from our construction if $f(a)=f(b)=0$ and if $f(x)$ is defined to be 0 for $x<a$ and for $x>b$. The general case follows without difficulty. Actually the same thing is true for every Riemann integrable $f$ on $[a, b]$. Since we shall have no occasion to discuss Riemann integrable functions in the sequel, we omit the proof and refer to Theorem $11.33$ of [26].

Two natural questions may have occurred to some readers by now: Is every Lebesgue measurable set a Borel set? Is every subset of $R^k$ Lebesgue measurable? The answer is negative in both cases, even when $k=1$.

The first question can be settled by a cardinality argument which we sketch briefly. Let $c$ be the cardinality of the continuum (the real line or, equivalently, the collection of all sets of integers). We know that $R^k$ has a countable base (open balls with rational radii and with centers in some countable dense subset of $R^k$ ), and that $\mathscr{B}_k$ (the collection of all Borel sets of $\left.R^k\right)$ is the $\sigma$-algebra generated by this base. It follows from this (we omit the proof) that $\mathscr{B}_k$ has cardinality $c$. On the other hand, there exist Cantor sets $E \subset R^1$ with $m(E)=0$. (Exercise 5.) The completeness of $m$ implies that each of the $2^c$ subsets of $E$ is Lebesgue measurable. Since $2^c>c$, most subsets of $E$ are not Borel sets.

The following theorem answers the second question.

### 2.22 Theorem 

If $A \subset R^1$ and every subset of $A$ is Lebesgue measurable then $m(A)=0$

**Corollary** Every set of positive measure has nonmeasurable subsets.

Proof We shall use the fact that $R^1$ is a group, relative to addition. Let $Q$ be the subgroup that consists of the rational numbers, and let $E$ be a set that contains exactly one point from each coset of $Q$ in $R^1$. (The assertion that



there is such a set is a direct application of the axiom of choice.) Then $E$ has the following two properties.

(a) $(E+r) \cap(E+s)=\varnothing$ if $r \in Q, s \in Q, r \neq s$.
(b) Every $x \in R^1$ lies in $E+r$ for some $r \in Q$.
To prove (a), suppose $x \in(E+r) \cap(E+s)$. Then $x=y+r=z+s$ for some $y \in E, z \in E, y \neq z$. But $y-z=s-r \in Q$, so that $y$ and $z$ lie in the same coset of $Q$, a contradiction.

To prove (b), let $y$ be the point of $E$ that lies in the same coset as $x$, put $r=x-y$.

Fix $t \in Q$, for the moment, and put $A_t=A \cap(E+t)$. By hypothesis, $A_t$ is measurable. Let $K \subset A_t$ be compact, let $H$ be the union of the translates $K+r$, where $r$ ranges over $Q \cap[0,1]$. Then $H$ is bounded, hence $m(H)<\infty$. Since $K \subset E+t,(a)$ shows that the sets $K+r$ are pairwise disjoint. Thus $m(H)=\sum_r m(K+r)$. But $m(K+r)=m(K)$. It follows that $m(K)=0$. This holds for every compact $K \subset A_t$. Hence $m\left(A_t\right)=0$.

Finally, $(b)$ shows that $A=\bigcup A_t$, where $t$ ranges over $Q$. Since $Q$ is countable, we conclude that $m(A)=0$.

### 2.23 Determinants

The scale factors $\Delta(T)$ that occur in Theorem $2.20(e)$ can be interpreted algebraically by means of determinants.

Let $\left\{e_1, \ldots, e_k\right\}$ be the standard basis for $R^k:$ the $i$ th coordinate of $e_j$ is 1 if $i=j, 0$ if $i \neq j$. If $T: R^k \rightarrow R^k$ is linear and

$$
T e_j=\sum_{i=1}^k \alpha_{i j} e_i \quad(1 \leq j \leq k)
$$

then det $T$ is, by definition, the determinant of the matrix $[T]$ that has $\alpha_{i j}$ in row $i$ and column $j$.

We claim that

$$
\Delta(T)=|\operatorname{det} T|
$$

If $T=T_1 T_2$, it is clear that $\Delta(T)=\Delta\left(T_1\right) \Delta\left(T_2\right)$. The multiplication theorem for determinants shows therefore that if (2) holds for $T_1$ and $T_2$, then (2) also holds for $T$. Since every linear operator on $R^k$ is a product of finitely many linear operators of the following three types, it suffices to establish (2) for each of these:

(I) $\left\{T e_1, \ldots, T e_k\right\}$ is a permutation of $\left\{e_1, \ldots, e_k\right\}$.
(II) $T e_1=\alpha e_1, T e_i=e_i$ for $i=2, \ldots, k$.
(III) $T e_1=e_1+e_2, T e_i=e_i$ for $i=2, \ldots, k$.

Let $Q$ be the cube consisting of all $x=\left(\xi_1, \ldots, \xi_k\right)$ with $0 \leq \xi_i<1$ for $i=1, \ldots, k$.

If $T$ is of type (I), then $[T]$ has exactly one 1 in each row and each column and has 0 in all other places. So det $T=\pm 1$. Also, $T(Q)=Q$. So $\Delta(T)=1=|\operatorname{det} T|$

If $T$ is of type (II), then clearly $\Delta(T)=|\alpha|=\mid$ det $T \mid$.

If $T$ is of type (III), then det $T=1$ and $T(Q)$ is the set of all points $\sum \xi_i e_i$ whose coordinates satisfy

$$
\xi_1 \leq \xi_2<\xi_1+1, \quad 0 \leq \xi_i<1 \quad \text { if } \quad i \neq 2 .
$$

If $S_1$ is the set of points in $T(Q)$ that have $\xi_2<1$ and if $S_2$ is the rest of $T(Q)$, then

$$
S_1 \cup\left(S_2-e_2\right)=Q,
$$

and $S_1 \cap\left(S_2-e_2\right)$ is empty. Hence $\Delta(T)=m\left(S_1 \cup S_2\right)=m\left(S_1\right)+m\left(S_2-e_2\right)=$ $m(Q)=1$, so that we again have $\Delta(T)=\mid$ det $T \mid$.


