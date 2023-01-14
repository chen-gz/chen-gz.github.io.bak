---
title: Differentiable Transformations
date: "2023-01-13"
---


### 7.22 Definitions

Suppose $V$ is an open set in $R^k, T$ maps $V$ into $R^k$, and $x \in V$. If there exists a linear operator $A$ on $R^k$ (i.e., a linear mapping of $R^k$ into $R^k$, as in Definition 2.1) such that
$$
\lim _{h \rightarrow 0} \frac{|T(x+h)-T(x)-A h|}{|h|}=0
$$
(where, of course, $h \in R^k$ ), then we say that $T$ is differentiable at $x$, and define
$$
T^{\prime}(x)=A \text {. }
$$
The linear operator $T^{\prime}(x)$ is called the derivative of $T$ at $x$. (One shows easily that there is at most one linear $A$ that satisfies the preceding requirements; thus it is legitimate to talk about the derivative of $T$.) The term differential is also often used for $T^{\prime}(x)$.

The point of (1) is of course that the difference $T(x+h)-T(x)$ is approximated by $T^{\prime}(x) h$, a linear function of $h$.

Since every real number $\alpha$ gives rise to a linear operator on $R^1$ (mapping $h$ to $\alpha h$ ), our definition of $T^{\prime}(x)$ coincides with the usual one when $k=1$.

When $A: R^k \rightarrow R^k$ is linear, Theorem $2.20(e)$ shows that there is a number $\Delta(A)$ such that
$$
m(A(E))=\Delta(A) m(E)
$$
for all measurable sets $E \subset R^k$. Since
$$
A^{\prime}(x)=A \quad\left(x \in R^k\right)
$$
and since every differentiable transformation $T$ can be locally approximated by a constant plus a linear transformation, one may conjecture that
$$
\frac{m(T(E))}{m(E)} \sim \Delta\left(T^{\prime}(x)\right)
$$
for suitable sets $E$ that are close to $x$. This will be proved in Theorem 7.24, and furnishes the motivation for Theorem 7.26.

Recall that $\Delta(A)=|\operatorname{det} A|$ was proved in Sec. 2.23. When $T$ is differentiable at $x$, the determinant of $T^{\prime}(x)$ is called the Jacobian of $T$ at $x$, and is denoted by $J_T(x)$. Thus
$$
\Delta\left(T^{\prime}(x)\right)=\left|J_T(x)\right| .
$$
The following lemma seems geometrically obvious. Its proof depends on the Brouwer fixed point theorem. One can avoid the use of this theorem by imposing