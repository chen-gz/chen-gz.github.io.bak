---
title: 10 Exerciese.md
date: 2022-08-17
---

1. Let $H$ be a compact convex set in $R^{k}$, with nonempty interior. Let $f \in \mathscr{C}(H)$, put $f(\mathbf{x})=0$ in the complement of $H$, and define $\int_{H} f$ as in Definition 10.3.

Prove that $\int_{H} f$ is independent of the order in which the $k$ integrations are carried out.

Hint: Approximate $f$ by functions that are continuous on $R^{k}$ and whose supports are in $H$, as was done in Example 10.4.

2. For $i=1,2,3, \ldots$, let $\varphi_{\iota} \in \mathscr{C}\left(R^{1}\right)$ have support in $\left(2^{-1}, 2^{1-1}\right)$, such that $\int \varphi_{l}=1$. Put

$$
f(x, y)=\sum_{i=1}^{\infty}\left[\varphi_{l}(x)-\varphi_{i+1}(x)\right] \varphi_{l}(y)
$$

Then $f$ has compact support in $R^{2}, f$ is continuous except at $(0,0)$, and

$$
\int d y \int f(x, y) d x=0 \quad \text { but } \quad \int d x \int f(x, y) d y=1 .
$$

Observe that $f$ is unbounded in every neighborhood of $(0,0)$. 3. (a) If $F$ is as in Theorem $10.7$, put $\mathbf{A}=\mathbf{F}^{\prime}(0), \mathbf{F}_{1}(\mathbf{x})=\mathbf{A}^{-1} \mathbf{F}(\mathbf{x})$. Then $\mathbf{F}_{1}^{\prime}(0)=I$. Show that

$$
\mathbf{F}_{1}(\mathbf{x})=\mathbf{G}_{n} \circ \mathbf{G}_{n-1} \circ \cdots \circ \mathbf{G}_{1}(\mathbf{x})
$$

in some neighborhood of $\mathbf{0}$, for certain primitive mappings $\mathbf{G}_{1}, \ldots, \mathbf{G}_{n}$. This gives another version of Theorem 10.7:

$$
\mathbf{F}(\mathbf{x})=\mathbf{F}^{\prime}(\mathbf{0}) \mathbf{G}_{n} \circ \mathbf{G}_{n-1} \circ \cdots \circ \mathbf{G}_{1}(\mathbf{x}) .
$$

(b) Prove that the mapping $(x, y) \rightarrow(y, x)$ of $R^{2}$ onto $R^{2}$ is not the composition of any two primitive mappings, in any neighborhood of the origin. (This shows that the flips $B_{1}$ cannot be omitted from the statement of Theorem 10.7.)

4. For $(x, y) \in R^{2}$, define

$$
\mathbf{F}(x, y)=\left(e^{x} \cos y-1, e^{x} \sin y\right) .
$$

Prove that $\mathbf{F}=\mathbf{G}_{2} \circ \mathbf{G}_{1}$, where

$$
\begin{aligned}
&\mathbf{G}_{1}(x, y)=\left(e^{x} \cos y-1, y\right) \\
&\mathbf{G}_{2}(u, v)=(u,(1+u) \tan v)
\end{aligned}
$$

are primitive in some neighborhood of $(0,0)$.

Compute the Jacobians of $\mathbf{G}_{1}, \mathbf{G}_{2}, \mathbf{F}$ at $(0,0)$. Define

$$
\mathbf{H}_{2}(x, y)=\left(x, e^{x} \sin y\right)
$$

and find

$$
\mathbf{H}_{1}(u, v)=(h(u, v), v)
$$

so that $\mathbf{F}=\mathbf{H}_{1} \circ \mathbf{H}_{2}$ is some neighborhood of $(0,0)$.

5. Formulate and prove an analogue of Theorem 10.8, in which $K$ is a compact subset of an arbitrary metric space. (Replace the functions $\varphi_{\iota}$ that occur in the proof of Theorem $10.8$ by functions of the type constructed in Exercise 22 of Chap. 4.)

6. Strengthen the conclusion of Theorem $10.8$ by showing that the functions $\psi_{t}$ can be made differentiable, and even infinitely differentiable. (Use Exercise 1 of Chap. 8 in the construction of the auxiliary functions $\varphi_{l}$.)

7. (a) Show that the simplex $Q^{k}$ is the smallest convex subset of $R^{k}$ that contains $\mathbf{0}, \mathbf{e}_{1}, \ldots, \mathbf{e}_{k}$.

(b) Show that affine mappings take convex sets to convex sets.

8. Let $H$ be the parallelogram in $R^{2}$ whose vertices are $(1,1),(3,2),(4,5),(2,4)$. Find the affine map $T$ which sends $(0,0)$ to $(1,1),(1,0)$ to $(3,2),(0,1)$ to $(2,4)$. Show that $J_{T}=5$. Use $T$ to convert the integral

$$
\alpha=\int_{H} e^{x-y} d x d y
$$

to an integral over $I^{2}$ and thus compute $\alpha$. 9. Define $(x, y)=T(r, \theta)$ on the rectangle

$$
0 \leq r \leq a, \quad 0 \leq \theta \leq 2 \pi
$$

by the equations

$$
x=r \cos \theta, \quad y=r \sin \theta .
$$

Show that $T$ maps this rectangle onto the closed disc $D$ with center at $(0,0)$ and radius $a$, that $T$ is one-to-one in the interior of the rectangle, and that $J_{T}(r, \theta)=r$. If $f \in \mathscr{B}(D)$, prove the formula for integration in polar coordinates:

$$
\int_{D} f(x, y) d x d y=\int_{0}^{a} \int_{0}^{2 \pi} f(T(r, \theta)) r d r d \theta .
$$

Hint: Let $D_{0}$ be the interior of $D$, minus the interval from $(0,0)$ to $(0, a)$. As it stands, Theorem $10.9$ applies to continuous functions $f$ whose support lies in $D_{0}$. To remove this restriction, proceed as in Example 10.4.

10. Let $a \rightarrow \infty$ in Exercise 9 and prove that

$$
\int_{\mathbb{R}^{2}} f(x, y) d x d y=\int_{0}^{\infty} \int_{0}^{2 \pi} f(T(r, \theta)) r d r d \theta,
$$

for continuous functions $f$ that decrease sufficiently rapidly as $|x|+|y| \rightarrow \infty$. (Find a more precise formulation.) Apply this to

$$
f(x, y)=\exp \left(-x^{2}-y^{2}\right)
$$

to derive formula (101) of Chap. $8 .$

11. Define $(u, v)=T(s, t)$ on the strip

$$
0<s<\infty, \quad 0<t<1
$$

by setting $u=s-s t, v=s t$. Show that $T$ is a 1-1 mapping of the strip onto the positive quadrant $Q$ in $R^{2}$. Show that $J_{T}(s, t)=s$.

For $x>0, y>0$, integrate

$$
u^{x-1} e^{-u} v^{y-1} e^{-v}
$$

over $Q$, use Theorem $10.9$ to convert the integral to one over the strip, and derive formula (96) of Chap. 8 in this way.

(For this application, Theorem $10.9$ has to be extended so as to cover certain improper integrals. Provide this extension.)

12. Let $I^{k}$ be the set of all $\mathbf{u}=\left(u_{1}, \ldots, u_{k}\right) \in R^{k}$ with $0 \leq u_{l} \leq 1$ for all $i$; let $Q^{k}$ be the set of all $\mathrm{x}=\left(x_{1}, \ldots, x_{k}\right) \in R^{k}$ with $x_{l} \geq 0, \Sigma x_{i} \leq 1$. ( $\left(I^{k}\right.$ is the unit cube; $Q^{k}$ is the standard simplex in $R^{k}$.) Define $\mathrm{x}=T(\mathbf{u})$ by

$$
\begin{aligned}
&x_{1}=u_{1} \\
&x_{2}=\left(1-u_{1}\right) u_{2} \\
&\cdots \cdots \cdots \cdots \cdots \cdots \cdots \cdots \cdots \cdots . . . \\
&x_{k}=\left(1-u_{1}\right) \cdots\left(1-u_{k-1}\right) u_{k} .
\end{aligned}
$$

Show that

$$
\sum_{i=1}^{k} x_{l}=1-\prod_{i=1}^{k}\left(1-u_{i}\right) .
$$

Show that $T$ maps $I^{k}$ onto $Q^{k}$, that $T$ is $1-1$ in the interior of $I^{k}$, and that its inverse $S$ is defined in the interior of $Q^{k}$ by $u_{1}=x_{1}$ and

$$
u_{l}=\frac{x_{l}}{1-x_{1}-\cdots-x_{l-1}}
$$

for $i=2, \ldots, k$. Show that

$$
J_{T}(\mathbf{u})=\left(1-u_{1}\right)^{k-1}\left(1-u_{2}\right)^{k-2} \cdots\left(1-u_{k-1}\right),
$$

and

$$
J_{S}(\mathbf{x})=\left[\left(1-x_{1}\right)\left(1-x_{1}-x_{2}\right) \cdots\left(1-x_{1}-\cdots-x_{k-1}\right)\right]^{-1} .
$$

13. Let $r_{1}, \ldots, r_{k}$ be nonnegative integers, and prove that

$$
\int_{\mathbf{Q}^{k}} x_{1}^{r_{1}} \cdots x_{k}^{r_{k}} d x=\frac{r_{1} ! \cdots r_{k} !}{\left(k+r_{1}+\cdots+r_{k}\right) !}
$$

Hint: Use Exercise 12, Theorems $10.9$ and 8.20.

Note that the special case $r_{1}=\cdots=r_{k}=0$ shows that the volume of $Q^{k}$ is $1 / k !$

14. Prove formula (46).

15. If $\omega$ and $\lambda$ are $k$ - and $m$-forms, respectively, prove that

$$
\omega \wedge \lambda=(-1)^{k m} \lambda \wedge \omega .
$$

16. If $k \geq 2$ and $\sigma=\left[\mathbf{p}_{0}, \mathbf{p}_{1}, \ldots, \mathbf{p}_{k}\right]$ is an oriented affine $k$-simplex, prove that $\partial^{2} \sigma=0$, directly from the definition of the boundary operator $\partial$. Deduce from this that $\partial^{2} \Psi=0$ for every chain $\Psi$.

Hint: For orientation, do it first for $k=2, k=3$. In general, if $i<j$, let $\sigma_{l \jmath}$ be the $(k-2)$-simplex obtained by deleting $\mathbf{p}_{i}$ and $\mathbf{p}_{j}$ from $\sigma$. Show that each $\sigma_{l \jmath}$ occurs twice in $\partial^{2} \sigma$, with opposite sign.

17. Put $J^{2}=\tau_{1}+\tau_{2}$, where

$$
\tau_{1}=\left[0, \mathbf{e}_{1}, \mathbf{e}_{1}+\mathbf{e}_{2}\right], \quad \tau_{2}=-\left[0, \mathbf{e}_{2}, \mathbf{e}_{2}+\mathbf{e}_{1}\right] .
$$

Explain why it is reasonable to call $J^{2}$ the positively oriented unit square in $R^{2}$. Show that $\partial J^{2}$ is the sum of 4 oriented affine 1-simplexes. Find these. What is $\partial\left(\tau_{1}-\tau_{2}\right) ?$

18. Consider the oriented affine 3 -simplex

$$
\sigma_{1}=\left[\mathbf{0}, \mathbf{e}_{1}, \mathbf{e}_{1}+\mathbf{e}_{2}, \mathbf{e}_{1}+\mathbf{e}_{2}+\mathbf{e}_{3}\right]
$$

in $R^{3}$. Show that $\sigma_{1}$ (regarded as a linear transformation) has determinant 1 . Thus $\sigma_{1}$ is positively oriented. Let $\sigma_{2}, \ldots, \sigma_{6}$ be five other oriented 3-simplexes, obtained as follows: There are five permutations $\left(i_{1}, i_{2}, i_{3}\right)$ of $(1,2,3)$, distinct from $(1,2,3)$. Associate with each $\left(i_{1}, i_{2}, i_{3}\right)$ the simplex

$$
s\left(i_{1}, i_{2}, i_{3}\right)\left[0, \mathbf{e}_{l_{1}}, \mathbf{e}_{t_{1}}+\mathbf{e}_{l_{2}}, \mathbf{e}_{l_{1}}+\mathbf{e}_{l_{2}}+\mathbf{e}_{l_{3}}\right]
$$

where $s$ is the sign that occurs in the definition of the determinant. (This is how $\tau_{2}$ was obtained from $\tau_{1}$ in Exercise 17.)

Show that $\sigma_{2}, \ldots, \sigma_{6}$ are positively oriented.

Put $J^{3}=\sigma_{1}+\cdots+\sigma_{6}$. Then $J^{3}$ may be called the positively oriented unit cube in $R^{3}$.

Show that $\partial J^{3}$ is the sum of 12 oriented affine 2 -simplexes. (These 12 triangles cover the surface of the unit cube $I^{3}$.)

Show that $\mathrm{x}=\left(x_{1}, x_{2}, x_{3}\right)$ is in the range of $\sigma_{1}$ if and only if $0 \leq x_{3} \leq x_{2}$ $\leq x_{1} \leq 1$.

Show that the ranges of $\sigma_{1}, \ldots, \sigma_{6}$ have disjoint interiors, and that their union covers $I^{3}$. (Compare with Exercise 13 ; note that $3 !=6$.)

19. Let $J^{2}$ and $J^{3}$ be as in Exercise 17 and 18. Define

$$
\begin{array}{ll}
B_{01}(u, v)=(0, u, v), & B_{11}(u, v)=(1, u, v), \\
B_{02}(u, v)=(u, 0, v), & B_{12}(u, v)=(u, 1, v), \\
B_{03}(u, v)=(u, v, 0), & B_{13}(u, v)=(u, v, 1) .
\end{array}
$$

These are affine, and map $R^{2}$ into $R^{3}$.

Put $\beta_{r i}=B_{r i}\left(J^{2}\right)$, for $r=0,1, i=1,2,3$. Each $\beta_{r i}$ is an affine-oriented 2-chain. (See Sec. 10.30.) Verify that

$$
\partial J^{3}=\sum_{l=1}^{3}(-1)^{t}\left(\beta_{0 \imath}-\beta_{1 i}\right),
$$

in agreement with Exercise $18 .$

20. State conditions under which the formula

$$
\int_{\Phi} f d \omega=\int_{\Omega_{\Phi}} f \omega-\int_{\Phi}(d f) \wedge \omega
$$

is valid, and show that it generalizes the formula for integration by parts. Hint $: d(f \omega)=(d f) \wedge \omega+f d \omega$.

21. As in Example 10.36, consider the 1-form

$$
\eta=\frac{x d y-y d x}{x^{2}+y^{2}}
$$

in $R^{2}-\{0\}$

(a) Carry out the computation that leads to formula (113), and prove that $d \eta=0$.

(b) Let $\gamma(t)=(r \cos t, r \sin t)$, for some $r>0$, and let $\Gamma$ be a $\mathscr{C}^{\prime \prime}$-curve in $R^{2}-\{0\}$, with parameter interval $[0,2 \pi]$, with $\Gamma(0)=\Gamma(2 \pi)$, such that the intervals $[\gamma(t)$, $\Gamma(t)]$ do not contain 0 for any $t \in[0,2 \pi]$. Prove that

$$
\int_{\Gamma} \eta=2 \pi \text {. }
$$

Hint: For $0 \leq t \leq 2 \pi, 0 \leq u \leq 1$, define

$$
\Phi(t, u)=(1-u) \Gamma(t)+u \gamma(t) .
$$

Then $\Phi$ is a 2 -surface in $R^{2}-\{0\}$ whose parameter domain is the indicated rectangle. Because of cancellations (as in Example 10.32),

$$
\partial \Phi=\Gamma-\gamma .
$$

Use Stokes' theorem to deduce that

$$
\int_{\Gamma} \eta=\int_{\nu} \eta
$$

because $d \eta=0$

(c) Take $\Gamma(t)=(a \cos t, b \sin t)$ where $a>0, b>0$ are fixed. Use part (b) to show that

$$
\int_{0}^{2 \pi} \frac{a b}{a^{2} \cos ^{2} t+b^{2} \sin ^{2} t} d t=2 \pi
$$

(d) Show that

$$
\eta=d\left(\arctan \frac{y}{x}\right)
$$

in any convex open set in which $x \neq 0$, and that

$$
\eta=d\left(-\arctan \frac{x}{y}\right)
$$

in any convex open set in which $y \neq 0$.

Explain why this justifies the notation $\eta=d \theta$, in spite of the fact that $\eta$ is not exact in $R^{2}-\{0\}$.

(e) Show that $(b)$ can be derived from $(d)$.

$(f)$ If $\Gamma$ is any closed $\mathscr{C}^{\prime}$-curve in $R^{2}-\{0\}$, prove that

$$
\frac{1}{2 \pi} \int_{\Gamma} \eta=\operatorname{Ind}(\Gamma) .
$$

(See Exercise 23 of Chap. 8 for the definition of the index of a curve.) 22. As in Example 10.37, define $\zeta$ in $R^{3}-\{0\}$ by

$$
\zeta=\frac{x d y \wedge d z+y d z \wedge d x+z d x \wedge d y}{r^{3}}
$$

where $r=\left(x^{2}+y^{2}+z^{2}\right)^{1 / 2}$, let $D$ be the rectangle given by $0 \leq u \leq \pi, 0 \leq v \leq 2 \pi$, and let $\Sigma$ be the 2 -surface in $R^{3}$, with parameter domain $D$, given by

$$
x=\sin u \cos v, \quad y=\sin u \sin v, \quad z=\cos u .
$$

(a) Prove that $d \zeta=0$ in $R^{3}-\{0\}$.

(b) Let $S$ denote the restriction of $\Sigma$ to a parameter domain $E \subset D$. Prove that

$$
\int_{s} \zeta=\int_{E} \sin u d u d v=A(S),
$$

where $A$ denotes area, as in Sec. 10.43. Note that this contains (115) as a special case.

(c) Suppose $g, h_{1}, h_{2}, h_{3}$, are $\mathscr{C}^{\prime \prime}$-functions on $[0,1], g>0$. Let $(x, y, z)=\Phi(s, t)$ define a 2-surface $\Phi$, with parameter domain $I^{2}$, by

$$
x=g(t) h_{1}(s), \quad y=g(t) h_{2}(s), \quad z=g(t) h_{3}(s) .
$$

Prove that

$$
\int_{\Phi} \zeta=0
$$

directly from (35).

Note the shape of the range of $\Phi$ : For fixed $s, \Phi(s, t)$ runs over an interval on a line through 0 . The range of $\Phi$ thus lies in a "cone" with vertex at the origin.

(d) Let $E$ be a closed rectangle in $D$, with edges parallel to those of $D$. Suppose $f \in \mathscr{C}^{\prime \prime}(D), f>0$. Let $\Omega$ be the 2 -surface with parameter domain $E$, defined by

$$
\Omega(u, v)=f(u, v) \Sigma(u, v) .
$$

Define $S$ as in (b) and prove that

$$
\int_{\Omega} \zeta=\int_{S} \zeta=A(S) .
$$

(Since $S$ is the "radial projection" of $\Omega$ into the unit sphere, this result makes it reasonable to call $\int_{\Omega} \zeta$ the "solid angle" subtended by the range of $\Omega$ at the origin.)

Hint: Consider the 3-surface $\Psi$ given by

$$
\Psi(t, u, v)=[1-t+t f(u, v)] \Sigma(u, v),
$$

where $(u, v) \in E, 0 \leq t \leq 1$. For fixed $v$, the mapping $(t, u) \rightarrow \Psi(t, u, v)$ is a 2-sur- face $\Phi$ to which (c) can be applied to show that $\int_{\Phi} \zeta=0$. The same thing holds when $u$ is fixed. By $(a)$ and Stokes' theorem,

$$
\int_{\partial \Psi} \zeta=\int_{\Psi} d \zeta=0 .
$$

(e) Put $\lambda=-(z / r) \eta$, where

$$
\eta=\frac{x d y-y d x}{x^{2}+y^{2}},
$$

as in Exercise 21. Then $\lambda$ is a 1-form in the open set $V \subset R^{3}$ in which $x^{2}+y^{2}>0$.

Show that $\zeta$ is exact in $V$ by showing that

$$
\zeta=d \lambda \text {. }
$$

$(f)$ Derive $(d)$ from $(e)$, without using $(c)$.

Hint: To begin with, assume $0<u<\pi$ on $E$. By $(e)$,

$$
\int_{\Omega} \zeta=\int_{\partial \Omega} \lambda \text { and } \int_{S} \zeta=\int_{\partial S} \lambda .
$$

Show that the two integrals of $\lambda$ are equal, by using part $(d)$ of Exercise 21, and by noting that $z / r$ is the same at $\Sigma(u, v)$ as at $\Omega(u, v)$.

(g) Is $\zeta$ exact in the complement of every line through the origin?

23. Fix $n$. Define $r_{k}=\left(x_{1}^{2}+\cdots+x_{k}^{2}\right)^{1 / 2}$ for $1 \leq k \leq n$, let $E_{k}$ be the set of all $\mathbf{x} \in R^{n}$ at which $r_{k}>0$, and let $\omega_{k}$ be the $(k-1)$-form defined in $E_{k}$ by

$$
\omega_{k}=\left(r_{k}\right)^{-k} \sum_{i=1}^{k}(-1)^{t-1} x_{i} d x_{1} \wedge \cdots \wedge d x_{i-1} \wedge d x_{i+1} \wedge \cdots \wedge d x_{k} .
$$

Note that $\omega_{2}=\eta, \omega_{3}=\zeta$, in the terminology of Exercises 21 and 22 . Note also that

$$
E_{1} \subset E_{2} \subset \cdots \subset E_{n}=R^{n}-\{0\} .
$$

(a) Prove that $d \omega_{k}=0$ in $E_{k}$.

(b) For $k=2, \ldots, n$, prove that $\omega_{k}$ is exact in $E_{k-1}$, by showing that

$$
\omega_{k}=d\left(f_{k} \omega_{k-1}\right)=\left(d f_{k}\right) \wedge \omega_{k-1},
$$

where $f_{k}(\mathbf{x})=(-1)^{k} g_{k}\left(x_{k} / r_{k}\right)$ and

$$
g_{k}(t)=\int_{-1}^{t}\left(1-s^{2}\right)^{(k-3) / 2} d s \quad(-1<t<1) .
$$

Hint: $f_{k}$ satisfies the differential equations

and

$$
\mathbf{x} \cdot\left(\nabla f_{k}\right)(\mathbf{x})=0
$$

$$
\left(D_{k} f_{k}\right)(\mathbf{x})=\frac{(-1)^{k}\left(r_{k-1}\right)^{k-1}}{\left(r_{k}\right)^{k}} .
$$

(c) Is $\omega_{n}$ exact in $E_{n}$ ?

(d) Note that (b) is a generalization of part $(e)$ of Exercise 22. Try to extend some of the other assertions of Exercises 21 and 22 to $\omega_{n}$, for arbitrary $n$.

24. Let $\omega=\Sigma a_{l}(\mathbf{x}) d x_{l}$ be a 1 -form of class $\mathscr{C}^{\prime \prime}$ in a convex open set $E \subset R^{n}$. Assume $d \omega=0$ and prove that $\omega$ is exact in $E$, by completing the following outline:

Fix $\mathbf{p} \in E$. Define

$$
f(\mathbf{x})=\int_{[\mathbf{p}, \mathbf{x}]} \omega \quad(\mathbf{x} \in E) \text {. }
$$

Apply Stokes' theorem to affine-oriented 2-simplexes $[\mathbf{p}, \mathbf{x}, \mathbf{y}]$ in $E$. Deduce that

$$
f(\mathbf{y})-f(\mathbf{x})=\sum_{l=1}^{n}\left(y_{l}-x_{l}\right) \int_{0}^{1} a_{l}((1-t) \mathbf{x}+t \mathbf{y}) d t
$$

for $\mathbf{x} \in E, \mathbf{y} \in E$. Hence $\left(D_{l} f\right)(\mathbf{x})=a_{l}(\mathbf{x})$.

25. Assume that $\omega$ is a 1-form in an open set $E \subset R^{n}$ such that

$$
\int_{\nu} \omega=0
$$

for every closed curve $\gamma$ in $E$, of class $\mathscr{C}^{\prime}$. Prove that $\omega$ is exact in $E$, by imitating part of the argument sketched in Exercise $24 .$

26. Assume $\omega$ is a 1-form in $R^{3}-\{0\}$, of class $\mathscr{C}^{\prime}$ and $d \omega=0$. Prove that $\omega$ is exact in $R^{3}-\{0\}$

Hint: Every closed continuously differentiable curve in $R^{3}-\{0\}$ is the boundary of a 2-surface in $R^{3}-\{0\}$. Apply Stokes' theorem and Exercise $25 .$

27. Let $E$ be an open 3-cell in $R^{3}$, with edges parallel to the coordinate axes. Suppose $(a, b, c) \in E, f_{i} \in \mathscr{C}^{\prime}(E)$ for $i=1,2,3$,

$$
\omega=f_{1} d y \wedge d z+f_{2} d z \wedge d x+f_{3} d x \wedge d y,
$$

and assume that $d \omega=0$ in $E$. Define

$$
\lambda=g_{1} d x+g_{2} d y
$$

where

$$
\begin{aligned}
&g_{1}(x, y, z)=\int_{c}^{z} f_{2}(x, y, s) d s-\int_{b}^{y} f_{3}(x, t, c) d t \\
&g_{2}(x, y, z)=-\int_{c}^{z} f_{1}(x, y, s) d s,
\end{aligned}
$$

for $(x, y, z) \in E$. Prove that $d \lambda=\omega$ in $E$.

Evaluate these integrals when $\omega=\zeta$ and thus find the form $\lambda$ that occurs in part $(e)$ of Exercise $22 .$ 28. Fix $b>a>0$, define

$$
\Phi(r, \theta)=(r \cos \theta, r \sin \theta)
$$

for $a \leq r \leq b, 0 \leq \theta \leq 2 \pi$. (The range of $\Phi$ is an annulus in $R^{2}$.) Put $\omega=x^{3} d y$, and compute both

$$
\int_{\infty} d \omega \text { and } \int_{\Delta \Phi} \omega
$$

to verify that they are equal.

29. Prove the existence of a function $\alpha$ with the properties needed in the proof of Theorem 10.38, and prove that the resulting function $F$ is of class $\mathscr{C}^{\prime}$. (Both assertions become trivial if $E$ is an open cell or an open ball, since $\alpha$ can then be taken to be a constant. Refer to Theorem 9.42.)

30. If $\mathbf{N}$ is the vector given by (135), prove that

$$
\operatorname{det}\left[\begin{array}{lll}
\alpha_{1} & \beta_{1} & \alpha_{2} \beta_{3}-\alpha_{3} \beta_{2} \\
\alpha_{2} & \beta_{2} & \alpha_{3} \beta_{1}-\alpha_{1} \beta_{3} \\
\alpha_{3} & \beta_{3} & \alpha_{1} \beta_{2}-\alpha_{2} \beta_{1}
\end{array}\right]=|\mathbf{N}|^{2}
$$

Also, verify Eq. (137).

31. Let $E \subset R^{3}$ be open, suppose $g \in \mathscr{C}^{\prime \prime}(E), h \in \mathscr{C}^{\prime \prime}(E)$, and consider the vector field

$$
\mathbf{F}=g \nabla h .
$$

(a) Prove that

$$
\nabla \cdot F=g \nabla^{2} h+(\nabla g) \cdot(\nabla h)
$$

where $\nabla^{2} h=\nabla \cdot(\nabla h)=\Sigma \partial^{2} h / \partial x_{i}^{2}$ is the so-called "Laplacian" of $h$.

(b) If $\Omega$ is a closed subset of $E$ with positively oriented boundary $\partial \Omega$ (as in Theorem 10.51), prove that

$$
\int_{\Omega}\left[g \nabla^{2} h+(\nabla g) \cdot(\nabla h)\right] d V=\int_{\partial \Omega} g \frac{\partial h}{\partial n} d A
$$

where (as is customary) we have written $\partial h / \partial n$ in place of $(\nabla h) \cdot \mathbf{n}$. (Thus $\partial h / \partial n$ is the directional derivative of $h$ in the direction of the outward normal to $\partial \Omega$, the so-called normal derivative of $h$.) Interchange $g$ and $h$, subtract the resulting formula from the first one, to obtain

$$
\int_{\Omega}\left(g \nabla^{2} h-h \nabla^{2} g\right) d V=\int_{\partial \Omega}\left(g \frac{\partial h}{\partial n}-h \frac{d g}{\partial n}\right) d A .
$$

These two formulas are usually called Green's identities.

(c) Assume that $h$ is harmonic in $E$; this means that $\nabla^{2} h=0$. Take $g=1$ and conclude that

$$
\int_{\partial \Omega} \frac{\partial h}{\partial n} d A=0
$$

Take $g=h$, and conclude that $h=0$ in $\Omega$ if $h=0$ on $\partial \Omega$.

(d) Show that Green's identities are also valid in $R^{2}$.

32. Fix $\delta, 0<\delta<1$. Let $D$ be the set of all $(\theta, t) \in R^{2}$ such that $0 \leq \theta \leq \pi,-\delta \leq t \leq \delta$. Let $\Phi$ be the 2-surface in $R^{3}$, with parameter domain $D$, given by

$$
\begin{aligned}
&x=(1-t \sin \theta) \cos 2 \theta \\
&y=(1-t \sin \theta) \sin 2 \theta \\
&z=t \cos \theta
\end{aligned}
$$

where $(x, y, z)=\Phi(\theta, t)$. Note that $\Phi(\pi, t)=\Phi(0,-t)$, and that $\Phi$ is one-to-one on the rest of $D$.

The range $M=\Phi(D)$ of $\Phi$ is known as a Möbius band. It is the simplest example of a nonorientable surface.

Prove the various assertions made in the following description: Put $\mathbf{p}_{1}=(0,-\delta), \mathbf{p}_{2}=(\pi,-\delta), \mathbf{p}_{3}=(\pi, \delta), \mathbf{p}_{4}=(0, \delta), \mathbf{p}_{5}=\mathbf{p}_{1}$. Put $\gamma_{i}=\left[\mathbf{p}_{i}, \mathbf{p}_{i+1}\right]$, $i=1, \ldots, 4$, and put $\Gamma_{1}=\Phi \circ \gamma_{1}$. Then

$$
\partial \Phi=\Gamma_{1}+\Gamma_{2}+\Gamma_{3}+\Gamma_{4} .
$$

Put $\mathbf{a}=(1,0,-\delta), \mathbf{b}=(1,0, \delta)$. Then

$$
\Phi\left(\mathbf{p}_{1}\right)=\Phi\left(\mathbf{p}_{3}\right)=\mathbf{a}, \quad \Phi\left(\mathbf{p}_{2}\right)=\Phi\left(\mathbf{p}_{4}\right)=\mathbf{b},
$$

and $\partial \Phi$ can be described as follows.

$\Gamma_{1}$ spirals up from a to $\mathbf{b}$; its projection into the $(x, y)$-plane has winding number $+1$ around the origin. (See Exercise 23, Chap. 8.)

$$
\Gamma_{2}=[\mathbf{b}, \mathbf{a}] \text {. }
$$

$\Gamma_{3}$ spirals up from a to $\mathbf{b}$; its projection into the $(x, y)$ plane has winding number $-1$ around the origin.

$$
\Gamma_{4}=[\mathbf{b}, \mathbf{a}] \text {. }
$$

Thus $\partial \Phi=\Gamma_{1}+\Gamma_{3}+2 \Gamma_{2}$.

If we go from a to $\mathbf{b}$ along $\Gamma_{1}$ and continue along the "edge" of $M$ until we return to a, the curve traced out is

$$
\Gamma=\Gamma_{1}-\Gamma_{3},
$$

which may also be represented on the parameter interval $[0,2 \pi]$ by the equations

$$
\begin{aligned}
&x=(1+\delta \sin \theta) \cos 2 \theta \\
&y=(1+\delta \sin \theta) \sin 2 \theta \\
&z=-\delta \cos \theta
\end{aligned}
$$

It should be emphasized that $\Gamma \neq \partial \Phi$ : Let $\eta$ be the 1-form discussed in Exercises 21 and 22. Since $d \eta=0$, Stokes' theorem shows that

$$
\int_{\infty \infty} \eta=0 .
$$

But although $\Gamma$ is the "geometric" boundary of $M$, we have

$$
\int_{\Gamma} \eta=4 \pi .
$$

In order to avoid this possible source of confusion, Stokes' formula (Theorem $10.50)$ is frequently stated only for orientable surfaces $\Phi$. 11
