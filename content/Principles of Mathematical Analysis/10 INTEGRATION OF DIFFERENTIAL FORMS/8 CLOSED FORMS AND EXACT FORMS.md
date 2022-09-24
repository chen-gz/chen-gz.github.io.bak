---
title: 8 CLOSED FORMS AND EXACT FORMS
date: 2022-08-16
---

**10.34 Definition** Let $\omega$ be a $k$-form in an open set $E \subset R^{n}$. If there is a $(k-1)$ form $\lambda$ in $E$ such that $\omega=d \lambda$, then $\omega$ is said to be exact in $E$.

If $\omega$ is of class $\mathscr{C}^{\prime}$ and $d \omega=0$, then $\omega$ is said to be closed.

Theorem $10.20(b)$ shows that every exact form of class $\mathscr{C}^{\prime}$ is closed.

In certain sets $E$, for example in convex ones, the converse is true; this is the content of Theorem $10.39$ (usually known as Poincarés lemma) and 

Theorem 10.40. However, Examples $10.36$ and $10.37$ will exhibit closed forms that are not exact.

**10.35 Remarks**

(a) Whether a given $k$-form $\omega$ is or is not closed can be verified by simply differentiating the coefficients in the standard presentation of $\omega$. For example, a 1-form

$$
\begin{equation}
\omega=\sum_{i=1}^{n} f_{i}(\mathbf{x}) d x_{i},
\label{eq:104}
\end{equation}
$$

with $f_{i} \in \mathscr{C}^{\prime}(E)$ for some open set $E \subset R^{n}$, is closed if and only if the equations

$$
\begin{equation}
\left(D_{j} f_{i}\right)(\mathbf{x})=\left(D_{i} f_{j}\right)(\mathbf{x})
\label{eq:105}
\end{equation}
$$

hold for all $i, j$ in $\{1, \ldots, n\}$ and for all $\mathbf{x} \in E$. Note that (105) is a "pointwise" condition; it does not involve any global properties that depend on the shape of $E$.

On the other hand, to show that $\omega$ is exact in $E$, one has to prove the existence of a form $\lambda$, defined in $E$, such that $d \lambda=\omega$. This amounts to solving a system of partial differential equations, not just locally, but in all of $E$. For example, to show that (104) is exact in a set $E$, one has to find a function (or 0-form) $g \in \mathscr{B}^{\prime}(E)$ such that

$$
\begin{equation}
\left(D_{i} g\right)(\mathbf{x})=f_{i}(\mathbf{x}) \quad(\mathbf{x} \in E, 1 \leq i \leq n) .
\label{eq:106}
\end{equation}
$$

Of course, (105) is a necessary condition for the solvability of (106).

(b) Let $\omega$ be an exact $k$-form in $E$. Then there is a $(k-1)$-form $\lambda$ in $E$ with $d \lambda=\omega$, and Stokes' theorem asserts that

$$
\begin{equation}
\int_{\Psi} \omega=\int_{\Psi} d \lambda=\int_{\partial \Psi} \lambda
\label{eq:107}
\end{equation}
$$

for every $k$-chain $\Psi$ of class $\mathscr{C}^{\prime \prime}$ in $E$.

If $\Psi_{1}$ and $\Psi_{2}$ are such chains, and if they have the same boundaries, it follows that

$$
\int_{\Psi_{1}} \omega=\int_{\Psi_{2}} \omega .
$$

In particular, the integral of an exact $k$-form in $E$ is 0 over every $k$-chain in $E$ whose boundary is 0 .

As an important special case of this, note that integrals of exact 1-forms in $E$ are 0 over closed (differentiable) curves in $E$.

(c) Let $\omega$ be a closed $k$-form in $E$. Then $d \omega=0$, and Stokes' theorem asserts that

$$
\begin{equation}
\int_{\partial \Psi} \omega=\int_{\Psi} d \omega=0
\label{eq:108}
\end{equation}
$$

for every $(k+1)$-chain $\Psi$ of class $\mathscr{B}^{\prime \prime}$ in $E$.

In other words, integrals of closed $k$-forms in $E$ are 0 over $k$-chains that are boundaries of $(k+1)$-chains in $E$.

(d) Let $\Psi$ be a $(k+1)$-chain in $E$ and let $\lambda$ be a $(k-1)$-form in $E$, both of class $\mathscr{C}^{\prime \prime}$. Since $d^{2} \lambda=0$, two applications of Stokes' theorem show that

$$
\begin{equation}
\int_{\partial \partial \Psi} \lambda=\int_{\partial \Psi} d \lambda=\int_{\Psi} d^{2} \lambda=0 .
\label{eq:109}
\end{equation}
$$

We conclude that $\partial^{2} \Psi=0$. In other words, the boundary of a boundary is 0 .

See Exercise 16 for a more direct proof of this. 

**10.36 Example** Let $E=R^{2}-\{0\}$, the plane with the origin removed. The 1-form

$$
\begin{equation}
\eta=\frac{x d y-y d x}{x^{2}+y^{2}}
\label{eq:110}
\end{equation}
$$

is closed in $R^{2}-\{\mathbf{0}\}$. This is easily verified by differentiation. Fix $r>0$, and define

$$
\begin{equation}
\gamma(t)=(r \cos t, r \sin t) \quad(0 \leq t \leq 2 \pi) .
\label{eq:111}
\end{equation}
$$

Then $\gamma$ is a curve (an "oriented 1-simplex") in $R^{2}-\{0\}$. Since $\gamma(0)=\gamma(2 \pi)$, we have

$$
\begin{equation}
\partial \gamma=0 \text {. }
\label{eq:112}
\end{equation}
$$

Direct computation shows that

$$
\begin{equation}
\int_{\gamma} \eta=2 \pi \neq 0 .
\label{eq:113}
\end{equation}
$$

The discussion in Remarks $10.35(b)$ and $(c)$ shows that we can draw two conclusions from (113):

First, $\eta$ is not exact in $R^{2}-\{0\}$, for otherwise (112) would force the integral (113) to be $0 .$

Secondly, $\gamma$ is not the boundary of any 2 -chain in $R^{2}-\{0\}$ (of class $\mathscr{C}^{\prime \prime}$ ), for otherwise the fact that $\eta$ is closed would force the integral (113) to be 0 .


**10.37 Example** Let $E=R^{3}-\{0\}, 3$-space with the origin removed. Define

$$
\begin{equation}
\zeta=\frac{x d y \wedge d z+y d z \wedge d x+z d x \wedge d y}{\left(x^{2}+y^{2}+z^{2}\right)^{3 / 2}}
\label{eq:114}
\end{equation}
$$

where we have written $(x, y, z)$ in place of $\left(x_{1}, x_{2}, x_{3}\right)$. Differentiation shows that $d \zeta=0$, so that $\zeta$ is a closed 2-form in $R^{3}-\{\boldsymbol{0}\}$.

Let $\Sigma$ be the 2-chain in $R^{3}-\{0\}$ that was constructed in Example 10.32; recall that $\Sigma$ is a parametrization of the unit sphere in $R^{3}$. Using the rectangle $D$ of Example $10.32$ as parameter domain, it is easy to compute that

$$
\begin{equation}
\int_{\Sigma} \zeta=\int_{D} \sin u d u d v=4 \pi \neq 0 .
\label{eq:115}
\end{equation}
$$

As in the preceding example, we can now conclude that $\zeta$ is not exact in $R^{3}-\{\boldsymbol{0}\}$ (since $\partial \Sigma=0$, as was shown in Example 10.32) and that the sphere $\Sigma$ is not the boundary of any 3 -chain in $R^{3}-\{0\}$ (of class $\mathscr{C}^{\prime \prime}$ ), although $\partial \Sigma=0$.

The following result will be used in the proof of Theorem 10.39. 


**10.38 Theorem** Suppose $E$ is a convex open set in $R^{n}, f \in \mathscr{C}^{\prime}(E), p$ is an integer, $1 \leq p \leq n$, and

$$
\begin{equation}
\left(D_{j} f\right)(\mathbf{x})=0 \quad(p<j \leq n, \mathbf{x} \in E) .
\label{eq:116}
\end{equation}
$$

Then there exists an $F \in \mathscr{C}^{\prime}(E)$ such that

$$
\begin{equation}
\left(D_{p} F\right)(\mathbf{x})=f(\mathbf{x}), \quad\left(D_{j} F\right)(\mathbf{x})=0 \quad(p<j \leq n, \mathbf{x} \in E) .
\label{eq:117}
\end{equation}
$$

Proof Write $\mathbf{x}=\left(\mathbf{x}^{\prime}, x_{p}, \mathbf{x}^{\prime \prime}\right)$, where

$$
\mathbf{x}^{\prime}=\left(x_{1}, \ldots, x_{p-1}\right), \mathbf{x}^{\prime \prime}=\left(x_{p+1}, \ldots, x_{n}\right) \text {. }
$$

(When $p=1, \mathbf{x}^{\prime}$ is absent; when $p=n, \mathbf{x}^{\prime \prime}$ is absent.) Let $V$ be the set of all $\left(\mathbf{x}^{\prime}, x_{p}\right) \in R^{p}$ such that $\left(\mathbf{x}^{\prime}, x_{p}, \mathbf{x}^{\prime \prime}\right) \in E$ for some $\mathbf{x}^{\prime \prime}$. Being a projection of $E, V$ is a convex open set in $R^{p}$. Since $E$ is convex and (116) holds, $f(\mathbf{x})$ does not depend on $\mathbf{x}^{\prime \prime}$. Hence there is a function $\varphi$, with domain $V$, such that

$$
f(\mathbf{x})=\varphi\left(\mathbf{x}^{\prime}, x_{p}\right)
$$

for all $\mathbf{x} \in E$.

If $p=1, V$ is a segment in $R^{1}$ (possibly unbounded). Pick $c \in V$ and define

$$
F(\mathbf{x})=\int_{c}^{x_{1}} \varphi(t) d t \quad(\mathbf{x} \in E) .
$$

If $p>1$, let $U$ be the set of all $\mathbf{x}^{\prime} \in R^{p-1}$ such that $\left(\mathbf{x}^{\prime}, x_{p}\right) \in V$ for some $x_{p}$. Then $U$ is a convex open set in $R^{p-1}$, and there is a function $\alpha \in \mathscr{C}^{\prime}(U)$ such that $\left(\mathbf{x}^{\prime}, \alpha\left(\mathbf{x}^{\prime}\right)\right) \in V$ for every $\mathbf{x}^{\prime} \in U$; in other words, the graph of $\alpha$ lies in $V$ (Exercise 29). Define

$$
F(\mathbf{x})=\int_{\alpha\left(\mathbf{x}^{\prime}\right)}^{x_{p}} \varphi\left(\mathbf{x}^{\prime}, t\right) d t \quad(\mathbf{x} \in E) .
$$

In either case, $F$ satisfies (117).

(Note: Recall the usual convention that $\int_{a}^{b}$ means $-\int_{b}^{a}$ if $b<a$.)


10.39 Theorem If $E \subset R^{n}$ is convex and open, if $k \geq 1$, if $\omega$ is a $k$-form of class $\mathscr{C}^{\prime}$ in $E$, and if $d \omega=0$, then there is $a(k-1)$-form $\lambda$ in $E$ such that $\omega=d \lambda$.

Briefly, closed forms are exact in convex sets.

Proof For $p=1, \ldots, n$, let $Y_{p}$ denote the set of all $k$-forms $\omega$, of class $\mathscr{C}^{\prime}$ in $E$, whose standard presentation

$$
\omega=\sum_{I} f_{I}(\mathbf{x}) d x_{I}
$$

does not involve $d x_{p+1}, \ldots, d x_{n}$. In other words, $I \subset\{1, \ldots, p\}$ if $f_{I}(\mathbf{x}) \neq 0$ for some $\mathbf{x} \in E$. We shall proceed by induction on $p$.

Assume first that $\omega \in Y_{1}$. Then $\omega=f(\mathbf{x}) d x_{1}$. Since $d \omega=0$, $\left(D_{j} f\right)(\mathbf{x})=0$ for $1<j \leq n, \mathbf{x} \in E$. By Theorem $10.38$ there is an $F \in \mathscr{C}^{\prime}(E)$ such that $D_{1} F=f$ and $D_{j} F=0$ for $1<j \leq n$. Thus

$$
d F=\left(D_{1} F\right)(\mathbf{x}) d x_{1}=f(\mathbf{x}) d x_{1}=\omega .
$$

Now we take $p>1$ and make the following induction hypothesis: Every closed $k$-form that belongs to $Y_{p-1}$ is exact in $E$.

Choose $\omega \in Y_{p}$ so that $d \omega=0$. By (118),

$$
\sum_{I} \sum_{j=1}^{n}\left(D_{j} f_{I}\right)(\mathbf{x}) d x_{j} \wedge d x_{I}=d \omega=0 .
$$

Consider a fixed $j$, with $p<j \leq n$. Each $I$ that occurs in (118) lies in $\{1, \ldots, p\}$. If $I_{1}, I_{2}$ are two of these $k$-indices, and if $I_{1} \neq I_{2}$, then the $(k+1)$-indices $\left(I_{1}, j\right),\left(I_{2}, j\right)$ are distinct. Thus there is no cancellation, and we conclude from (119) that every coefficient in (ii8) satisfies

$$
\left(D_{j} f_{I}\right)(\mathbf{x})=0 \quad(\mathbf{x} \in E, p<j \leq n) \text {. }
$$

We now gather those terms in (118) that contain $d x_{p}$ and rewrite $\omega$ in the form

$$
\omega=\alpha+\sum_{I_{0}} f_{I}(\mathbf{x}) d x_{I_{0}} \wedge d x_{p},
$$

where $\alpha \in Y_{p-1}$, each $I_{0}$ is an increasing $(k-1)$-index in $\{1, \ldots, p-1\}$, and $I=\left(I_{0}, p\right)$. By $(120)$, Theorem $10.38$ furnishes functions $F_{I} \in \mathscr{C}^{\prime}(E)$ such that

$$
D_{p} F_{I}=f_{I}, \quad D_{j} F_{I}=0 \quad(p<j \leq n) .
$$

Put

$$
\beta=\sum_{I_{0}} F_{I}(\mathbf{x}) d x_{I_{0}}
$$

and define $\gamma=\omega-(-1)^{k-1} d \beta$. Since $\beta$ is a $(k-1)$-form, it follows that

$$
\begin{aligned}
\gamma &=\omega-\sum_{I_{0}} \sum_{j=1}^{p}\left(D_{j} F_{I}\right)(\mathbf{x}) d x_{I_{0}} \wedge d x_{j} \\
&=\alpha-\sum_{I_{0}}^{p-1} \sum_{j=1}^{p-1}\left(D_{j} F_{I}\right)(\mathbf{x}) d x_{I_{0}} \wedge d x_{j}
\end{aligned}
$$

which is clearly in $Y_{p-1}$. Since $d \omega=0$ and $d^{2} \beta=0$, we have $d \gamma=0$. Our induction hypothesis shows therefore that $\gamma=d \mu$ for some $(k-1)$-form $\mu$ in $E$. If $\lambda=\mu+(-1)^{k-1} \beta$, we conclude that $\omega=d \lambda$,

By induction, this completes the proof. 

**10.40 Theorem** Fix $k, 1 \leq k \leq n$. Let $E \subset R^{n}$ be an open set in which every closed $k$-form is exact. Let $T$ be a 1-1 $\mathscr{C}^{\prime \prime}$-mapping of $E$ onto an open set $U \subset R^{n}$ whose inverse $S$ is also of class $\mathscr{C}^{\prime \prime}$.

Then every closed $k$-form in $U$ is exact in $U$.

Note that every convex open set $E$ satisfies the present hypothesis, by Theorem 10.39. The relation between $E$ and $U$ may be expressed by saying that they are $\mathscr{C}^{\prime \prime}$-equivalent.

Thus every closed form is exact in any set which is $\mathscr{C}^{\prime \prime}$-equivalent to a convex open set.

Proof Let $\omega$ be a $k$-form in $U$, with $d \omega=0$. By Theorem $10.22(c)$, $\omega_{T}$ is a $k$-form in $E$ for which $d\left(\omega_{T}\right)=0$. Hence $\omega_{T}=d \lambda$ for some $(k-1)$-form $\lambda$ in $E$. By Theorem 10.23, and another application of Theorem $10.22(c)$,

$$
\omega=\left(\omega_{T}\right)_{S}=(d \lambda)_{S}=d\left(\lambda_{S}\right) .
$$

Since $\lambda_{S}$ is a $(k-1)$-form in $U, \omega$ is exact in $U$.

**10.41 Remark** In applications, cells (see Definition 2.17) are often more convenient parameter domains than simplexes. If our whole development had been based on cells rather than simplexes, the computation that occurs in the proof of Stokes' theorem would be even simpler. (It is done that way in Spivak's book.) The reason for preferring simplexes is that the definition of the boundary of an oriented simplex seems easier and more natural than is the case for a cell. (See Exercise 19.) Also, the partitioning of sets into simplexes (called "triangulation') plays an important role in topology, and there are strong connections between certain aspects of topology, on the one hand, and differential forms, on the other. These are hinted at in Sec. 10.35. The book by Singer and Thorpe contains a good introduction to this topic.

Since every cell can be triangulated, we may regard it as a chain. For dimension 2, this was done in Example 10.32; for dimension 3, see Exercise $18 .$

Poincaré's lemma (Theorem 10.39) can be proved in several ways. See, for example, page 94 in Spivak's book, or page 280 in Fleming's. Two simple proofs for certain special cases are indicated in Exercises 24 and $27 .$
