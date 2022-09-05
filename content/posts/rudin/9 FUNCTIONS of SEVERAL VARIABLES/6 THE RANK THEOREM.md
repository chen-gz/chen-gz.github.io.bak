---
title: 6 THE RANK THEOREM
date: 2022-08-13
---

Although this theorem is not as important as the inverse function theorem or the implicit function theorem, we include it as another interesting illustration of the general principle that the local behavior of a continuously differentiable mapping $\mathbf{F}$ near a point $\mathbf{x}$ is similar to that of the linear transformation $\mathbf{F}^{\prime}(\mathbf{x})$.

Before stating it, we need a few more facts about linear transformations.

**9.30 Definitions** Suppose $X$ and $Y$ are vector spaces, and $A \in L(X, Y)$, as in Definition 9.6. The null space of $A, \mathscr{N}(A)$, is the set of all $\mathbf{x} \in X$ at which $A \mathbf{x}=\mathbf{0}$. It is clear that $\mathcal{N}(A)$ is a vector space in $X$.

Likewise, the range of $A, \mathscr{R}(A)$, is a vector space in $Y$.

The $\operatorname{rank}$ of $A$ is defined to be the dimension of $\mathscr{R}(A)$.

For example, the invertible elements of $L\left(R^{n}\right)$ are precisely those whose rank is $n$. This follows from Theorem 9.5.

If $A \in L(X, Y)$ and $A$ has $\operatorname{rank} 0$, then $A \mathbf{x}=0$ for all $x \in A$, hence $\mathscr{N}(A)=X$. In this connection, see Exercise $25 .$

**9.31 Projections** Let $X$ be a vector space. An operator $P \in L(X)$ is said to be a projection in $X$ if $P^{2}=P$.

More explicitly, the requirement is that $P(P \mathbf{x})=P \mathbf{x}$ for every $\mathbf{x} \in X$. In other words, $P$ fixes every vector in its range $\mathscr{R}(P)$.

Here are some elementary properties of projections:

(a) If $P$ is a projection in $X$, then every $\mathbf{x} \in X$ has a unique representation of the form

$$
\mathbf{x}=\mathbf{x}_{1}+\mathbf{x}_{2}
$$

where $\mathbf{x}_{1} \in \mathscr{R}(P), \mathbf{x}_{2} \in \mathscr{N}(P)$.

To obtain the representation, put $\mathbf{x}_{1}=P \mathbf{x}, \mathbf{x}_{2}=\mathbf{x}-\mathbf{x}_{1}$. Then $P \mathbf{x}_{2}=P \mathbf{x}-P \mathbf{x}_{1}=P \mathbf{x}-P^{2} \mathbf{x}=0$. As regards the uniqueness, apply $P$ to the equation $\mathbf{x}=\mathbf{x}_{1}+\mathbf{x}_{2}$. Since $\mathbf{x}_{1} \in \mathscr{R}(P), P \mathbf{x}_{1}=\mathbf{x}_{1}$; since $P \mathbf{x}_{2}=\mathbf{0}$, it follows that $\mathbf{x}_{1}=P \mathbf{x}$.

(b) If $X$ is a finite-dimensional vector space and if $X_{1}$ is a vector space in $X$, then there is a projection $P$ in $X$ with $\mathscr{R}(P)=X_{1}$. If $X_{1}$ contains only 0 , this is trivial: put $P \mathbf{x}=\mathbf{0}$ for all $\mathbf{x} \in X$.

Assume $\operatorname{dim} X_{1}=k>0$. By Theorem 9.3, $X$ has then a basis $\left\{\mathbf{u}_{1}, \ldots, \mathbf{u}_{n}\right\}$ such that $\left\{\mathbf{u}_{1}, \ldots, \mathbf{u}_{k}\right\}$ is a basis of $X_{1}$. Define

$$
P\left(c_{1} \mathbf{u}_{1}+\cdots+c_{n} \mathbf{u}_{n}\right)=c_{1} \mathbf{u}_{1}+\cdots+c_{k} \mathbf{u}_{k}
$$

for arbitrary scalars $c_{1}, \ldots, c_{n}$.

Then $P \mathbf{x}=\mathbf{x}$ for every $\mathbf{x} \in X_{1}$, and $X_{1}=\mathscr{R}(P)$.

Note that $\left\{\mathbf{u}_{k+1}, \ldots, \mathbf{u}_{n}\right\}$ is a basis of $\mathcal{N}(P)$. Note also that there are infinitely many projections in $X$, with range $X_{1}$, if $0<\operatorname{dim} X_{1}<\operatorname{dim} X$.

**9.32 Theorem** Suppose $m, n, r$ are nonnegative integers, $m \geq r, n \geq r, \mathbf{F}$ is a $\mathscr{C}^{\prime}$-mapping of an open set $E \subset R^{n}$ into $R^{m}$, and $\mathbf{F}^{\prime}(\mathbf{x})$ has rank $r$ for every $\mathbf{x} \in E$.

Fix $\mathbf{a} \in E$, put $A=\mathbf{F}^{\prime}(\mathbf{a})$, let $Y_{1}$ be the range of $A$, and let $P$ be a projection in $R^{m}$ whose range is $Y_{1}$. Let $Y_{2}$ be the null space of $P$.

Then there are open sets $U$ and $V$ in $R^{n}$, with $\mathbf{a} \in U, U \subset E$, and there is a 1-1 $\mathscr{C}^{\prime}$-mapping $\mathbf{H}$ of $V$ onto $U$ (whose inverse is also of class $\mathscr{C}^{\prime}$ ) such that

$$
\mathbf{F}(\mathbf{H}(\mathbf{x}))=A \mathbf{x}+\varphi(A \mathbf{x}) \quad(\mathbf{x} \in V)
$$

where $\varphi$ is $a \mathscr{C}^{\prime}$-mapping of the open set $A(V) \subset Y_{1}$ into $Y_{2}$.

After the proof we shall give a more geometric description of the information that (66) contains.

Proof If $r=0$, Theorem $9.19$ shows that $\mathbf{F}(\mathbf{x})$ is constant in a neighborhood $U$ of a, and (66) holds trivially, with $V=U, \mathbf{H}(\mathbf{x})=\mathbf{x}, \varphi(0)=\mathbf{F}(\mathbf{a})$.

From now on we assume $r>0$. Since $\operatorname{dim} Y_{1}=r, Y_{1}$ has a basis $\left\{\mathbf{y}_{1}, \ldots, \mathbf{y}_{r}\right\}$. Choose $\mathbf{z}_{i} \in R^{n}$ so that $A \mathbf{z}_{i}=\mathbf{y}_{i}(1 \leq i \leq r)$, and define a linear mapping $S$ of $Y_{1}$ into $R^{n}$ by setting

$$
S\left(c_{1} \mathbf{y}_{1}+\cdots+c_{r} \mathbf{y}_{r}\right)=c_{1} \mathbf{z}_{1}+\cdots+c_{r} \mathbf{z}_{r}
$$

for all scalars $c_{1}, \ldots, c_{r}$.

Then $A S \mathbf{y}_{i}=A \mathbf{z}_{i}=\mathbf{y}_{i}$ for $1 \leq i \leq r$. Thus

$$
A S \mathbf{y}=\mathrm{y} \quad\left(\mathrm{y} \in Y_{1}\right) \text {. }
$$

Define a mapping $\mathbf{G}$ of $E$ into $R^{n}$ by setting

$$
\mathbf{G}(\mathbf{x})=\mathbf{x}+S P[\mathbf{F}(\mathbf{x})-A \mathbf{x}] \quad(\mathbf{x} \in E) .
$$

Since $\mathbf{F}^{\prime}(\mathbf{a})=A$, differentiation of (69) shows that $\mathbf{G}^{\prime}(\mathbf{a})=I$, the identity operator on $R^{n}$. By the inverse function theorem, there are open sets $U$ and $V$ in $R^{n}$, with $\mathbf{a} \in U$, such that $\mathbf{G}$ is a 1-1 mapping of $U$ onto $V$ whose inverse $\mathbf{H}$ is also of class $\mathscr{C}^{\prime}$. Moreover, by shrinking $U$ and $V$, if necessary, we can arrange it so that $V$ is convex and $\mathbf{H}^{\prime}(\mathbf{x})$ is invertible for every $\mathbf{x} \in V$. Note that $A S P A=A$, since $P A=A$ and (68) holds. Therefore (69) gives

$$
A \mathbf{G}(\mathbf{x})=P \mathbf{F}(\mathbf{x}) \quad(\mathbf{x} \in E) .
$$

In particular, (70) holds for $\mathbf{x} \in U$. If we replace $\mathbf{x}$ by $\mathbf{H}(\mathbf{x})$, we obtain

$$
P \mathbf{F}(\mathbf{H}(\mathbf{x}))=A \mathbf{x} \quad(\mathrm{x} \in V) .
$$

Define

$$
\psi(\mathbf{x})=\mathbf{F}(\mathbf{H}(\mathbf{x}))-A \mathbf{x} \quad(\mathbf{x} \in V)
$$

Since $P A=A$, (71) implies that $P \psi(\mathbf{x})=0$ for all $\mathbf{x} \in V$. Thus $\psi$ is a $\mathscr{C}^{\prime}$-mapping of $V$ into $Y_{2}$.

Since $V$ is open, it is clear that $A(V)$ is an open subset of its range $\mathscr{R}(A)=Y_{1}$

To complete the proof, i.e., to go from (72) to (66), we have to show that there is a $\mathscr{C}^{\prime}$-mapping $\varphi$ of $A(V)$ into $Y_{2}$ which satisfies

$$
\varphi(A \mathbf{x})=\psi(\mathbf{x}) \quad(\mathbf{x} \in V) .
$$

As a step toward (73), we will first prove that

$$
\psi\left(\mathbf{x}_{1}\right)=\psi\left(\mathbf{x}_{2}\right)
$$

if $\mathbf{x}_{1} \in V, \mathbf{x}_{2} \in V, A \mathbf{x}_{1}=A \mathbf{x}_{2}$.

Put $\Phi(\mathbf{x})=\mathbf{F}(\mathbf{H}(\mathbf{x}))$, for $\mathbf{x} \in V$. Since $\mathbf{H}^{\prime}(\mathbf{x})$ has rank $n$ for every $\mathbf{x} \in V$, and $\mathbf{F}^{\prime}(\mathbf{x})$ has rank $r$ for every $\mathbf{x} \in U$, it follows that

$$
\operatorname{rank} \Phi^{\prime}(\mathbf{x})=\operatorname{rank} \mathbf{F}^{\prime}(\mathbf{H}(\mathbf{x})) \mathbf{H}^{\prime}(\mathbf{x})=r \quad(\mathbf{x} \in V) .
$$

Fix $\mathbf{x} \in V$. Let $M$ be the range of $\Phi^{\prime}(\mathbf{x})$. Then $M \subset R^{m}, \operatorname{dim} M=r$. By (71),

$$
P \Phi^{\prime}(\mathbf{x})=A .
$$

Thus $P$ maps $M$ onto $\mathscr{R}(A)=Y_{1}$. Since $M$ and $Y_{1}$ have the same dimension, it follows that $P$ (restricted to $M$ ) is 1-1.

Suppose now that $A \mathbf{h}=\mathbf{0}$. Then $P \Phi^{\prime}(\mathbf{x}) \mathbf{h}=\mathbf{0}$, by (76). But $\Phi^{\prime}(\mathbf{x}) \mathbf{h} \in M$, and $P$ is 1-1 on $M$. Hence $\Phi^{\prime}(\mathbf{x}) \mathbf{h}=\mathbf{0}$. A look at (72) shows now that we have proved the following:

If $\mathbf{x} \in V$ and $A \mathbf{h}=\mathbf{0}$, then $\psi^{\prime}(\mathbf{x}) \mathbf{h}=\mathbf{0}$.

We can now prove (74). Suppose $\mathbf{x}_{1} \in V, \mathbf{x}_{2} \in V, A \mathbf{x}_{1}=A \mathbf{x}_{2}$. Put $\mathbf{h}=\mathbf{x}_{2}-\mathbf{x}_{1}$ and define

$$
\mathbf{g}(t)=\psi\left(\mathbf{x}_{1}+t \mathbf{h}\right) \quad(0 \leq t \leq 1)
$$

The convexity of $V$ shows that $\mathbf{x}_{1}+t \mathbf{h} \in V$ for these $t$. Hence

$$
\mathbf{g}^{\prime}(t)=\psi^{\prime}\left(\mathbf{x}_{1}+t \mathbf{h}\right) h=0 \quad(0 \leq t \leq 1),
$$

so that $\mathbf{g}(1)=\mathbf{g}(0)$. But $\mathbf{g}(1)=\psi\left(\mathbf{x}_{2}\right)$ and $\mathbf{g}(0)=\psi\left(\mathbf{x}_{1}\right)$. This proves (74).

By (74), $\psi(\mathbf{x})$ depends only on $A \mathbf{x}$, for $\mathbf{x} \in V$. Hence (73) defines $\varphi$ unambiguously in $A(V)$. It only remains to be proved that $\varphi \in \mathscr{C}^{\prime}$.

Fix $\mathbf{y}_{0} \in A(V)$, fix $\mathbf{x}_{0} \in V$ so that $A \mathbf{x}_{0}=\mathbf{y}_{0}$. Since $V$ is open, $\mathbf{y}_{0}$ has a neighborhood $W$ in $Y_{1}$ such that the vector

$$
\mathbf{x}=\mathbf{x}_{0}+S\left(\mathbf{y}-\mathbf{y}_{0}\right)
$$

lies in $V$ for all $\mathbf{y} \in W$. By (68),

$$
A \mathrm{x}=A \mathrm{x}_{0}+\mathrm{y}-\mathrm{y}_{0}=\mathrm{y}
$$

Thus (73) and (79) give

$$
\varphi(\mathbf{y})=\psi\left(\mathbf{x}_{0}-S \mathbf{y}_{0}+S \mathbf{y}\right) \quad(\mathbf{y} \in W) .
$$

This formula shows that $\varphi \in \mathscr{C}^{\prime}$ in $W$, hence in $A(V)$, since $\mathbf{y}_{0}$ was chosen arbitrarily in $A(V)$.

The proof is now complete.

Here is what the theorem tells us about the geometry of the mapping $\mathbf{F}$.

If $\mathbf{y} \in \mathbf{F}(U)$ then $\mathbf{y}=\mathbf{F}(\mathbf{H}(\mathbf{x}))$ for some $\mathbf{x} \in V$, and (66) shows that $P \mathbf{y}=A \mathbf{x}$. Therefore

$$
\mathbf{y}=P \mathbf{y}+\varphi(P \mathbf{y}) \quad(\mathbf{y} \in \mathbf{F}(U))
$$

This shows that $y$ is determined by its projection $P \mathbf{y}$, and that $P$, restricted to $\mathbf{F}(U)$, is a 1-1 mapping of $\mathbf{F}(U)$ onto $A(V)$. Thus $\mathbf{F}(U)$ is an " $r$-dimensional surface" with precisely one point "over" each point of $A(V)$. We may also regard $F(U)$ as the graph of $\varphi$.

If $\Phi(\mathbf{x})=\mathbf{F}(\mathbf{H}(\mathbf{x}))$, as in the proof, then (66) shows that the level sets of $\Phi$ (these are the sets on which $\Phi$ attains a given value) are precisely the level sets of $A$ in $V$. These are "flat" since they are intersections with $V$ of translates of the vector space $\mathcal{N}(A)$. Note that $\operatorname{dim} \mathcal{N}(A)=n-r$ (Exercise 25).

The level sets of $\mathbf{F}$ in $U$ are the images under $\mathbf{H}$ of the flat level sets of $\Phi$ in $V$. They are thus " $(n-r)$-dimensional surfaces" in $U$.
