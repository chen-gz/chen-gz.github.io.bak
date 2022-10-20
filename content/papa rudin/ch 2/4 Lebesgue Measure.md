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

For $n=1,2,3, \ldots$, we let $P_n$ be the set of all $x \in R^k$ whose coordinates are integral multiples of $2^{-n}$, and we let $\Omega_n$ be the collection of all $2^{-n}$ boxes with corners at points of $P_n$. We shall need the following four properties of $\left\{\Omega_n\right\}$. The first three are obvious by inspection.

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
