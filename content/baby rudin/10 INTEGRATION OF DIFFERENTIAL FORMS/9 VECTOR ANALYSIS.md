---
title: 9 VECTOR ANALYSIS
date: 2022-08-17
---


We conclude this chapter with a few applications of the preceding material to theorems concerning vector analysis in $R^{3}$. These are special cases of theorems about differential forms, but are usually stated in different terminology. We are thus faced with the job of translating from one language to another. 

**10.42 Vector fields** Let $F=F_{1} \mathbf{e}_{1}+F_{2} \mathbf{e}_{2}+F_{3} \mathbf{e}_{3}$ be a continuous mapping of an open set $E \subset R^{3}$ into $R^{3}$. Since $\mathbf{F}$ associates a vector to each point of $E, \mathbf{F}$ is sometimes called a vector field, especially in physics. With every such $\mathbf{F}$ is associated a 1-form

$$
\begin{equation}
\lambda_{\mathbf{F}}=F_{1} d x+F_{2} d y+F_{3} d z
\label{eq:124}
\end{equation}
$$

and a 2 -form

$$
\begin{equation}
\omega_{\mathrm{F}}=F_{1} d y \wedge d z+F_{2} d z \wedge d x+F_{3} d x \wedge d y .
\label{eq:125}
\end{equation}
$$

Here, and in the rest of this chapter, we use the customary notation $(x, y, z)$ in place of $\left(x_{1}, x_{2}, x_{3}\right)$.

It is clear, conversely, that every 1 -form $\lambda$ in $E$ is $\lambda_{\mathbf{F}}$ for some vector field $\mathbf{F}$ in $E$, and that every 2 -form $\omega$ is $\omega_{\mathbf{F}}$ for some $\mathbf{F}$. In $R^{3}$, the study of 1-forms and 2-forms is thus coextensive with the study of vector fields.

If $u \in \mathscr{C}^{\prime}(E)$ is a real function, then its gradient

$$
\nabla u=\left(D_{1} u\right) \mathbf{e}_{1}+\left(D_{2} u\right) \mathbf{e}_{2}+\left(D_{3} u\right) \mathbf{e}_{3}
$$

is an example of a vector field in $E$.

Suppose now that $\mathbf{F}$ is a vector field in $E$, of class $\mathscr{C}^{\prime}$. Its $\operatorname{cur} l \nabla \times \mathbf{F}$ is the vector field defined in $E$ by

$$
\nabla \times \mathbf{F}=\left(D_{2} F_{3}-D_{3} F_{2}\right) \mathbf{e}_{1}+\left(D_{3} F_{1}-D_{1} F_{3}\right) \mathrm{e}_{2}+\left(D_{1} F_{2}-D_{2} F_{1}\right) \mathbf{e}_{3}
$$

and its divergence is the real function $\nabla \cdot \mathbf{F}$ defined in $E$ by

$$
\nabla \cdot \mathbf{F}=D_{1} F_{1}+D_{2} F_{2}+D_{3} F_{3} .
$$

These quantities have various physical interpretations. We refer to the book by $\mathbf{O}$. D. Kellogg for more details.

Here are some relations between gradients, curls, and divergences.

------


**10.43 Theorem** Suppose $E$ is an open set in $R^{3}, u \in \mathscr{C}^{\prime \prime}(E)$, and $\mathbf{G}$ is a vector field in $E$, of class $C^{\prime \prime}$.

(a) If $\mathbf{F}=\nabla u$, then $\nabla \times \mathbf{F}=\mathbf{0}$.

(b) If $\mathbf{F}=\nabla \times \mathbf{G}$, then $\nabla \cdot \mathbf{F}=0$.

Furthermore, if $E$ is $\mathscr{C}^{\prime \prime}$-equivalent to a convex set, then (a) and (b) have converses, in which we assume that $\mathbf{F}$ is a vector field in $E$, of class $\mathscr{C}^{\prime}$ :

(a') If $\nabla \times \mathbf{F}=\mathbf{0}$, then $\mathbf{F}=\nabla u$ for some $u \in \mathscr{C}^{\prime \prime}(E)$.

(b') If $\nabla \cdot \mathbf{F}=0$, then $\mathbf{F}=\nabla \times \mathbf{G}$ for some vector field $\mathbf{G}$ in $E$, of class $\mathscr{B}^{\prime \prime}$

**Proof** If we compare the definitions of $\nabla u, \nabla \times \mathbf{F}$, and $\nabla \cdot \mathbf{F}$ with the differential forms $\lambda_{F}$ and $\omega_{F}$ given by (124) and (125), we obtain the following four statements: 

$$
\begin{aligned}
& \mathbf{F}=\nabla u \quad \text { if and only if } \quad \lambda_{\mathbf{F}}=d u \text {. } \\
& \nabla \times \mathbf{F}=\mathbf{0} \quad \text { if and only if } d \lambda_{\mathbf{F}}=0 \text {. } \\
& \mathbf{F}=\nabla \times \mathbf{G} \quad \text { if and only if } \omega_{\mathbf{F}}=d \lambda_{\mathbf{G}} \text {. } \\
& \nabla \cdot \mathbf{F}=0 \quad \text { if and only if } d \omega_{\mathbf{F}}=0 .
\end{aligned}
$$

Now if $F=\nabla u$, then $\lambda_{F}=d u$, hence $d \lambda_{F}=d^{2} u=0$ (Theorem 10.20), which means that $\nabla \times \mathbf{F}=\mathbf{0}$. Thus (a) is proved.

As regards $\left(a^{\prime}\right)$, the hypothesis amounts to saying that $d \lambda_{F}=0$ in $E$. By Theorem $10.40, \lambda_{F}=d u$ for some 0 -form $u$. Hence $F=\nabla u$.

The proofs of $(b)$ and $\left(b^{\prime}\right)$ follow exactly the same pattern.


-----------



**10.44 Volume elements** The $k$-form

$$
d x_{1} \wedge \cdots \wedge d x_{k}
$$

is called the volume element in $R^{k}$. It is often denoted by $d V$ (or by $d V_{k}$ if it seems desirable to indicate the dimension explicitly), and the notation

$$
\begin{equation}
\int_{\Phi} f(\mathbf{x}) d x_{1} \wedge \cdots \wedge d x_{k}=\int_{\Phi} f d V
\label{eq:126}
\end{equation}
$$

is used when $\Phi$ is a positively oriented $k$-surface in $R^{k}$ and $f$ is a continuous function on the range of $\Phi$.

The reason for using this terminology is very simple: If $D$ is a parameter domain in $R^{k}$, and if $\Phi$ is a 1-1 $\mathscr{C}^{\prime}$-mapping of $D$ into $R^{k}$, with positive Jacobian $J_{\Phi}$, then the left side of $(126)$ is

$$
\int_{D} f(\Phi(\mathbf{u})) J_{\Phi}(\mathbf{u}) d \mathbf{u}=\int_{\Phi(D)} f(\mathbf{x}) d \mathbf{x}
$$

by (35) and Theorem $10.9 .$

In particular, when $f=1,(126)$ defines the volume of $\Phi$. We already saw a special case of this in (36).

The usual notation for $d V_{2}$ is $d A$.

-----


**10.45 Green's theorem** Suppose $E$ is an open set in $R^{2}, \alpha \in \mathscr{C}^{\prime}(E), \beta \in \mathscr{C}^{\prime}(E)$, and $\Omega$ is a closed subset of $E$, with positively oriented boundary $\partial \Omega$, as described in Sec. 10.31. Then

$$
\begin{equation}
\int_{\partial \Omega}(\alpha d x+\beta d y)=\int_{\Omega}\left(\frac{\partial \beta}{\partial x}-\frac{\partial \alpha}{\partial y}\right) d A .
\label{eq:127}
\end{equation}
$$

$$
\begin{aligned}
&\text { Proof Put } \lambda=\alpha d x+\beta d y . \text { Then } \\
&d \lambda=\left(D_{2} \alpha\right) d y \wedge d x+\left(D_{1} \beta\right) d x \wedge d y \\
&=\left(D_{1} \beta-D_{2} \alpha\right) d A,
\end{aligned}
$$

and (127) is the same as

$$
\int_{\partial \Omega} \lambda=\int_{\Omega} d \lambda,
$$

which is true by Theorem $10.33$.

With $\alpha(x, y)=-y$ and $\beta(x, y)=x,(127)$ becomes

$$
\begin{equation}
\frac{1}{2} \int_{\partial \Omega}(x d y-y d x)=A(\Omega),
\label{eq:128}
\end{equation}
$$

the area of $\Omega$.

With $\alpha=0, \beta=x$, a similar formula is obtained. Example $10.12(b)$ contains a special case of this.


------

**10.46 Area elements** in $R^{3}$ Let $\Phi$ be a 2-surface in $R^{3}$, of class $\mathscr{C}^{\prime}$, with parameter domain $D \subset R^{2}$. Associate with each point $(u, v) \in D$ the vector

$$
\begin{equation}
\mathbf{N}(u, v)=\frac{\partial(y, z)}{\partial(u, v)} \mathbf{e}_{1}+\frac{\partial(z, x)}{\partial(u, v)} \mathbf{e}_{2}+\frac{\partial(x, y)}{\partial(u, v)} \mathbf{e}_{3} .
\label{eq:129}
\end{equation}
$$

The Jacobians in (129) correspond to the equation

$$
\begin{equation}
(x, y, z)=\Phi(u, v) \text {. }
\label{eq:130}
\end{equation}
$$

If $f$ is a continuous function on $\Phi(D)$, the area integral of $f$ over $\Phi$ is defined to be

$$
\begin{equation}
\int_{\Phi} f d A=\int_{D} f(\Phi(u, v))|\mathbf{N}(u, v)| d u d v
\label{eq:131}
\end{equation}
$$

In particular, when $f=1$ we obtain the area of $\Phi$, namely,

$$
\begin{equation}
A(\Phi)=\int_{D}|\mathbf{N}(u, v)| d u d v
\label{eq:132}
\end{equation}
$$

The following discussion will show that (131) and its special case (132) are reasonable definitions. It will also describe the geometric features of the vector $\mathbf{N}$.

Write $\Phi=\varphi_{1} \mathbf{e}_{1}+\varphi_{2} \mathbf{e}_{2}+\varphi_{3} \mathbf{e}_{3}$, fix a point $p_{0}=\left(u_{0}, v_{0}\right) \in D$, put $\mathbf{N}=\mathbf{N}\left(\mathbf{p}_{0}\right)$, put

$$
\alpha_{i}=\left(D_{1} \varphi_{i}\right)\left(\mathbf{p}_{0}\right), \quad \beta_{i}=\left(D_{2} \varphi_{i}\right)\left(\mathbf{p}_{0}\right) \quad(i=1,2,3)
$$

and let $T \in L\left(R^{2}, R^{3}\right)$ be the linear transformation given by

$$
T(u, v)=\sum_{i=1}^{3}\left(\alpha_{i} u+\beta_{i} v\right) \mathbf{e}_{i} .
$$

Note that $T=\Phi^{\prime}\left(\mathbf{p}_{0}\right)$, in accordance with Definition 9.11.

Let us now assume that the rank of $T$ is 2 . (If it is 1 or 0 , then $\mathbf{N}=\mathbf{0}$, and the tangent plane mentioned below degenerates to a line or to a point.) The range of the affine mapping

$$
(u, v) \rightarrow \Phi\left(\mathbf{p}_{0}\right)+T(u, v)
$$

is then a plane $\Pi$, called the tangent plane to $\Phi$ at $\mathbf{p}_{0}$. [One would like to call $\Pi$ the tangent plane at $\Phi\left(p_{0}\right)$, rather than at $p_{0}$; if $\Phi$ is not one-to-one, this runs into difficulties.]

If we use (133) in (129), we obtain

$$
\mathbf{N}=\left(\alpha_{2} \beta_{3}-\alpha_{3} \beta_{2}\right) \mathrm{e}_{1}+\left(\alpha_{3} \beta_{1}-\alpha_{1} \beta_{3}\right) \mathrm{e}_{2}+\left(\alpha_{1} \beta_{2}-\alpha_{2} \beta_{1}\right) \mathbf{e}_{3},
$$

and (134) shows that

$$
T \mathrm{e}_{1}=\sum_{i=1}^{3} \alpha_{i} \mathbf{e}_{i}, \quad T \mathrm{e}_{2}=\sum_{i=1}^{3} \beta_{i} \mathbf{e}_{i} .
$$

A straightforward computation now leads to

$$
\mathbf{N} \cdot\left(T \mathrm{e}_{1}\right)=0=\mathbf{N} \cdot\left(T \mathbf{e}_{2}\right) \text {. }
$$

Hence $\mathbf{N}$ is perpendicular to $\Pi$. It is therefore called the normal to $\Phi$ at $\mathbf{p}_{0}$. A second property of $\mathbf{N}$, also verified by a direct computation based on (135) and (136), is that the determinant of the linear transformation of $R^{3}$ that takes $\left\{\mathbf{e}_{1}, \mathbf{e}_{2}, \mathbf{e}_{3}\right\}$ to $\left\{\mathbf{e}_{1}, T \mathbf{e}_{2}, \mathbf{N}\right\}$ is $|\mathbf{N}|^{2}>0$ (Exercise 30). The 3-simplex

$$
\left[0, T \mathrm{e}_{1}, T \mathrm{e}_{2}, \mathrm{~N}\right]
$$

is thus positively oriented.

The third property of $\mathbf{N}$ that we shall use is a consequence of the first two: The above-mentioned determinant, whose value is $|\mathbf{N}|^{2}$, is the volume of the parallelepiped with edges $\left[0, T e_{1}\right],\left[0, T e_{2}\right],[0, N]$. By $(137),[0, N]$ is perpendicular to the other two edges. The area of the parallelogram with vertices

$$
0, T e_{1}, T e_{2}, T\left(e_{1}+e_{2}\right)
$$

is therefore $|\mathbf{N}|$.

This parallelogram is the image under $T$ of the unit square in $R^{2}$. If $E$ is any rectangle in $R^{2}$, it follows (by the linearity of $T$ ) that the area of the parallelogram $T(E)$ is

$$
A(T(E))=|\mathrm{N}| A(E)=\int_{E}\left|\mathrm{~N}\left(u_{0}, v_{0}\right)\right| d u d v .
$$

We conclude that (132) is correct when $\Phi$ is affine. To justify the definition (132) in the general case, divide $D$ into small rectangles, pick a point $\left(u_{0}, v_{0}\right)$ in each, and replace $\Phi$ in each rectangle by the corresponding tangent plane. The sum of the areas of the resulting parallelograms, obtained via (140), is then an approximation to $A(\Phi)$. Finally, one can justify (131) from (132) by approximating $f$ by step functions.



**10.47 Example** Let $0<a<b$ be fixed. Let $K$ be the 3-cell determined by $0 \leq t \leq a, \quad 0 \leq u \leq 2 \pi, \quad 0 \leq v \leq 2 \pi$

The equations

$$
\begin{aligned}
&x=t \cos u \\
&y=(b+t \sin u) \cos v \\
&z=(b+t \sin u) \sin v
\end{aligned}
$$

describe a mapping $\Psi$ of $R^{3}$ into $R^{3}$ which is $1-1$ in the interior of $K$, such that $\Psi(K)$ is a solid torus. Its Jacobian is

$$
J_{\Psi}=\frac{\partial(x, y, z)}{\partial(t, u, v)}=t(b+t \sin u)
$$

which is positive on $K$, except on the face $t=0$. If we integrate $J_{\Psi}$ over $K$, we obtain

$$
\operatorname{vol}(\Psi(K))=2 \pi^{2} a^{2} b
$$

as the volume of our solid torus.

Now consider the 2-chain $\Phi=\partial \Psi$. (See Exercise 19.) $\Psi$ maps the faces $u=0$ and $u=2 \pi$ of $K$ onto the same cylindrical strip, but with opposite orientations. $\Psi$ maps the faces $v=0$ and $v=2 \pi$ onto the same circular disc, but with opposite orientations. $\Psi$ maps the face $t=0$ onto a circle, which contributes 0 to the 2-chain $\partial \Psi$. (The relevant Jacobians are 0.) Thus $\Phi$ is simply the 2-surface obtained by setting $t=a$ in (141), with parameter domain $D$ the square defined by $0 \leq u \leq 2 \pi, 0 \leq v \leq 2 \pi$. vector

According to (129) and (141), the normal to $\Phi$ at $(u, v) \in D$ is thus the

$$
\mathbf{N}(u, v)=a(b+a \sin u) \mathbf{n}(u, v)
$$

where

$$
\mathbf{n}(u, v)=(\cos u) \mathbf{e}_{1}+(\sin u \cos v) \mathbf{e}_{2}+(\sin u \sin v) \mathbf{e}_{3} .
$$

Since $|\mathbf{n}(u, v)|=1$, we have $|\mathbf{N}(u, v)|=a(b+a \sin u)$, and if we integrate this over $D,(131)$ gives

$$
A(\Phi)=4 \pi^{2} a b
$$

as the surface area of our torus.

If we think of $\mathbf{N}=\mathbf{N}(u, v)$ as a directed line segment, pointing from $\Phi(u, v)$ to $\Phi(u, v)+\mathbf{N}(u, v)$, then $\mathbf{N}$ points outward, that is to say, away from $\Psi(K)$. This is so because $\mathrm{J}_{\Psi}>0$ when $t=a$.

For example, take $u=v=\pi / 2, t=a$. This gives the largest value of $z$ on $\Psi(K)$, and $\mathbf{N}=a(b+a) \mathrm{e}_{3}$ points "upward" for this choice of $(u, v)$.

**10.48 Integrals of 1-forms** in $R^{3}$ Let $\gamma$ be a $\mathscr{C}^{\prime}$-curve in an open set $E \subset R^{3}$, with parameter interval $[0,1]$, let $\mathbf{F}$ be a vector field in $E$, as in Sec. $10.42$, and define $\lambda_{F}$ by (124). The integral of $\lambda_{F}$ over $\gamma$ can be rewritten in a certain way which we now describe.

For any $u \in[0,1]$,

$$
\gamma^{\prime}(u)=\gamma_{1}^{\prime}(u) \mathbf{e}_{1}+\gamma_{2}^{\prime}(u) \mathbf{e}_{2}+\gamma_{3}^{\prime}(u) \mathbf{e}_{3}
$$

is called the tangent vector to $\gamma$ at $u$. We define $\mathbf{t}=\mathbf{t}(u)$ to be the unit vector in the direction of $\gamma^{\prime}(u)$. Thus

$$
\gamma^{\prime}(u)=\left|\gamma^{\prime}(u)\right| \mathbf{t}(u) .
$$

[If $\gamma^{\prime}(u)=\mathbf{0}$ for some $u$, put $\mathbf{t}(u)=\mathbf{e}_{1}$; any other choice would do just as well.] By (35),

$$
\begin{aligned}
\int_{\gamma} \lambda_{\mathbf{F}} &=\sum_{i=1}^{3} \int_{0}^{1} F_{i}(\gamma(u)) \gamma_{i}^{\prime}(u) d u \\
&=\int_{0}^{1} \mathbf{F}(\gamma(u)) \cdot \gamma^{\prime}(u) d u \\
&=\int_{0}^{1} \mathbf{F}(\gamma(u)) \cdot \mathbf{t}(u)\left|\gamma^{\prime}(u)\right| d u .
\end{aligned}
$$

Theorem $6.27$ makes it reasonable to call $\left|\gamma^{\prime}(u)\right| d u$ the element of arc length along $\gamma$. A customary notation for it is $d s$, and (142) is rewritten in the form

$$
\int_{\gamma} \lambda_{F}=\int_{\gamma}(\mathbf{F} \cdot \mathrm{t}) d s .
$$

Since $t$ is a unit tangent vector to $\gamma, \mathbf{F} \cdot t$ is called the tangential component of $\mathbf{F}$ along $\gamma$. The right side of (143) should be regarded as just an abbreviation for the last integral in (142). The point is that $\mathbf{F}$ is defined on the range of $\gamma$, but $\mathbf{t}$ is defined on $[0,1]$; thus $\mathbf{F} \cdot \mathbf{t}$ has to be properly interpreted. Of course, when $\gamma$ is one-to-one, then $t(u)$ can be replaced by $t(\gamma(u))$, and this difficulty disappears.

10.49 Integrals of 2-forms in $R^{3}$ Let $\Phi$ be a 2-surface in an open set $E \subset R^{3}$, of class $\mathscr{C}^{\prime}$, with parameter domain $D \subset R^{2}$. Let $\mathbf{F}$ be a vector field in $E$, and define $\omega_{\mathbf{F}}$ by (125). As in the preceding section, we shall obtain a different representation of the integral of $\omega_{F}$ over $\Phi$.

By (35) and (129),

$$
\begin{aligned}
\int_{\Phi} \omega_{\mathbf{F}} &=\int_{\Phi}\left(F_{1} d y \wedge d z+F_{2} d z \wedge d x+F_{3} d x \wedge d y\right) \\
&=\int_{D}\left\{\left(F_{1} \circ \Phi\right) \frac{\partial(y, z)}{\partial(u, v)}+\left(F_{2} \circ \Phi\right) \frac{\partial(z, x)}{\partial(u, v)}+\left(F_{3} \circ \Phi\right) \frac{\partial(x, y)}{\partial(u, v)}\right\} d u d v \\
&=\int_{D} \mathbf{F}(\Phi(u, v)) \cdot \mathbf{N}(u, v) d u d v
\end{aligned}
$$

Now let $\mathbf{n}=\mathbf{n}(u, v)$ be the unit vector in the direction of $\mathbf{N}(u, v)$. [If $\mathbf{N}(u, v)=\mathbf{0}$ for some $(u, v) \in D$, take $\mathbf{n}(u, v)=\mathbf{e}_{1}$.] Then $\mathbf{N}=|\mathbf{N}| \mathbf{n}$, and therefore the last integral becomes

$$
\int_{D} \mathbf{F}(\Phi(u, v)) \cdot \mathbf{n}(u, v)|\mathbf{N}(u, v)| d u d v
$$

By (131), we can finally write this in the form

$$
\int_{\Phi} \omega_{F}=\int_{\Phi}(\mathbf{F} \cdot \mathbf{n}) d A .
$$

With regard to the meaning of $\mathbf{F} \cdot \mathbf{n}$, the remark made at the end of Sec. $10.48$ applies here as well.

We can now state the original form of Stokes' theorem.



**$10.50$ Stokes' formula** If $\mathbf{F}$ is a vector field of class $\mathscr{C}^{\prime}$ in an open set $E \subset R^{3}$, and if $\Phi$ is a 2-surface of class $\mathscr{C}^{\prime \prime}$ in $E$, then

$$
\int_{\Phi}(\nabla \times \mathbf{F}) \cdot \mathbf{n} d A=\int_{\partial \Phi}(\mathbf{F} \cdot \mathbf{t}) d s .
$$

Proof Put $\mathbf{H}=\nabla \times \mathbf{F}$. Then, as in the proof of Theorem 10.43, we have

$$
\omega_{\mathbf{H}}=d \lambda_{\mathbf{F}} .
$$

Hence

$$
\begin{aligned}
\int_{\Phi}(\nabla \times \mathbf{F}) \cdot \mathbf{n} d A &=\int_{\Phi}(\mathbf{H} \cdot \mathbf{n}) d A=\int_{\Phi} \omega_{\mathbf{H}} \\
&=\int_{\Phi} d \lambda_{F}=\int_{\partial \Phi} \lambda_{F}=\int_{\partial \Phi}(\mathbf{F} \cdot \mathrm{t}) d s .
\end{aligned}
$$

Here we used the definition of $\mathbf{H}$, then (144) with $\mathbf{H}$ in place of $\mathbf{F}$, then (146), then-the main step-Theorem 10.33, and finally (143), extended in the obvious way from curves to 1-chains.

10.51 The divergence theorem If $\mathbf{F}$ is a vector field of class $\mathscr{C}^{\prime}$ in an open set $E \subset R^{3}$, and if $\Omega$ is a closed subset of $E$ with positively oriented boundary $\partial \Omega$ (as described in Sec. 10.31) then

$$
\int_{\Omega}(\nabla \cdot \mathbf{F}) d V=\int_{\partial \Omega}(\mathbf{F} \cdot \mathbf{n}) d A
$$

Proof By (125),

$$
d \omega_{\mathbf{F}}=(\nabla \cdot \mathbf{F}) d x \wedge d y \wedge d z=(\nabla \cdot \mathbf{F}) d V .
$$

Hence

$$
\int_{\Omega}(\nabla \cdot \mathbf{F}) d V=\int_{\Omega} d \omega_{\mathbf{F}}=\int_{\partial \Omega} \omega_{\mathbf{F}}=\int_{\partial \Omega}(\mathbf{F} \cdot \mathbf{n}) d A,
$$

by Theorem $10.33$, applied to the 2 -form $\omega_{F}$, and (144).