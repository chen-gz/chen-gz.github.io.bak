---
title: 4 THE INVERSE FUNCTION THEOREM
date: 2022-08-13
---

The inverse function theorem states, roughly speaking, that a continuously differentiable mapping $f$ is invertible in a neighborhood of any point $\mathbf{x}$ at which the linear transformation $\mathbf{f}^{\prime}(\mathbf{x})$ is invertible:

**9.24 Theorem** Suppose $\mathrm{f}$ is $a \mathscr{C}^{\prime}$-mapping of an open set $E \subset R^{n}$ into $R^{n}$, $\mathbf{f}^{\prime}(\mathrm{a})$ is invertible for some $\mathbf{a} \in E$, and $\mathbf{b}=\mathbf{f}(\mathbf{a})$. Then

(a) there exist open sets $U$ and $V$ in $R^{n}$ such that $\mathbf{a} \in U, \mathbf{b} \in V$, $\mathbf{f}$ is one-toone on $U$, and $\mathbf{f}(U)=V$;

(b) if $\mathbf{g}$ is the inverse of $\mathrm{f}$ \[which exists, by $(a)\]$, defined in $V$ by

$$
\mathbf{g}(\mathbf{f}(\mathbf{x}))=\mathbf{x} \quad(\mathbf{x} \in U),
$$

then $\mathbf{g} \in \mathscr{C}^{\prime}(V)$.

Writing the equation $\mathbf{y}=\mathbf{f}(\mathbf{x})$ in component form, we arrive at the following interpretation of the conclusion of the theorem: The system of $n$ equations

$$
y_{i}=f_{i}\left(x_{1}, \ldots, x_{n}\right) \quad(1 \leq i \leq n)
$$

can be solved for $x_{1}, \ldots, x_{n}$ in terms of $y_{1}, \ldots, y_{n}$, if we restrict $\mathbf{x}$ and $\mathbf{y}$ to small enough neighborhoods of $\mathbf{a}$ and $\mathbf{b}$; the solutions are unique and continuously differentiable.

**Proof**

(a) Put $\mathbf{f}^{\prime}(\mathrm{a})=A$, and choose $\lambda$ so that

$$
2 \lambda\left\|A^{-1}\right\|=1 .
$$

Since $\mathbf{f}^{\prime}$ is continuous at $\mathbf{a}$, there is an open ball $U \subset E$, with center at $\mathbf{a}$, such that

$$
\left\|\mathbf{f}^{\prime}(\mathbf{x})-A\right\|<\lambda \quad(\mathbf{x} \in U) .
$$

We associate to each $y \in R^{n}$ a function $\varphi$, defined by

$$
\varphi(\mathbf{x})=\mathbf{x}+A^{-1}(\mathbf{y}-\mathbf{f}(\mathbf{x})) \quad(\mathbf{x} \in E) .
$$

Note that $\mathbf{f}(\mathbf{x})=\mathbf{y}$ if and only if $\mathbf{x}$ is a fixed point of $\varphi$.

Since $\varphi^{\prime}(\mathbf{x})=I-A^{-1} \mathbf{f}^{\prime}(\mathbf{x})=A^{-1}\left(A-\mathbf{f}^{\prime}(\mathbf{x})\right)$, (46) and (47) imply that

$$
\left\|\varphi^{\prime}(\mathbf{x})\right\|<\frac{1}{2} \quad(\mathbf{x} \in U)
$$

Hence

$$
\left|\varphi\left(\mathbf{x}_{1}\right)-\varphi\left(\mathbf{x}_{2}\right)\right| \leq \frac{1}{2}\left|\mathbf{x}_{1}-\mathbf{x}_{2}\right| \quad\left(\mathbf{x}_{1}, \mathbf{x}_{2} \in U\right) \text {, }
$$

by Theorem 9.19. It follows that $\varphi$ has at most one fixed point in $U$, so that $\mathbf{f}(\mathbf{x})=\mathbf{y}$ for at most one $\mathbf{x} \in U$.

Thus $\mathrm{f}$ is $1-1$ in $U$.

Next, put $V=\mathbf{f}(U)$, and pick $\mathbf{y}_{0} \in V$. Then $\mathbf{y}_{0}=\mathbf{f}\left(\mathbf{x}_{0}\right)$ for some $\mathbf{x}_{0} \in U$. Let $B$ be an open ball with center at $\mathbf{x}_{0}$ and radius $r>0$, so small that its closure $\bar{B}$ lies in $U$. We will show that $\mathrm{y} \in V$ whenever $\left|\mathbf{y}-\mathbf{y}_{0}\right|<\lambda r$. This proves, of course, that $V$ is open.

Fix y, $\left|\mathbf{y}-\mathbf{y}_{0}\right|<\lambda r$. With $\varphi$ as in (48),

$$
\left|\varphi\left(\mathbf{x}_{0}\right)-\mathbf{x}_{0}\right|=\left|A^{-1}\left(\mathbf{y}-\mathbf{y}_{0}\right)\right|<\left\|A^{-1}\right\| \lambda r=\frac{r}{2} .
$$

If $\mathbf{x} \in \bar{B}$, it therefore follows from (50) that

$$
\begin{aligned}
\left|\varphi(\mathbf{x})-\mathbf{x}_{0}\right| & \leq\left|\varphi(\mathbf{x})-\varphi\left(\mathbf{x}_{0}\right)\right|+\left|\varphi\left(\mathbf{x}_{0}\right)-\mathbf{x}_{0}\right| \\
&<\frac{1}{2}\left|\mathbf{x}-\mathbf{x}_{0}\right|+\frac{r}{2} \leq r
\end{aligned}
$$

hence $\varphi(\mathbf{x}) \in B$. Note that (50) holds if $\mathbf{x}_{1} \in \bar{B}, \mathbf{x}_{2} \in \bar{B}$.

Thus $\varphi$ is a contraction of $\bar{B}$ into $\bar{B}$. Being a closed subset of $R^{n}$, $\bar{B}$ is complete. Theorem $9.23$ implies therefore that $\varphi$ has a fixed point $\mathbf{x} \in \bar{B}$. For this $\mathbf{x}, f(\mathbf{x})=\mathbf{y}$. Thus $\mathbf{y} \in \mathbf{f}(\bar{B}) \subset \mathbf{f}(U)=V$.

This proves part $(a)$ of the theorem.

(b) Pick $\mathbf{y} \in V, \mathbf{y}+\mathbf{k} \in V$. Then there exist $\mathbf{x} \in U, \mathbf{x}+\mathbf{h} \in U$, so that $\mathbf{y}=\mathbf{f}(\mathbf{x}), \mathbf{y}+\mathbf{k}=\mathbf{f}(\mathbf{x}+\mathbf{h})$. With $\varphi$ as in (48),

$$
\varphi(\mathbf{x}+\mathbf{h})-\varphi(\mathbf{x})=\mathbf{h}+A^{-1}[\mathbf{f}(\mathbf{x})-\mathbf{f}(\mathbf{x}+\mathbf{h})]=\mathbf{h}-A^{-1} \mathbf{k} \text {. }
$$

By (50), $\left|\mathbf{h}-A^{-1} \mathbf{k}\right| \leq \frac{1}{2}|\mathbf{h}|$. Hence $\left|A^{-1} \mathbf{k}\right| \geq \frac{1}{2}|\mathbf{h}|$, and

$$
|\mathbf{h}| \leq 2\left\|A^{-1}\right\||\mathbf{k}|=\lambda^{-1}|\mathbf{k}| \text {. }
$$

By (46), (47), and Theorem $9.8, \mathbf{f}^{\prime}(\mathbf{x})$ has an inverse, say $T$. Since

$$
g(y+k)-g(y)-T k=h-T k=-T\left[f(x+h)-f(x)-f^{\prime}(\mathbf{x}) \mathbf{h}\right]
$$

(51) implies

$$
\frac{|\mathbf{g}(\mathbf{y}+\mathbf{k})-\mathbf{g}(\mathbf{y})-T \mathbf{k}|}{|\mathbf{k}|} \leq \frac{\|T\|}{\lambda} \cdot \frac{\left|\mathbf{f}(\mathbf{x}+\mathbf{h})-\mathbf{f}(\mathbf{x})-\mathbf{f}^{\prime}(\mathbf{x}) \mathbf{h}\right|}{|\mathbf{h}|} .
$$

As $\mathbf{k} \rightarrow \mathbf{0}$, (51) shows that $\mathbf{h} \rightarrow \mathbf{0}$. The right side of the last inequality thus tends to 0 . Hence the same is true of the left. We have thus proved that $\mathbf{g}^{\prime}(\mathbf{y})=T$. But $T$ was chosen to be the inverse of $\mathbf{f}^{\prime}(\mathbf{x})=\mathbf{f}^{\prime}(\mathbf{g}(\mathbf{y}))$. Thus

$$
\mathbf{g}^{\prime}(\mathbf{y})=\left\{\mathbf{f}^{\prime}(\mathbf{g}(\mathbf{y}))\right\}^{-1} \quad(\mathbf{y} \in V) .
$$

Finally, note that $\mathbf{g}$ is a continuous mapping of $V$ onto $U$ (since $\mathbf{g}$ is differentiable), that $f^{\prime}$ is a continuous mapping of $U$ into the set $\Omega$ of all invertible elements of $L\left(R^{n}\right)$, and that inversion is a continuous mapping of $\Omega$ onto $\Omega$, by Theorem 9.8. If we combine these facts with (52), we see that $\mathbf{g} \in \mathscr{C}^{\prime}(V)$.

This completes the proof.

Remark. The full force of the assumption that $\mathbf{f} \in \mathscr{C}^{\prime}(E)$ was only used in the last paragraph of the preceding proof. Everything else, down to Eq. (52), was derived from the existence of $\mathbf{f}^{\prime}(\mathbf{x})$ for $\mathbf{x} \in E$, the invertibility of $\mathbf{f}^{\prime}(\mathbf{a})$, and the continuity of $\mathbf{f}^{\prime}$ at just the point a. In this connection, we refer to the article by A. Nijenhuis in Amer. Math. Monthly, vol. 81, 1974, pp. 969-980.

The following is an immediate consequence of part $(a)$ of the inverse function theorem.


**9.25 Theorem** If $\mathrm{f}$ is a $\mathscr{C}^{\prime}$-mapping of an open set $E \subset R^{n}$ into $R^{n}$ and if $\mathbf{f}^{\prime}(\mathbf{x})$ is invertible for every $\mathbf{x} \in E$, then $\mathbf{f}(W)$ is an open subset of $R^{n}$ for every open set $W \subset E$

In other words, $\mathrm{f}$ is an open mapping of $E$ into $R^{n}$.

The hypotheses made in this theorem ensure that each point $\mathbf{x} \in E$ has a neighborhood in which $f$ is 1-1. This may be expressed by saying that $f$ is locally one-to-one in $E$. But $\mathrm{f}$ need not be 1-1 in $E$ under these circumstances. For an example, see Exercise $17 .$
