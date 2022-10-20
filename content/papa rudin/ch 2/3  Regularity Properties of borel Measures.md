---
title: 3  Regularity Properties of borel Measures
date: 2022-10-15
---

### 2.15 Definition

 A measure $\mu$ defined on the $\sigma$-algebra of all Borel sets in a locally compact Hausdorff space $X$ is called a **Borel measure** on $X$. If $\mu$ is positive, a Borel set $E \subset X$ is **outer regular** or **inner regular**, respectively, if $E$ has property $(c)$ or $(d)$ of Theorem 2.14. If every Borel set in $X$ is both outer and inner regular, $\mu$ is called regular.

In our proof of the Riesz theorem, outer regularity of every set $E$ was built into the construction, but inner regularity was proved only for the open sets and for those $E \in \mathfrak{M}$ for which $\mu(E)<\infty$. It turns out that this flaw is in the nature of things. One cannot prove regularity of $\mu$ under the hypothesis of Theorem 2.14; an example is described in Exercise 17.

However, a slight strengthening of the hypotheses does give us a regular measure. Theorem $2.17$ shows this. And if we specialize a little more, Theorem $2.18$ shows that all regularity problems neatly disappear.


### 2.16 Definition

A set $E$ in a topological space is called $\sigma$-compact if $E$ is a countable union of compact sets.


A set $E$ in a measure space (with measure $\mu$ ) is said to have $\sigma$-finite measure if $E$ is a countable union of sets $E_i$ with $\mu\left(E_i\right)<\infty$.

For example, in the situation described in Theorem 2.14, every $\sigma$ compact set has $\sigma$-finite measure. Also, it is easy to see that if $E \in \mathfrak{M}$ and $E$ has $\sigma$-finite measure, then $E$ is inner regular.

### 2.17 theorem

Suppose $X$ is a locally compact, $\sigma$-compact Hausdorff space. If $\mathfrak{M}$ and $\mu$ are as described in the statement of Theorem 2.14, then $\mathfrak{M}$ and $\mu$ have the following properties:

(a) If $E \in \mathfrak{M}$ and $\epsilon>0$, there is a closed set $F$ and an open set $V$ such that $F \subset E \subset V$ and $\mu(V-F)<\epsilon$.
(b) $\mu$ is a regular Borel measure on $X$.
(c) If $E \in \mathfrak{M}$, there are sets $A$ and $B$ such that $A$ is an $F_\sigma, B$ is a $G_\delta$, $A \subset E \subset B$, and $\mu(B-A)=0$

As a corollary of $(c)$ we see that every $E \in \mathfrak{M}$ is the union of an $F_\sigma$ and a set of measure 0 .

**Proof** Let $X=K_1 \cup K_2 \cup K_3 \cup \cdots$, where each $K_n$ is compact. If $E \in \mathfrak{M}$ and $\epsilon>0$, then $\mu\left(K_n \cap E\right)<\infty$, and there are open sets $V_n \supset K_n \cap E$ such that

$$
\mu\left(V_n-\left(K_n \cap E\right)\right)<\frac{\epsilon}{2^{n+1}} \quad(n=1,2,3, \ldots)
$$

If $V=\bigcup V_n$, then $V-E \subset \bigcup\left(V_n-\left(K_n \cap E\right)\right)$, so that

$$
\mu(V-E)<\frac{\epsilon}{2}
$$


### 2.18 Theorem 

Let $X$ be a locally compact Hausdorff space in which every open set is $\sigma$-compact. Let $\lambda$ be any positive Borel measure on $X$ such that $\lambda(K)<\infty$ for every compact set $K$. Then $\lambda$ is regular.

Note that every euclidean space $R^k$ satisfies the present hypothesis, since every open set in $R^k$ is a countable union of closed balls.


**Proof** Put $\Lambda f=\int_X f d \lambda$, for $f \in C_c(X)$. Since $\lambda(K)<\infty$ for every compact $K$ $\Lambda$ is a positive linear functional on $C_c(X)$, and there is a regular measure $\mu$, satisfying the conclusions of Theorem $2.17$, such that

$$
\begin{equation}
\int_X f d \lambda=\int_X f d \mu \quad\left(f \in C_c(X)\right)
\end{equation}
$$

We will show that $\lambda=\mu$.

Let $V$ be open in $X$. Then $V=\bigcup K_i$, where $K_i$ is compact, $i=1,2,3, \ldots$ By Urysohn's lemma we can choose $f_i$ so that $K_i \prec f_i \prec V$. Let $g_n=\max \left(f_1, \ldots, f_n\right)$. Then $g_n \in C_c(X)$ and $g_n(x)$ increases to $\chi_V(x)$ at every point $x \in X$. Hence (1) and the monotone convergence theorem imply

$$
\begin{equation}
\lambda(V)=\lim _{n \rightarrow \infty} \int_X g_n d \lambda=\lim _{n \rightarrow \infty} \int_X g_n d \mu=\mu(V) .
\end{equation}
$$

Now let $E$ be a Borel set in $X$, and choose $\epsilon>0$. Since $\mu$ satisfies Theorem $2.17$, there is a closed set $F$ and an open set $V$ such that $F \subset E \subset V$ and $\mu(V-F)<\epsilon$. Hence $\mu(V) \leq \mu(F)+\epsilon \leq \mu(E)+\epsilon$.

Since $V-F$ is open, (2) shows that $\lambda(V-F)<\epsilon$, hence $\lambda(V) \leq \lambda(E)+\epsilon$. Consequently
$\lambda(E) \leq \lambda(V)=\mu(V) \leq \mu(E)+\epsilon$
and $\mu(E) \leq \mu(V)=\lambda(V) \leq \lambda(E)+\epsilon$,
so that $|\lambda(E)-\mu(E)|<\epsilon$ for every $\epsilon>0$. Hence $\lambda(E)=\mu(E)$.
