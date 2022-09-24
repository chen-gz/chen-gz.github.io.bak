---
title: 2 PRIMITIVE MAPPINGS
date: 2022-08-15
---

**10.5 Definition** If $\mathbf{G}$ maps an open set $E \subset R^{n}$ into $R^{n}$, and if there is an integer $m$ and a real function $g$ with domain $E$ such that

$$
\mathbf{G}(\mathbf{x})=\sum_{i \neq m} x_{i} \mathbf{e}_{i}+g(\mathbf{x}) \mathbf{e}_{m} \quad(\mathbf{x} \in E),
$$

then we call G primitive. A primitive mapping is thus one that changes at most one coordinate. Note that (9) can also be written in the form

$$
\mathbf{G}(\mathbf{x})=\mathbf{x}+\left[g(\mathbf{x})-x_{m}\right] \mathbf{e}_{m} .
$$

If $g$ is differentiable at some point $\mathbf{a} \in E$, so is $\mathbf{G}$. The matrix $\left[\alpha_{i j}\right]$ of the operator $\mathbf{G}^{\prime}(\mathbf{a})$ has

$$
\left(D_{1} g\right)(\mathbf{a}), \ldots,\left(D_{m} g\right)(\mathbf{a}), \ldots,\left(D_{n} g\right)(\mathbf{a})
$$

as its $m$ th row. For $j \neq m$, we have $\alpha_{j j}=1$ and $\alpha_{i j}=0$ if $i \neq j$. The Jacobian of $\mathbf{G}$ at $\mathbf{a}$ is thus given by

$$
J_{\mathbf{G}}(\mathbf{a})=\operatorname{det}\left[\mathbf{G}^{\prime}(\mathbf{a})\right]=\left(D_{m} g\right)(\mathbf{a}),
$$

and we see (by Theorem 9.36) that $\mathbf{G}^{\prime}(\mathbf{a})$ is invertible if and only if $\left(D_{m} g\right)(\mathbf{a}) \neq 0$. 

**10.6 Definition** A linear operator $B$ on $R^{n}$ that interchanges some pair of members of the standard basis and leaves the others fixed will be called a flip.

For example, the flip $B$ on $R^{4}$ that interchanges $\mathbf{e}_{2}$ and $\mathbf{e}_{4}$ has the form

$$
B\left(x_{1} \mathbf{e}_{1}+x_{2} \mathbf{e}_{2}+x_{3} \mathbf{e}_{3}+x_{4} \mathbf{e}_{4}\right)=x_{1} \mathbf{e}_{1}+x_{2} \mathbf{e}_{4}+x_{3} \mathbf{e}_{3}+x_{4} \mathbf{e}_{2}
$$

or, equivalently,

$$
B\left(x_{1} \mathbf{e}_{1}+x_{2} \mathbf{e}_{2}+x_{3} \mathbf{e}_{3}+x_{4} \mathbf{e}_{4}\right)=x_{1} \mathbf{e}_{1}+x_{4} \mathbf{e}_{2}+x_{3} \mathbf{e}_{3}+x_{2} \mathbf{e}_{4} .
$$

Hence $B$ can also be thought of as interchanging two of the coordinates, rather than two basis vectors.

In the proof that follows, we shall use the projections $P_{0}, \ldots, P_{n}$ in $R^{n}$, defined by $P_{0} \mathbf{x}=\mathbf{0}$ and

$$
P_{m} \mathbf{x}=x_{1} \mathbf{e}_{1}+\cdots+x_{m} \mathbf{e}_{m}
$$

for $1 \leq m \leq n$. Thus $P_{m}$ is the projection whose range and null space are spanned by $\left\{\mathbf{e}_{1}, \ldots, \mathbf{e}_{m}\right\}$ and $\left\{\mathbf{e}_{m+1}, \ldots, \mathbf{e}_{n}\right\}$, respectively.

**10.7 Theorem** Suppose $\mathbf{F}$ is a $\mathscr{C}^{\prime}$-mapping of an open set $E \subset R^{n}$ into $R^{n}, \mathbf{0} \in E$, $\mathbf{F}(\mathbf{0})=\mathbf{0}$, and $\mathbf{F}^{\prime}(\mathbf{0})$ is invertible.

Then there is a neighborhood of 0 in $R^{n}$ in which a representation

$$
\mathbf{F}(\mathbf{x})=B_{1} \cdots B_{n-1} \mathbf{G}_{n} \circ \cdots \circ \mathbf{G}_{1}(\mathbf{x})
$$

is valid.

In (16), each $\mathbf{G}_{i}$ is a primitive $\mathscr{C}^{\prime}$-mapping in some neighborhood of $\mathbf{0}$; $\mathbf{G}_{i}(\mathbf{0})=\mathbf{0}, \mathbf{G}_{i}^{\prime}(\mathbf{0})$ is invertible, and each $B_{i}$ is either a flip or the identity operator.

Briefly, (16) represents $\mathbf{F}$ locally as a composition of primitive mappings and flips.

Proof Put $\mathbf{F}=\mathbf{F}_{1}$. Assume $1 \leq m \leq n-1$, and make the following induction hypothesis (which evidently holds for $m=1$ ):

$V_{m}$ is a neighborhood of $\mathbf{0}, \mathbf{F}_{m} \in \mathscr{C}^{\prime}\left(V_{m}\right), \mathbf{F}_{m}(\mathbf{0})=\mathbf{0}, \mathbf{F}_{m}^{\prime}(\mathbf{0})$ is invertible, and

$$
P_{m-1} \mathbf{F}_{m}(\mathbf{x})=P_{m-1} \mathbf{x} \quad\left(\mathbf{x} \in V_{m}\right) .
$$

By (17), we have

$$
\mathbf{F}_{m}(\mathbf{x})=P_{m-1} \mathbf{x}+\sum_{i=m}^{n} \alpha_{i}(\mathbf{x}) \mathbf{e}_{i},
$$

where $\alpha_{m}, \ldots, \alpha_{n}$ are real $\mathscr{C}^{\prime}$-functions in $V_{m}$. Hence

$$
\mathbf{F}_{m}^{\prime}(\mathbf{0}) \mathbf{e}_{m}=\sum_{i=m}^{n}\left(D_{m} \alpha_{i}\right)(\mathbf{0}) \mathbf{e}_{i} .
$$

Since $\mathbf{F}_{m}^{\prime}(\mathbf{0})$ is invertible, the left side of (19) is not $\mathbf{0}$, and therefore there is a $k$ such that $m \leq k \leq n$ and $\left(D_{m} \alpha_{k}\right)(0) \neq 0$.

Let $B_{m}$ be the flip that interchanges $m$ and this $k$ (if $k=m, B_{m}$ is the identity) and define

$$
\mathbf{G}_{m}(\mathbf{x})=\mathbf{x}+\left[\alpha_{k}(\mathbf{x})-x_{m}\right] \mathbf{e}_{m} \quad\left(\mathbf{x} \in V_{m}\right)
$$

Then $\mathbf{G}_{m} \in \mathscr{C}^{\prime}\left(V_{m}\right), \mathbf{G}_{m}$ is primitive, and $\mathbf{G}_{m}^{\prime}(0)$ is invertible, since $\left(D_{m} \alpha_{k}\right)(0) \neq 0$.

The inverse function theorem shows therefore that there is an open set $U_{m}$, with $\mathbf{0} \in U_{m} \subset V_{m}$, such that $\mathbf{G}_{m}$ is a 1-1 mapping of $U_{m}$ onto a neighborhood $V_{m+1}$ of 0 , in which $\mathbf{G}_{m}^{-1}$ is continuously differentiable. Define $\mathbf{F}_{m+1}$ by

$$
\mathbf{F}_{m+1}(\mathbf{y})=B_{m} \mathbf{F}_{m} \circ \mathbf{G}_{m}^{-1}(\mathbf{y}) \quad\left(\mathbf{y} \in V_{m+1}\right) \text {. }
$$

Then $\mathbf{F}_{m+1} \in \mathscr{C}^{\prime}\left(V_{m+1}\right), \mathbf{F}_{m+1}(\mathbf{0})=\mathbf{0}$, and $\mathbf{F}_{m+1}^{\prime}(\mathbf{0})$ is invertible (by the chain rule). Also, for $\mathbf{x} \in U_{m}$,

$$
\begin{aligned}
P_{m} \mathbf{F}_{m+1}\left(\mathbf{G}_{m}(\mathbf{x})\right) &=P_{m} B_{m} \mathbf{F}_{m}(\mathbf{x}) \\
&=P_{m}\left[P_{m-1} \mathbf{x}+\alpha_{k}(\mathbf{x}) \mathbf{e}_{m}+\cdots\right] \\
&=P_{m-1} \mathbf{x}+\alpha_{k}(\mathbf{x}) \mathbf{e}_{m} \\
&=P_{m} \mathbf{G}_{m}(\mathbf{x})
\end{aligned}
$$

so that

$$
P_{m} \mathbf{F}_{m+1}(\mathbf{y})=P_{m} \mathbf{y} \quad\left(\mathbf{y} \in V_{m+1}\right) .
$$

Our induction hypothesis holds therefore with $m+1$ in place of $m$.

[In (22), we first used (21), then (18) and the definition of $B_{m}$, then the definition of $P_{m}$, and finally (20).]

Since $B_{m} B_{m}=I,(21)$, with $\mathbf{y}=\mathbf{G}_{m}(\mathbf{x})$, is equivalent to

$$
\mathbf{F}_{m}(\mathbf{x})=B_{m} \mathbf{F}_{m+1}\left(\mathbf{G}_{m}(\mathbf{x})\right) \quad\left(\mathbf{x} \in U_{m}\right)
$$

If we apply this with $m=1, \ldots, n-1$, we successively obtain

$$
\begin{aligned}
\mathbf{F}=\mathbf{F}_{1} &=B_{1} \mathbf{F}_{2} \circ \mathbf{G}_{1} \\
&=B_{1} B_{2} \mathbf{F}_{3} \circ \mathbf{G}_{2} \circ \mathbf{G}_{1}=\cdots \\
&=B_{1} \cdots B_{n-1} \mathbf{F}_{n} \circ \mathbf{G}_{n-1} \circ \cdots \circ \mathbf{G}_{1}
\end{aligned}
$$

in some neighborhood of $\mathbf{0}$. By (17), $\mathbf{F}_{n}$ is primitive. This completes the proof. 
