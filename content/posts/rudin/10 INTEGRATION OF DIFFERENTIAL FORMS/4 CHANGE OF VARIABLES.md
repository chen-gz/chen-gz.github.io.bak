---
title: 4 CHANGE OF VARIABLES
date: 2022-08-15
---

We can now describe the effect of a change of variables on a multiple integral. For simplicity, we confine ourselves here to continuous functions with compact support, although this is too restrictive for many applications. This is illustrated by Exercises 9 to 13 .

**10.9 Theorem** Suppose $T$ is a 1-1 $\mathscr{C}^{\prime}$-mapping of an open set $E \subset R^{k}$ into $R^{k}$ such that $J_{T}(\mathbf{x}) \neq 0$ for all $\mathbf{x} \in E$. Iff is a continuous function on $R^{k}$ whose support is compact and lies in $T(E)$, then

$$
\int_{R^{\mathbf{k}}} f(\mathbf{y}) d \mathbf{y}=\int_{R^{\mathbf{k}}} f(T(\mathbf{x}))\left|J_{T}(\mathbf{x})\right| d \mathbf{x} .
$$

We recall that $J_{T}$ is the Jacobian of $T$. The assumption $J_{T}(\mathbf{x}) \neq 0$ implies, by the inverse function theorem, that $T^{-1}$ is continuous on $T(E)$, and this ensures that the integrand on the right of (31) has compact support in $E$ (Theorem 4.14).

The appearance of the absolute value of $J_{T}(\mathbf{x})$ in (31) may call for a comment. Take the case $k=1$, and suppose $T$ is a $1-1 \mathscr{C}^{\prime}$-mapping of $R^{1}$ onto $R^{1}$. Then $J_{T}(x)=T^{\prime}(x)$; and if $T$ is increasing, we have

$$
\int_{R^{1}} f(y) d y=\int_{R^{1}} f(T(x)) T^{\prime}(x) d x,
$$

by Theorems $6.19$ and $6.17$, for all continuous $f$ with compact support. But if $T$ decreases, then $T^{\prime}(x)<0$; and if $f$ is positive in the interior of its support, the left side of (32) is positive and the right side is negative. A correct equation is obtained if $T^{\prime}$ is replaced by $\left|T^{\prime}\right|$ in (32).

The point is that the integrals we are now considering are integrals of functions over subsets of $R^{k}$, and we associate no direction or orientation with these subsets. We shall adopt a different point of view when we come to integration of differential forms over surfaces.

Proof It follows from the remarks just made that (31) is true if $T$ is a primitive $\mathscr{C}^{\prime}$-mapping (see Definition 10.5), and Theorem $10.2$ shows that (31) is true if $T$ is a linear mapping which merely interchanges two coordinates.

If the theorem is true for transformations $P, Q$, and if $S(\mathbf{x})=P(Q(\mathbf{x}))$, then

$$
\begin{aligned}
\int f(\mathbf{z}) d \mathbf{z} &=\int f(P(\mathbf{y}))\left|J_{P}(\mathbf{y})\right| d \mathbf{y} \\
&=\int f(P(Q(\mathbf{x})))\left|J_{P}(Q(\mathbf{x}))\right|\left|J_{Q}(\mathbf{x})\right| d \mathbf{x} \\
&=\int f(S(\mathbf{x}))\left|J_{S}(\mathbf{x})\right| d \mathbf{x}
\end{aligned}
$$

since

$$
\begin{aligned}
J_{P}(Q(\mathbf{x})) J_{Q}(\mathbf{x}) &=\operatorname{det} P^{\prime}(Q(\mathbf{x})) \operatorname{det} Q^{\prime}(\mathbf{x}) \\
&=\operatorname{det} P^{\prime}(Q(\mathbf{x})) Q^{\prime}(\mathbf{x})=\operatorname{det} S^{\prime}(\mathbf{x})=J_{S}(\mathbf{x})
\end{aligned}
$$

by the multiplication theorem for determinants and the chain.rule. Thus the theorem is also true for $S$.

Each point $\mathbf{a} \in E$ has a neighborhood $U \subset E$ in which

$$
T(\mathbf{x})=T(\mathbf{a})+B_{1} \cdots B_{k-1} \mathbf{G}_{k} \circ \mathbf{G}_{k-1} \circ \cdots \circ \mathbf{G}_{1}(\mathbf{x}-\mathbf{a}),
$$

where $\mathbf{G}_{i}$ and $B_{i}$ are as in Theorem 10.7. Setting $V=T(U)$, it follows that (31) holds if the support of $f$ lies in $V$. Thus:

Each point $\mathbf{y} \in T(E)$ lies in an open set $V_{\mathbf{y}} \subset T(E)$ such that (31) holds for all continuous functions whose support lies in $V_{\mathbf{y}}$.

Now let $f$ be a continuous function with compact support $K \subset T(E)$. Since $\left\{V_{\mathbf{y}}\right\}$ covers $K$, the Corollary to Theorem $10.8$ shcrvs that $f=\Sigma \psi_{i} f$, where each $\psi_{i}$ is continuous, and each $\psi_{i}$ has its support in some $\mathbf{V}_{\mathbf{y}}$. Thus (31) holds for each $\psi_{i} f$, and hence also for their sum $f$.