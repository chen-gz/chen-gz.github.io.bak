---
title: 2 Product Measures
date: 2023-01-16
---

### 8.6 Theorem 

Let $(X, \mathscr{S}, \mu)$ and $(Y, \mathscr{T}, \lambda)$ be $\sigma$-finite measure spaces. Suppose $Q \in \mathscr{S} \times \mathscr{T}$. If
$$
\varphi(x)=\lambda\left(Q_x\right), \quad \psi(y)=\mu\left(Q^y\right)
$$
for every $x \in X$ and $y \in Y$, then $\varphi$ is $\mathscr{S}$-measurable, $\psi$ is $\mathscr{T}$-measurable, and
$$
\int_X \varphi d \mu=\int_Y \psi d \lambda
$$
Notes: The assumptions on the measure spaces are, more explicitly, that $\mu$ and $\lambda$ are positive measures on $\mathscr{S}$ and $\mathscr{T}$, respectively, that $X$ is the union of countably many disjoint sets $X_n$ with $\mu\left(X_n\right)<\infty$, and that $Y$ is the union of countably many disjoint sets $Y_m$ with $\lambda\left(Y_m\right)<\infty$.

Theorem $8.2$ shows that the definitions (1) make sense. Since
$$
\lambda\left(Q_x\right)=\int_Y \chi_Q(x, y) d \lambda(y) \quad(x \in X)
$$
with a similar statement for $\mu\left(Q^y\right)$, the conclusion (2) can be written in the form
$$
\int_X d \mu(x) \int_Y \chi_Q(x, y) d \lambda(y)=\int_Y d \lambda(y) \int_X \chi_Q(x, y) d \mu(x) .
$$
Proof Let $\Omega$ be the class of all $Q \in \mathscr{S} \times \mathscr{T}$ for which the conclusion of the theorem holds. We claim that $\Omega$ has the following four properties:

(a) Every measurable rectangle belongs to $\Omega$.
(b) If $Q_1 \subset Q_2 \subset Q_3 \subset \cdots$, if each $Q_i \in \Omega$, and if $Q=\bigcup Q_i$, then $Q \in \Omega$.
(c) If $\left\{Q_i\right\}$ is a disjoint countable collection of members of $\Omega$, and if $Q=\bigcup Q_i$, then $Q \in \Omega$.
(d) If $\mu(A)<\infty$ and $\lambda(B)<\infty$, if $A \times B \supset Q_1 \supset Q_2 \supset Q_3 \supset \cdots$, if $Q=\bigcap Q_i$ and $Q_i \in \Omega$ for $i=1,2,3, \ldots$, then $Q \in \Omega$.

If $Q=A \times B$, where $A \in \mathscr{S}, B \in \mathscr{T}$, then
$$
\lambda\left(Q_x\right)=\lambda(B) \chi_A(x) \text { and } \mu\left(Q^y\right)=\mu(A) \chi_B(y) \text {, }
$$
and therefore each of the integrals in (2) is equal to $\mu(A) \lambda(B)$. This gives $(a)$.

To prove (b), let $\varphi_i$ and $\psi_i$ be associated with $Q_i$ in the way in which (1) associates $\varphi$ and $\psi$ with $Q$. The countable additivity of $\mu$ and $\lambda$ shows that
$$
\varphi_i(x) \rightarrow \varphi(x), \quad \psi_i(y) \rightarrow \psi(y) \quad(i \rightarrow \infty),
$$
the convergence being monotone increasing at every point. Since $\varphi_i$ and $\psi_i$ are assumed to satisfy the conclusion of the theorem, (b) follows from the monotone convergence theorem.

For finite unions of disjoint sets, $(c)$ is clear, because the characteristic function of a union of disjoint sets is the sum of their characteristic functions. The general case of $(c)$ now follows from $(b)$.

The proof of $(d)$ is like that of $(b)$, except that we use the dominated convergence theorem in place of the monotone convergence theorem. This is legitimate, since $\mu(A)<\infty$ and $\lambda(B)<\infty$.
Now define
$$
Q_{m n}=Q \cap\left(X_n \times Y_m\right) \quad(m, n=1,2,3, \ldots)
$$
and let $\mathfrak{M}$ be the class of all $Q \in \mathscr{S} \times \mathscr{T}$ such that $Q_{m n} \in \Omega$ for all choices of $m$ and $n$. Then $(b)$ and $(d)$ show that $\mathfrak{M}$ is a monotone class; $(a)$ and $(c)$ show that $\mathscr{E} \subset \mathfrak{M}$; and since $\mathfrak{M} \subset \mathscr{S} \times \mathscr{T}$, Theorem $8.3$ implies that $\mathfrak{M}=\mathscr{S} \times \mathscr{T}$.

Thus $Q_{m n} \in \Omega$ for every $Q \in \mathscr{S} \times \mathscr{T}$ and for all choices of $m$ and $n$. Since $Q$ is the union of the sets $Q_{m n}$ and since these sets are disjoint, we conclude from $(c)$ that $Q \in \Omega$. This completes the proof.

### 8.7 Definition

If $(X, \mathscr{S}, \mu)$ and $(Y, \mathscr{T}, \lambda)$ are as in Theorem 8.6, and if $Q \in \mathscr{S} \times \mathscr{T}$, we define
$$
(\mu \times \lambda)(Q)=\int_X \lambda\left(Q_x\right) d \mu(x)=\int_Y \mu\left(Q^y\right) d \lambda(y) .
$$
The equality of the integrals in (1) is the content of Theorem 8.6. We call $\mu \times \lambda$ the product of the measures $\mu$ and $\lambda$. That $\mu \times \lambda$ is really a measure (i.e., that $\mu \times \lambda$ is countably additive on $\mathscr{S} \times \mathscr{T}$ ) follows immediately from Theorem 1.27.

Observe also that $\mu \times \lambda$ is $\sigma$-finite.
