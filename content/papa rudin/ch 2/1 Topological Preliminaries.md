---
title: 1 Topological Preliminaries
date: 2022-10-04
---

## 2.3 Definitions

Let $X$ be a topological space, as defined in Sec. $1.2$.

(a) A set $E \subset X$ is **closed** if its complement $E^c$ is open. (Hence $\varnothing$ and $X$ are closed, finite unions of closed sets are closed, and arbitrary intersections of closed sets are closed.)

(b) The **closure** $\bar{E}$ of a set $E \subset X$ is the smallest closed set in $X$ which contains $E$. (The following argument proves the existence of $\bar{E}$ : The collection $\Omega$ of all closed subsets of $X$ which contain $E$ is not empty, since $X \in \Omega$; let $\bar{E}$ be the intersection of all members of $\Omega$.)

(c) A set $K \subset X$ is **compact** if every open cover of $K$ contains a finite subcover. More explicitly, the requirement is that if $\left\{V_\alpha\right\}$ is a collection of open sets whose union contains $K$, then the union of some finite subcollection of $\left\{V_\alpha\right\}$ also contains $K$. <br>
In particular, if $X$ is itself compact, then $X$ is called a **compact space**.

(d) A **neighborhood** of a point $p \in X$ is any open subset of $X$ which contains $p$. (The use of this term is not quite standardized; some use "neighborhood of $p$ " for any set which contains an open set containing p.)

(e) $X$ is a **Hausdorff space** if the following is true: If $p \in X, q \in X$, and $p \neq q$, then $p$ has a neighborhood $U$ and $q$ has a neighborhood $V$ such that $U \cap V=\varnothing$

(f) $X$ is **locally compact** if every point of $X$ has a neighborhood whose closure is compact.

Obviously, every compact space is locally compact.

We recall the Heine-Borel theorem: **The compact subsets of a euclidean space $R^n$ are precisely those that are closed and bounded** $([26], \dagger$ Theorem 2.41). From this it follows easily that $R^n$ is a locally compact Hausdorff space. Also, every metric space is a Hausdorff space.


## 2.4 theorem

Suppose $K$ is compact and $F$ is closed, in a topological space $X$. If $F \subset K$, then $F$ is compact.

**PROOF** If $\left\{V_\alpha\right\}$ is an open cover of $F$ and $W=F^c$, then $W \cup \bigcup_\alpha V_\alpha$ covers $X$; hence there is a finite collection $\left\{V_{\alpha_i}\right\}$ such that

$$
\begin{equation}
K \subset W \cup V_{\alpha_1} \cup \cdots \cup V_{\alpha_n} .
\end{equation}
$$

Then $F \subset V_{\alpha_1} \cup \cdots \cup V_{\alpha_n}$.

**Corollary** If $A \subset B$ and if $B$ has compact closure, so does $A$.

## 2.5 Theorem

Suppose $X$ is a Hausdorff space, $K \subset X, K$ is compact, and $p \in K^c$. Then there are open sets $U$ and $W$ such that $p \in U, K \subset W$, and $U \cap W=\varnothing$

**PROOF** If $q \in K$, the Hausdorff separation axiom implies the existence of disjoint open sets $U_q$ and $V_q$, such that $p \in U_q$ and $q \in V_q$. Since $K$ is compact, there are points $q_1, \ldots, q_n \in K$ such that

$$
\begin{equation}
K \subset V_{q_1} \cup \cdots \cup V_{q_n} .
\end{equation}
$$

Our requirements are then satisfied by the sets

$$
\begin{equation}
U=U_{q_1} \cap \cdots \cap U_{q_n} \text { and } W=V_{q_1} \cup \cdots \cup V_{q_n} . \quad \text { //// }
\end{equation}
$$

**Corollaries**

(a) Compact subsets of Hausdorff spaces are closed.
(b) If $F$ is closed and $K$ is compact in a Hausdorff space, then $F \cap K$ is compact.

Corollary $(b)$ follows from $(a)$ and Theorem $2.4$.

## 2.6 Theorem

If $\left\{K_\alpha\right\}$ is a collection of compact subsets of a Hausdorff space and if $\bigcap_\alpha K_\alpha=\varnothing$, then some finite subcollection of $\left\{K_\alpha\right\}$ also has empty intersection.

**Proof** Put $V_\alpha=K_\alpha^c$. Fix a member $K_1$ of $\left\{K_\alpha\right\}$. Since no point of $K_1$ belongs to every $K_\alpha,\left\{V_\alpha\right\}$ is an open cover of $K_1$. Hence $K_1 \subset V_{\alpha_1} \cup \cdots \cup V_{\alpha_n}$ for some finite collection $\left\{V_{\alpha_i}\right\}$. This implies that

$$
\begin{equation}
K_1 \cap K_{\alpha_1} \cap \cdots \cap K_{\alpha_n}=\varnothing .
\end{equation}
$$

## 2.7 Theorem

Suppose $U$ is open in a locally compact Hausdorff space $X$, $K \subset U$, and $K$ is compact. Then there is an open set $V$ with compact closure such that

$$
\begin{equation}
K \subset V \subset \bar{V} \subset U .
\end{equation}
$$

Proof Since every point of $K$ has a neighborhood with compact closure, and since $K$ is covered by the union of finitely many of these neighborhoods, $K$ lies in an open set $G$ with compact closure. If $U=X$, take $V=G$.

Otherwise, let $C$ be the complement of $U$. Theorem $2.5$ shows that to each $p \in C$ there corresponds an open set $W_p$ such that $K \subset W_p$ and $p \notin \bar{W}_p$. Hence $\left\{C \cap \bar{G} \cap \bar{W}_p\right\}$, where $p$ ranges over $C$, is a collection of compact sets with empty intersection. By Theorem $2.6$ there are points $p_1, \ldots, p_n \in C$ such that

$$
\begin{equation}
C \cap \bar{G} \cap \bar{W}_{p_1} \cap \cdots \cap \bar{W}_{p_n}=\varnothing .
\end{equation}
$$

The set

$$
\begin{equation}
V=G \cap W_{p_1} \cap \cdots \cap W_{p_n}
\end{equation}
$$

then has the required properties, since

$$
\begin{equation}
\bar{V} \subset \bar{G} \cap \bar{W}_{p_1} \cap \cdots \cap \bar{W}_{p_n} .
\end{equation}
$$

### 2.8 Definition

Let $f$ be a real (or extended-real) function on a topological space. If

$$
\begin{equation}
\{x: f(x)>\alpha\}
\end{equation}
$$

is open for every real $\alpha, f$ is said to be **lower semicontinuous**. If

$$
\begin{equation}
\{x: f(x)<\alpha\}
\end{equation}
$$

is open for every real $\alpha, f$ is said to be **upper semicontinuous**.

A real function is obviously continuous if and only if it is both upper and lower semicontinuous.

The simplest examples of semicontinuity are furnished by characteristic functions:

(a) Characteristic functions of open sets are lower semicontinuous.

(b) Characteristic functions of closed sets are upper semicontinuous.

The following property is an almost immediate consequence of the definitions:

(c) *The supremum of any collection of lower semicontinuous functions is lower semicontinuous. The infimum of any collection of upper semicontinuous functions is upper semicontinuous.*

## 2.9 Definition

The **support** of a complex function $f$ on a topological space $X$ is the *closure* of the set

$$
\begin{equation}
\{x: f(x) \neq 0\} .
\end{equation}
$$

The collection of all continuous complex functions on $X$ whose support is compact is denoted by $C_c(X)$.

*Observe that $C_c(X)$ is a vector space. This is due to two facts:*

(a) The support of $f+g$ lies in the union of the support of $f$ and the support of $g$, and any finite union of compact sets is compact.

(b) The sum of two continuous complex functions is continuous, as are scalar multiples of continuous functions.

(Statement and proof of Theorem $1.8$ hold verbatim if "measurable function" is replaced by "continuous function," " measurable space" by "topological space"; take $\Phi(s, t)=s+t$, or $\Phi(s, t)=s t$, to prove that sums and products of continuous functions are continuous.)

## 2.10 Theorem

Let $X$ and $Y$ be topological spaces, and let $f: X \rightarrow Y$ be continuous. If $K$ is a compact subset of $X$, then $f(K)$ is compact.

**Proof** If $\left\{V_\alpha\right\}$ is an open cover of $f(K)$, then $\left\{f^{-1}\left(V_\alpha\right)\right\}$ is an open cover of $K$, hence $K \subset f^{-1}\left(V_{\alpha_1}\right) \cup \cdots \cup f^{-1}\left(V_{\alpha_n}\right)$ for some $\alpha_1, \ldots, \alpha_n$, and therefore $f(K) \subset V_{\alpha_1} \cup \cdots \cup V_{\alpha_n}$.

**Corollary** The range of any $f \in C_c(X)$ is a compact subset of the complex plane.

In fact, if $K$ is the support of $f \in C_c(X)$, then $f(X) \subset f(K) \cup\{0\}$. If $X$ is not compact, then $0 \in f(X)$, but 0 need not lie in $f(K)$, as is seen by easy examples.

## 2.11 Notation

In this chapter the following conventions will be used. The notation

$$
\begin{equation}
K \prec f
\end{equation}
$$

will mean that $K$ is a compact subset of $X$, that $f \in C_c(X)$, that $0 \leq f(x) \leq 1$ for all $x \in X$, and that $f(x)=1$ for all $x \in K$. The notation

$$
f \prec V
$$

will mean that $V$ is open, that $f \in C_c(X), 0 \leq f \leq 1$, and that the support of $f$ lies in $V$. The notation

$$
\begin{equation}
K \prec f \prec V
\end{equation}
$$

will be used to indicate that both (1) and (2) hold.

## 2.12 Urysohn's Lemma

Suppose $X$ is a locally compact Hausdorff space, $V$ is open in $X, K \subset V$, and $K$ is compact. Then there exists an $f \in C_c(X)$, such that

$$
\begin{equation}
K \prec f \prec V .
\end{equation}
$$

In terms of characteristic functions, the conclusion asserts the existence of a **continuous function** $f$ which satisfies the inequalities $\chi_K \leq f \leq \chi_V$. Note that it is easy to find **semicontinuous         ** functions which do this; examples are $\chi_K$ and $\chi_V$.

**Proof** Put $r_1=0, r_2=1$, and let $r_3, r_4, r_5, \ldots$ be an enumeration of the rationals in $(0,1)$. By Theorem $2.7$, we can find open sets $V_0$ and then $V_1$ such that $\bar{V}_0$ is compact and

$$
\begin{equation}
K \subset V_1 \subset \bar{V}_1 \subset V_0 \subset \bar{V}_0 \subset V .
\end{equation}
$$

Suppose $n \geq 2$ and $V_{r_1}, \ldots, V_{r_n}$ have been chosen in such a manner that $r_i<r_j$ implies $\bar{V}_{r_j} \subset V_{r_i}$. Then one of the numbers $r_1, \ldots, r_n$, say $r_i$, will be the largest one which is smaller than $r_{n+1}$, and another, say $r_j$, will be the smallest one larger than $r_{n+1}$. Using Theorem $2.7$ again, we can find $V_{r_{n+1}}$ so that

$$
\begin{equation}
\bar{V}_{r_j} \subset V_{r_{n+1}} \subset \bar{V}_{r_{n+1}} \subset V_{r_i} .
\end{equation}
$$


Continuing, we obtain a collection $\left\{V_r\right\}$ of open sets, one for every rational $r \in[0,1]$, with the following properties: $K \subset V_1, \bar{V}_0 \subset V, e a c h \bar{V}_r$ is compact, and

$$
\begin{equation}
s>r \text { implies } \bar{V}_s \subset V_r \text {. }
\end{equation}
$$

Define

$$
\begin{equation}
f_r(x)=\left\{\begin{array}{ll}
r & \text { if } x \in V_r, \\
0 & \text { otherwise },
\end{array} \quad g_s(x)= \begin{cases}1 & \text { if } x \in \bar{V}_s, \\
s & \text { otherwise }\end{cases}\right.
\end{equation}
$$

and

$$
\begin{equation}
f=\sup _r f_r, \quad g=\inf _s g_s
\end{equation}
$$

The remarks following Definition $2.8$ show that $f$ is lower semicontinuous and that $g$ is upper semicontinuous. It is clear that $0 \leq f \leq 1$, that $f(x)=1$ if $x \in K$, and that $f$ has its support in $\bar{V}_0$. The proof will be completed by showing that $f=g$.

The inequality $f_r(x)>g_s(x)$ is possible only if $r>s, x \in V_r$, and $x \notin \bar{V}_s$.
But $r>s$ implies $V_r \subset V_s$. Hence $f_r \leq g_s$ for all $r$ and $s$, so $f \leq g$.

Suppose $f(x)<g(x)$ for some $x$. Then there are rationals $r$ and $s$ such that $f(x)<r<s<g(x)$. Since $f(x)<r$, we have $x \notin V_r$; since $g(x)>s$, we have $x \in \bar{V}_s$. By (3), this is a contradiction. Hence $f=g$.∎


## 2.13 Theorem

Suppose $V_1, \ldots, V_n$ are open subsets of a locally compact Hausdorff space $X, K$ is compact, and

$$
\begin{equation}
K \subset V_1 \cup \cdots \cup V_n .
\end{equation}
$$

Then there exist functions $h_i \prec V_i(i=1, \ldots, n)$ such that

$$
\begin{equation}
h_1(x)+\cdots+h_n(x)=1 \quad(x \in K) .
\end{equation}
$$

Because of (1), the collection $\left\{h_1, \ldots, h_n\right\}$ is called a partition of unity on $K$, subordinate to the cover $\left\{V_1, \ldots, V_n\right\}$.

**Proof** By Theorem 2.7, each $x \in K$ has a neighborhood $W_x$ with compact closure $\bar{W}_x \subset V_i$ for some $i$ (depending on $x$ ). There are points $x_1, \ldots, x_m$ such that $W_{x_1} \cup \cdots \cup W_{x_m} \supset K$. If $1 \leq i \leq n$, let $H_i$ be the union of those $W_{x_j}$ which lie in $V_i$. By Urysohn's lemma, there are functions $g_i$ such that $H_i \prec g_i \prec V_i$. Define

$$
\begin{equation}
\begin{aligned}
&h_1=g_1 \\
&h_2=\left(1-g_1\right) g_2 \\
&\cdots \ldots \ldots \\
&h_n=\left(1-g_1\right)\left(1-g_2\right) \cdots\left(1-g_{n-1}\right) g_n .
\end{aligned}
\end{equation}
$$

Then $h_i \prec V_i$. It is easily verified, by induction, that

$$
\begin{equation}
h_1+h_2+\cdots+h_n=1-\left(1-g_1\right)\left(1-g_2\right) \cdots\left(1-g_n\right) \text {. }
\end{equation}
$$

Since $K \subset H_1 \cup \cdots \cup H_n$, at least one $g_i(x)=1$ at each point $x \in K$; hence (3) shows that (1) holds.

