---
title: 5 THE IMPLICIT FUNCTION THEOREM
date: 2022-08-13
---

If $f$ is a continuously differentiable real function in the plane, then the equation $f(x, y)=0$ can be solved for $y$ in terms of $x$ in a neighborhood of any point $(a, b)$ at which $f(a, b)=0$ and $\partial f / \partial y \neq 0$. Likewise, one can solve for $x$ in terms of $y$ near $(a, b)$ if $\partial f / \partial x \neq 0$ at $(a, b)$. For a simple example which illustrates the need for assuming $\partial f / \partial y \neq 0$, consider $f(x, y)=x^{2}+y^{2}-1$.

The preceding very informal statement is the simplest case (the case $m=n=1$ of Theorem 9.28) of the so-called "implicit function theorem." Its proof makes stronguse of the fact that continuously differentiable transformations behave locally very much like their derivatives. Accordingly, we first prove Theorem 9.27, the linear version of Theorem 9.28.


**9.26 Notation** If $\mathbf{x}=\left(x_{1}, \ldots, x_{n}\right) \in R^{n}$ and $\mathbf{y}=\left(y_{1}, \ldots, y_{m}\right) \in R^{m}$, let us write $(\mathbf{x}, \mathbf{y})$ for the point (or vector)

$$
\left(x_{1}, \ldots, x_{n}, y_{1}, \ldots, y_{m}\right) \in R^{n+m} \text {. }
$$

In what follows, the first entry in $(\mathbf{x}, \mathbf{y})$ or in a similar symbol will always be a vector in $R^{n}$, the second will be a vector in $R^{m}$.

Every $A \in L\left(R^{n+m}, R^{n}\right)$ can be split into two linear transformations $A_{x}$ and $A_{y}$, defined by

$$
A_{x} \mathbf{h}=A(\mathbf{h}, \mathbf{0}), \quad A_{y} \mathbf{k}=A(\mathbf{0}, \mathbf{k})
$$

for any $\mathbf{h} \in R^{n}, \mathbf{k} \in R^{m}$. Then $A_{x} \in L\left(R^{n}\right), A_{y} \in L\left(R^{m}, R^{n}\right)$, and

$$
A(\mathbf{h}, \mathbf{k})=A_{x} \mathbf{h}+A_{y} \mathbf{k} .
$$

The linear version of the implicit function theorem is now almost obvious.

**9.27 Theorem** If $A \in L\left(R^{n+m}, R^{n}\right)$ and if $A_{x}$ is invertible, then there corresponds to every $\mathbf{k} \in R^{m}$ a unique $\mathbf{h} \in R^{n}$ such that $A(\mathbf{h}, \mathbf{k})=\mathbf{0}$.

This $\mathbf{h}$ can be computed from $\mathbf{k}$ by the formula

$$
\mathbf{h}=-\left(A_{x}\right)^{-1} A_{y} \mathbf{k} .
$$

**Proof** By (54), $A(\mathbf{h}, \mathbf{k})=\mathbf{0}$ if and only if

$$
A_{x} \mathbf{h}+A_{y} \mathbf{k}=\mathbf{0},
$$

which is the same as (55) when $A_{x}$ is invertible.

The conclusion of Theorem $9.27$ is, in other words, that the equation $A(\mathrm{~h}, \mathrm{k})=\mathbf{0}$ can be solved (uniquely) for $\mathrm{h}$ if $\mathbf{k}$ is given, and that the solution $\mathrm{h}$ is a linear function of $\mathbf{k}$. Those who have some acquaintance with linear algebra will recognize this as a very familiar statement about systems of linear equations.

**9.28 Theorem** Let $\mathrm{f}$ be a $\mathscr{C}^{\prime}$-mapping of an open set $E \subset R^{n+m}$ into $R^{n}$, such that $\mathbf{f}(\mathbf{a}, \mathbf{b})=0$ for some point $(\mathbf{a}, \mathbf{b}) \in E$.

Put $A=\mathbf{f}^{\prime}(\mathbf{a}, \mathbf{b})$ and assume that $A_{x}$ is invertible. Then there exist open sets $U \subset R^{n+m}$ and $W \subset R^{m}$, with $(\mathbf{a}, \mathbf{b}) \in U$ and $\mathbf{b} \in W$, having the following property:

To every $\mathbf{y} \in W$ corresponds a unique $\mathbf{x}$ such that

$$
(\mathbf{x}, \mathbf{y}) \in U \text { and } \mathbf{f}(\mathbf{x}, \mathbf{y})=0 \text {. }
$$

If this $\mathbf{x}$ is defined to be $\mathbf{g}(\mathbf{y})$, then $\mathbf{g}$ is $a \mathscr{C}^{\prime}$-mapping of $W$ into $R^{n}, \mathbf{g}(\mathbf{b})=\mathbf{a}$,

$$
\mathbf{f}(\mathbf{g}(\mathbf{y}), \mathbf{y})=\mathbf{0} \quad(\mathbf{y} \in W),
$$

and

$$
\mathbf{g}^{\prime}(\mathbf{b})=-\left(A_{x}\right)^{-1} A_{y} .
$$

The function $g$ is "implicitly" defined by (57). Hence the name of the theorem.

The equation $\mathbf{f}(\mathbf{x}, \mathbf{y})=\mathbf{0}$ can be written as a system of $n$ equations in $n+m$ variables:

$$
\begin{aligned}
&f_{1}\left(x_{1}, \ldots, x_{n}, y_{1}, \ldots, y_{m}\right)=0 \\
&\left.\cdots \ldots \ldots, \ldots, x_{n}, y_{1}, \ldots, y_{m}\right)=0 .
\end{aligned}
$$

The assumption that $A_{x}$ is invertible means that the $n$ by $n$ matrix

$$
\left[\begin{array}{ccc}
D_{1} f_{1} & \cdots & D_{n} f_{1} \\
\cdots \cdots & \cdots & \cdots \\
D_{1} f_{n} & \cdots & D_{n} f_{n}
\end{array}\right]
$$

evaluated at $(\mathbf{a}, \mathbf{b})$ defines an invertible linear operator in $R^{n}$; in other words, its column vectors should be independent, or, equivalently, its determinant should be $\neq 0$. (See Theorem 9.36.) If, furthermore, (59) holds when $\mathbf{x}=\mathbf{a}$ and $\mathbf{y}=\mathbf{b}$, then the conclusion of the theorem is that (59) can be solved for $x_{1}, \ldots, x_{n}$ in terms of $y_{1}, \ldots, y_{m}$, for every $\mathbf{y}$ near $\mathbf{b}$, and that these solutions are continuously differentiable functions of $\mathbf{y}$.

Proof Define $\mathbf{F}$ by

$$
\mathbf{F}(\mathbf{x}, \mathbf{y})=(\mathbf{f}(\mathbf{x}, \mathbf{y}), \mathbf{y}) \quad((\mathbf{x}, \mathbf{y}) \in E) .
$$

Then $\mathbf{F}$ is a $\mathscr{C}^{\prime}$-mapping of $E$ into $R^{n+m}$. We claim that $\mathbf{F}^{\prime}(\mathbf{a}, \mathbf{b})$ is an invertible element of $L\left(R^{n+m}\right)$ :

Since $\mathbf{f}(\mathbf{a}, \mathbf{b})=\mathbf{0}$, we have

$$
\mathbf{f}(\mathbf{a}+\mathbf{h}, \mathbf{b}+\mathbf{k})=A(\mathbf{h}, \mathbf{k})+\mathbf{r}(\mathbf{h}, \mathbf{k})
$$

where $\mathbf{r}$ is the remainder that occurs in the definition of $\mathbf{f}^{\prime}(\mathbf{a}, \mathbf{b})$. Since

$$
\begin{aligned}
\mathbf{F}(\mathbf{a}+\mathbf{h}, \mathbf{b}+\mathbf{k})-\mathbf{F}(\mathbf{a}, \mathbf{b}) &=(\mathbf{f}(\mathbf{a}+\mathbf{h}, \mathbf{b}+\mathbf{k}), \mathbf{k}) \\
&=(\mathbf{A}(\mathbf{h}, \mathbf{k}), \mathbf{k})+(\mathbf{r}(\mathbf{h}, \mathbf{k}), \mathbf{0})
\end{aligned}
$$

it follows that $\mathbf{F}^{\prime}(\mathbf{a}, \mathbf{b})$ is the linear operator on $R^{n+m}$ that maps (h, k) to ( $A(\mathbf{h}, \mathbf{k}), \mathbf{k})$. If this image vector is $\mathbf{0}$, then $A(\mathbf{h}, \mathbf{k})=\mathbf{0}$ and $\mathbf{k}=\mathbf{0}$, hence $A(\mathbf{h}, \mathbf{0})=\mathbf{0}$, and Theorem $9.27$ implies that $\mathbf{h}=\mathbf{0}$. It follows that $\mathbf{F}^{\prime}(\mathbf{a}, \mathbf{b})$ is $1-1$; hence it is invertible (Theorem 9.5).

The inverse function theorem can therefore be applied to $\mathbf{F}$. It shows that there exist open sets $U$ and $V$ in $R^{n+m}$, with $(\mathbf{a}, \mathbf{b}) \in U,(\mathbf{0}, \mathbf{b}) \in V$, such that $\mathbf{F}$ is a 1-1 mapping of $U$ onto $V$.

We let $W$ be the set of all $\mathbf{y} \in R^{m}$ such that $(0, y) \in V$. Note that $\mathbf{b} \in W$

It is clear that $W$ is open since $V$ is open.

If $\mathbf{y} \in W$, then $(\mathbf{0}, \mathbf{y})=\mathbf{F}(\mathbf{x}, \mathbf{y})$ for some $(\mathbf{x}, \mathbf{y}) \in U . B y(60), \mathbf{f}(\mathbf{x}, \mathbf{y})=\mathbf{0}$ for this $\mathbf{x}$.

Suppose, with the same $\mathbf{y}$, that $\left(\mathbf{x}^{\prime}, \mathbf{y}\right) \in U$ and $\mathbf{f}\left(\mathbf{x}^{\prime}, \mathbf{y}\right)=\mathbf{0}$. Then

$$
\mathbf{F}\left(\mathbf{x}^{\prime}, \mathbf{y}\right)=\left(\mathbf{f}\left(\mathbf{x}^{\prime}, \mathbf{y}\right), \mathbf{y}\right)=(\mathbf{f}(\mathbf{x}, \mathbf{y}), \mathbf{y})=\mathbf{F}(\mathbf{x}, \mathbf{y}) .
$$

Since $\mathbf{F}$ is $1-1$ in $U$, it follows that $\mathbf{x}^{\prime}=\mathbf{x}$.

This proves the first part of the theorem.

For the second part, define $\mathbf{g}(\mathbf{y})$, for $\mathbf{y} \in W$, so that $(\mathbf{g}(\mathbf{y}), \mathbf{y}) \in U$ and (57) holds. Then

$$
\mathbf{F}(\mathbf{g}(\mathbf{y}), \mathbf{y})=(\mathbf{0}, \mathbf{y}) \quad(\mathbf{y} \in W) \text {. }
$$

If $\mathbf{G}$ is the mapping of $V$ onto $U$ that inverts $\mathbf{F}$, then $\mathbf{G} \in \mathscr{C}^{\prime}$, by the inverse function theorem, and (61) gives

$$
(\mathbf{g}(\mathbf{y}), \mathbf{y})=\mathbf{G}(\mathbf{0}, \mathbf{y}) \quad(\mathbf{y} \in W) \text {. }
$$

Since $\mathbf{G} \in \mathscr{C}^{\prime}$, (62) shows that $\mathbf{g} \in \mathscr{C}^{\prime}$.

Finally, to compute $\mathbf{g}^{\prime}(\mathbf{b})$, put $(\mathbf{g}(\mathbf{y}), \mathbf{y})=\Phi(\mathbf{y})$. Then

$$
\Phi^{\prime}(\mathbf{y}) \mathbf{k}=\left(\mathbf{g}^{\prime}(\mathbf{y}) \mathbf{k}, \mathbf{k}\right) \quad\left(\mathbf{y} \in W, \mathbf{k} \in R^{m}\right)
$$

By $(57), \mathbf{f}(\Phi(\mathbf{y}))=\mathbf{0}$ in $W$. The chain rule shows therefore that

$$
\mathbf{f}^{\prime}(\Phi(\mathbf{y})) \Phi^{\prime}(\mathbf{y})=0 .
$$

When $\mathbf{y}=\mathbf{b}$, then $\Phi(\mathbf{y})=(\mathbf{a}, \mathbf{b})$, and $\mathbf{f}^{\prime}(\Phi(\mathbf{y}))=A$. Thus

$$
A \Phi^{\prime}(\mathbf{b})=0
$$

It now follows from (64), (63), and (54), that

$$
A_{x} \mathbf{g}^{\prime}(\mathbf{b}) \mathbf{k}+A_{y} \mathbf{k}=A\left(\mathbf{g}^{\prime}(\mathbf{b}) \mathbf{k}, \mathbf{k}\right)=A \Phi^{\prime}(\mathbf{b}) \mathbf{k}=\mathbf{0}
$$

for every $\mathbf{k} \in R^{m}$. Thus

$$
A_{x} \mathbf{g}^{\prime}(\mathbf{b})+A_{y}=0
$$

This is equivalent to (58), and completes the proof.

Note. In terms of the components of $f$ and $g,(65)$ becomes

$$
\sum_{j=1}^{n}\left(D_{j} f_{i}\right)(\mathbf{a}, \mathbf{b})\left(D_{k} g_{j}\right)(\mathbf{b})=-\left(D_{n+k} f_{i}\right)(\mathbf{a}, \mathbf{b})
$$

or

$$
\sum_{j=1}^{n}\left(\frac{\partial f_{i}}{\partial x_{j}}\right)\left(\frac{\partial g_{j}}{\partial y_{k}}\right)=-\left(\frac{\partial f_{i}}{\partial y_{k}}\right)
$$

where $1 \leq i \leq n, 1 \leq k \leq m$

For each $k$, this is a system of $n$ linear equations in which the derivatives $\partial g_{j} / \partial y_{k}(1 \leq j \leq n)$ are the unknowns.



**9.29 Example** Take $n=2, m=3$, and consider the mapping $\mathbf{f}=\left(f_{1}, f_{2}\right)$ of $R^{5}$ into $R^{2}$ given by

$$
\begin{aligned}
&f_{1}\left(x_{1}, x_{2}, y_{1}, y_{2}, y_{3}\right)=2 e^{x_{1}}+x_{2} y_{1}-4 y_{2}+3 \\
&f_{2}\left(x_{1}, x_{2}, y_{1}, y_{2}, y_{3}\right)=x_{2} \cos x_{1}-6 x_{1}+2 y_{1}-y_{3} .
\end{aligned}
$$

If $\mathbf{a}=(0,1)$ and $\mathbf{b}=(3,2,7)$, then $\mathbf{f}(\mathbf{a}, \mathbf{b})=0$.

With respect to the standard bases, the matrix of the transformation $A=\mathbf{f}^{\prime}(\mathbf{a}, \mathbf{b})$ is

$$
[A]=\left[\begin{array}{rrrrr}
2 & 3 & 1 & -4 & 0 \\
-6 & 1 & 2 & 0 & -1
\end{array}\right]
$$

Hence

$$
\left[A_{x}\right]=\left[\begin{array}{rr}
2 & 3 \\
-6 & 1
\end{array}\right], \quad\left[A_{y}\right]=\left[\begin{array}{rrr}
1 & -4 & 0 \\
2 & 0 & -1
\end{array}\right]
$$

We see that the column vectors of $\left[A_{x}\right]$ are independent. Hence $A_{x}$ is invertible and the implicit function theorem asserts the existence of a $\mathscr{C}^{\prime}$-mapping $\mathbf{g}$, defined in a neighborhood of $(3,2,7)$, such that $\mathbf{g}(3,2,7)=(0,1)$ and $\mathbf{f}(\mathbf{g}(\mathbf{y}), \mathbf{y})=\mathbf{0}$.

We can use (58) to compute $\mathbf{g}^{\prime}(3,2,7)$ : Since

$$
\left[\left(A_{x}\right)^{-1}\right]=\left[A_{x}\right]^{-1}=\frac{1}{20}\left[\begin{array}{rr}
1 & -3 \\
6 & 2
\end{array}\right]
$$

(58) gives

$$
\left[g^{\prime}(3,2,7)\right]=-\frac{1}{20}\left[\begin{array}{rr}
1 & -3 \\
6 & 2
\end{array}\right]\left[\begin{array}{rrr}
1 & -4 & 0 \\
2 & 0 & -1
\end{array}\right]=\left[\begin{array}{rrr}
\frac{1}{4} & \frac{1}{5} & -\frac{3}{20} \\
-\frac{1}{2} & \frac{6}{3} & \frac{1}{10}
\end{array}\right]
$$

In terms of partial derivatives, the conclusion is that

$$
\begin{aligned}
& D_{1} g_{1}=\frac{1}{4}, \quad D_{2} g_{1}=\frac{1}{3} \quad D_{3} g_{1}=-\frac{3}{20} \\
& D_{1} g_{2}=-\frac{1}{2} \quad D_{2} g_{2}=\frac{6}{5} \quad D_{3} g_{2}=\frac{1}{10}
\end{aligned}
$$

at the point $(3,2,7)$.


