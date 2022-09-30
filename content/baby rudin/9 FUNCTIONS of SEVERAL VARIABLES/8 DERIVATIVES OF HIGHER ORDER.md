---
title: 8 DERIVATIVES OF HIGHER ORDER
date: 2022-08-15
---


**9.39 Definition** Suppose $f$ is a real function defined in an open set $E \subset R^{n}$, with partial derivatives $D_{1} f, \ldots, D_{n} f$. If the functions $D_{j} f$ are themselves differentiable, then the second-order partial derivatives of $f$ are defined by

$$
D_{i j} f=D_{i} D_{j} f \quad(i, j=1, \ldots, n) .
$$

If all these functions $D_{i j} f$ are continuous in $E$, we say that $f$ is of class $\mathscr{B}^{\prime \prime}$ in $E$, or that $f \in \mathscr{C}^{\prime \prime}(E)$.

A mapping $f$ of $E$ into $R^{m}$ is said to be of class $\mathscr{E}^{\prime \prime}$ if each component of $f$ is of class $\mathscr{B}^{\prime \prime}$.

It can happen that $D_{i j} f \neq D_{j i} f$ at some point, although both derivatives exist (see Exercise 27). However, we shall see below that $D_{i j} f=D_{j i} f$ whenever these derivatives are continuous.

For simplicity (and without loss of generality) we state our next two theorems for real functions of two variables. The first one is a mean value theorem.

**9.40 Theorem** Suppose $f$ is defined in an open set $E \subset R^{2}$, and $D_{1} f$ and $D_{21} f$ exist at every point of $E$. Suppose $Q \subset E$ is a closed rectangle with sides parallel to the coordinate axes, having $(a, b)$ and $(a+h, b+k)$ as opposite vertices $(h \neq 0, k \neq 0)$. Put

$$
\Delta(f, Q)=f(a+h, b+k)-f(a+h, b)-f(a, b+k)+f(a, b) .
$$

Then there is a point $(x, y)$ in the interior of $Q$ such that

$$
\Delta(f, Q)=h k\left(D_{21} f\right)(x, y) .
$$

Note the analogy between (95) and Theorem 5.10; the area of $Q$ is $h k$.

Proof Put $u(t)=f(t, b+k)-f(t, b)$. Two applications of Theorem 5.10 show that there is an $x$ between $a$ and $a+h$, and that there is a $y$ between $b$ and $b+k$, such that

$$
\begin{aligned}
\Delta(f, Q) &=u(a+h)-u(a) \\
&=h u^{\prime}(x) \\
&=h\left[\left(D_{1} f\right)(x, b+k)-\left(D_{1} f\right)(x, b)\right] \\
&=h k\left(D_{21} f\right)(x, y)
\end{aligned}
$$



**9.41 Theorem** Suppose $f$ is defined in an open set $E \subset R^{2}$, suppose that $D_{1} f$, $D_{21} f$, and $D_{2} f$ exist at every point of $E$, and $D_{21} f$ is continuous at some point $(a, b) \in E$ Then $D_{12} f$ exists at $(a, b)$ and

$$
\left(D_{12} f\right)(a, b)=\left(D_{21} f\right)(a, b) .
$$

Corollary $D_{21} f=D_{12} f$ if $f \in \mathscr{C}^{\prime \prime}(E)$.

**Proof** Put $A=\left(D_{21} f\right)(a, b)$. Choose $\varepsilon>0$. If $Q$ is a rectangle as in Theorem 9.40, and if $h$ and $k$ are sufficiently small, we have

$$
\left|A-\left(D_{21} f\right)(x, y)\right|<\varepsilon
$$

for all $(x, y) \in Q$. Thus

$$
\left|\frac{\Delta(f, Q)}{h k}-A\right|<\varepsilon
$$

by (95). Fix $h$, and let $k \rightarrow 0$. Since $D_{2} f$ exists in $E$, the last inequality implies that

$$
\left|\frac{\left(D_{2} f\right)(a+h, b)-\left(D_{2} f\right)(a, b)}{h}-A\right| \leq \varepsilon .
$$

Since $\varepsilon$ was arbitrary, and since (97) holds for all sufficiently small $h \neq 0$, it follows that $\left(D_{12} f\right)(a, b)=A$. This gives (96).