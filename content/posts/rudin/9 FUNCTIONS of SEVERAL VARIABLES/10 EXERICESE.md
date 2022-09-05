---
title: 10 EXERICESE
date: 2022-08-25
---


1. If $S$ is a nonempty subset of a vector space $X$, prove (as asserted in Sec. 9.1) that the span of $S$ is a vector space.

2. Prove (as asserted in $\operatorname{Sec} .$ 9.6) that $B A$ is linear if $A$ and $B$ are linear transformations.

Prove also that $A^{-1}$ is linear and invertible.

3. Assume $A \in L(X, Y)$ and $A \mathbf{x}=\mathbf{0}$ only when $\mathbf{x}=0$. Prove that $A$ is then 1-1.

4. Prove (as asserted in Sec. 9.30) that null spaces and ranges of linear transformations are vector spaces.

5. Prove that to every $A \in L\left(R^{n}, R^{1}\right)$ corresponds a unique $\mathbf{y} \in R^{n}$ such that $A \mathbf{x}=\mathbf{x} \cdot \mathbf{y}$.

Prove also that $\|A\|=|\mathbf{y}|$.

Hint: Under certain conditions, equality holds in the Schwarz inequality.

6. If $f(0,0)=0$ and

$$
f(x, y)=\frac{x y}{x^{2}+y^{2}} \quad \text { if }(x, y) \neq(0,0),
$$

prove that $\left(D_{1} f\right)(x, y)$ and $\left(D_{2} f\right)(x, y)$ exist at every point of $R^{2}$, although $f$ is not continuous at $(0,0)$.

7. Suppose that $f$ is a real-valued function defined in an open set $E \subset R^{n}$, and that the partial derivatives $D_{1} f, \ldots, D_{n} f$ are bounded in $E$. Prove that $f$ is continuous in $E$.

Hint: Proceed as in the proof of Theorem 9.21.

8. Suppose that $f$ is a differentiable real function in an open set $E \subset R^{n}$, and that $f$ has a local maximum at a point $\mathbf{x} \in E$. Prove that $f^{\prime}(\mathbf{x})=0$.

9. If $\mathrm{f}$ is a differentiable mapping of a connected open set $E \subset R^{n}$ into $R^{m}$, and if $\mathbf{f}^{\prime}(\mathbf{x})=0$ for every $\mathbf{x} \in E$, prove that $\mathbf{f}$ is constant in $E$.

10. If $f$ is a real function defined in a convex open set $E \subset R^{n}$, such that $\left(D_{1} f\right)(\mathbf{x})=0$ for every $\mathbf{x} \in E$, prove that $f(\mathbf{x})$ depends only on $x_{2}, \ldots, x_{n}$.

Show that the convexity of $E$ can be replaced by a weaker condition, but that some condition is required. For example, if $n=2$ and $E$ is shaped like a horseshoe, the statement may be false.

11. If $f$ and $g$ are differentiable real functions in $R^{n}$, prove that

$$
\nabla(f g)=f \nabla g+g \nabla f
$$

and that $\nabla(1 / f)=-f^{-2} \nabla f$ wherever $f \neq 0$.

12. Fix two real numbers $a$ and $b, 0<a<b$. Define a mapping $\mathbf{f}=\left(f_{1}, f_{2}, f_{3}\right)$ of $R^{2}$ into $R^{3}$ by

$$
\begin{aligned}
&f_{1}(s, t)=(b+a \cos s) \cos t \\
&f_{2}(s, t)=(b+a \cos s) \sin t \\
&f_{3}(s, t)=a \sin s .
\end{aligned}
$$

Describe the range $K$ of $\mathrm{f}$. (It is a certain compact subset of $R^{3}$.)

(a) Show that there are exactly 4 points $\mathrm{p} \in K$ such that

$$
\left(\nabla f_{1}\right)\left(\mathbf{f}^{-1}(\mathbf{p})\right)=\mathbf{0} .
$$

Find these points.

(b) Determine the set of all $\mathbf{q} \in K$ such that

$$
\left(\nabla f_{3}\right)\left(\mathbf{f}^{-1}(\mathbf{q})\right)=\mathbf{0} .
$$

(c) Show that one of the points $\mathbf{p}$ found in part (a) corresponds to a local maximum of $f_{1}$, one corresponds to a local minimum, and that the other two are neither (they are so-called "saddle points").

Which of the points $\mathbf{q}$ found in part (b) correspond to maxima or minima? (d) Let $\lambda$ be an irrational real number, and define $\mathbf{g}(t)=\mathbf{f}(t, \lambda t)$. Prove that $\mathbf{g}$ is a 1-1 mapping of $R^{1}$ onto a dense subset of $K$. Prove that

$$
\left|\mathbf{g}^{\prime}(t)\right|^{2}=a^{2}+\lambda^{2}(b+a \cos t)^{2} .
$$

13. Suppose $\mathrm{f}$ is a differentiable mapping of $R^{1}$ into $R^{3}$ such that $|\mathrm{f}(t)|=1$ for every $t$. Prove that $\mathbf{f}^{\prime}(t) \cdot \mathbf{f}(t)=0 .$

Interpret this result geometrically.

14. Define $f(0,0)=0$ and

$$
f(x, y)=\frac{x^{3}}{x^{2}+y^{2}} \quad \text { if }(x, y) \neq(0,0) .
$$

(a) Prove that $D_{1} f$ and $D_{2} f$ are bounded functions in $R^{2}$. (Hence $f$ is continuous.) (b) Let $\mathbf{u}$ be any unit vector in $R^{2}$. Show that the directional derivative $\left(D_{\mathbf{u}} f\right)(0,0)$ exists, and that its absolute value is at most 1 .

(c) Let $\gamma$ be a differentiable mapping of $R^{1}$ into $R^{2}$ (in other words, $\gamma$ is a differentiable curve in $\left.R^{2}\right)$, with $\gamma(0)=(0,0)$ and $\left|\gamma^{\prime}(0)\right|>0$. Put $g(t)=f(\gamma(t))$ and prove that $g$ is differentiable for every $t \in R^{1}$.

If $\gamma \in \mathscr{C}^{\prime}$, prove that $g \in \mathscr{C}^{\prime}$.

(d) In spite of this, prove that $f$ is not differentiable at $(0,0)$.

Hint: Formula (40) fails.

15. Define $f(0,0)=0$, and put

$$
f(x, y)=x^{2}+y^{2}-2 x^{2} y-\frac{4 x^{6} y^{2}}{\left(x^{4}+y^{2}\right)^{2}}
$$

if $(x, y) \neq(0,0)$.

(a) Prove, for all $(x, y) \in R^{2}$, that

$$
4 x^{4} y^{2} \leq\left(x^{4}+y^{2}\right)^{2} .
$$

Conclude that $f$ is continuous. (b) For $0 \leq \theta \leq 2 \pi,-\infty<t<\infty$, define

$$
g_{\theta}(t)=f(t \cos \theta, t \sin \theta) .
$$

Show that $g_{\theta}(0)=0, g_{\theta}^{\prime}(0)=0, g_{\theta}^{\prime \prime}(0)=2$. Each $g_{\theta}$ has therefore a strict local minimum at $t=0$.

In other words, the restriction of $f$ to each line through $(0,0)$ has a strict local minimum at $(0,0)$.

(c) Show that $(0,0)$ is nevertheless not a local minimum for $f$, since $f\left(x, x^{2}\right)=-x^{4}$.

16. Show that the continuity of $\mathbf{f}^{\prime}$ at the point $\mathbf{a}$ is needed in the inverse function theorem, even in the case $n=1$ : If

$$
f(t)=t+2 t^{2} \sin \left(\frac{1}{t}\right)
$$

for $t \neq 0$, and $f(0)=0$, then $f^{\prime}(0)=1, f^{\prime}$ is bounded in $(-1,1)$, but $f$ is not one-to-one in any neighborhood of 0 .

17. Let $\mathbf{f}=\left(f_{1}, f_{2}\right)$ be the mapping of $R^{2}$ into $R^{2}$ given by

$$
f_{1}(x, y)=e^{x} \cos y, \quad f_{2}(x, y)=e^{x} \sin y .
$$

(a) What is the range of $f$ ?

(b) Show that the Jacobian of $f$ is not zero at any point of $R^{2}$. Thus every point of $R^{2}$ has a neighborhood in which $f$ is one-to-one. Nevertheless, $f$ is not one-toone on $R^{2}$.

(c) Put $\mathbf{a}=(0, \pi / 3), \mathbf{b}=f(\mathbf{a})$, let $\mathbf{g}$ be the continuous inverse of $\mathbf{f}$, defined in a neighborhood of $\mathbf{b}$, such that $\mathbf{g}(\mathbf{b})=\mathbf{a}$. Find an explicit formula for $\mathbf{g}$, compute $\mathbf{f}^{\prime}(\mathbf{a})$ and $\mathbf{g}^{\prime}(\mathbf{b})$, and verify the formula (52).

(d) What are the images under $f$ of lines parallel to the coordinate axes?

18. Answer analogous questions for the mapping defined by

$$
u=x^{2}-y^{2}, \quad v=2 x y .
$$

19. Show that the system of equations

$$
\begin{array}{r}
3 x+y-z+u^{2}=0 \\
x-y+2 z+u=0 \\
2 x+2 y-3 z+2 u=0
\end{array}
$$

can be solved for $x, y, u$ in terms of $z$; for $x, z, u$ in terms of $y$; for $y, z, u$ in terms of $x$; but not for $x, y, z$ in terms of $u$.

20. Take $n=m=1$ in the implicit function theorem, and interpret the theorem (as well as its proof) graphically.

21. Define $f$ in $R^{2}$ by

$$
f(x, y)=2 x^{3}-3 x^{2}+2 y^{3}+3 y^{2} .
$$

(a) Find the four points in $R^{2}$ at which the gradient of $f$ is zero. Show that $f$ has exactly one local maximum and one local minimum in $R^{2}$. (b) Let $S$ be the set of all $(x, y) \in R^{2}$ at which $f(x, y)=0$. Find those points of $S$ that have no neighborhoods in which the equation $f(x, y)=0$ can be solved for $y$ in terms of $x$ (or for $x$ in terms of $y$ ). Describe $S$ as precisely as you can.

22. Give a similar discussion for

$$
f(x, y)=2 x^{3}+6 x y^{2}-3 x^{2}+3 y^{2} .
$$

23. Define $f$ in $R^{3}$ by

$$
f\left(x, y_{1}, y_{2}\right)=x^{2} y_{1}+e^{x}+y_{2} .
$$

Show that $f(0,1,-1)=0,\left(D_{1} f\right)(0,1,-1) \neq 0$, and that there exists therefore a differentiable function $g$ in some neighborhood of $(1,-1)$ in $R^{2}$, such that $g(1,-1)=0$ and

$$
f\left(g\left(y_{1}, y_{2}\right), y_{1}, y_{2}\right)=0 .
$$

Find $\left(D_{1} g\right)(1,-1)$ and $\left(D_{2} g\right)(1,-1)$.

24. For $(x, y) \neq(0,0)$, define $\mathrm{f}=\left(f_{1}, f_{2}\right)$ by

$$
f_{1}(x, y)=\frac{x^{2}-y^{2}}{x^{2}+y^{2}}, \quad f_{2}(x, y)=\frac{x y}{x^{2}+y^{2}} .
$$

Compute the rank of $\mathrm{f}^{\prime}(x, y)$, and find the range of $\mathrm{f}$.

25. Suppose $A \in L\left(R^{n}, R^{m}\right)$, let $r$ be the rank of $A$.

(a) Define $S$ as in the proof of Theorem 9.32. Show that $S A$ is a projection in $R^{n}$ whose null space is $\mathcal{N}(A)$ and whose range is $\mathscr{R}(S)$. Hint: By (68), $S A S A=S A$.

(b) Use (a) to show that

$$
\operatorname{dim} \mathscr{N}(A)+\operatorname{dim} \mathscr{R}(A)=n .
$$

26. Show that the existence (and even the continuity) of $D_{12} f$ does not imply the existence of $D_{1} f$. For example, let $f(x, y)=g(x)$, where $g$ is nowhere differentiable.

27. Put $f(0,0)=0$, and

$$
f(x, y)=\frac{x y\left(x^{2}-y^{2}\right)}{x^{2}+y^{2}}
$$

if $(x, y) \neq(0,0)$. Prove that

(a) $f, D_{1} f, D_{2} f$ are continuous in $R^{2}$;

(b) $D_{12} f$ and $D_{21} f$ exist at every point of $R^{2}$, and are continuous except at $(0,0)$;

(c) $\left(D_{12} f\right)(0,0)=1$, and $\left(D_{21} f\right)(0,0)=-1$.

28. For $t \geq 0$, put

$$
\varphi(x, t)= \begin{cases}x & (0 \leq x \leq \sqrt{t}) \\ -x+2 \sqrt{t} & (\sqrt{t} \leq x \leq 2 \sqrt{t}) \\ 0 & \text { (otherwise) }\end{cases}
$$

and put $\varphi(x, t)=-\varphi(x,|t|)$ if $t<0$ Show that $\varphi$ is continuous on $R^{2}$, and

$$
\left(D_{2} \varphi\right)(x, 0)=0
$$

for all $x$. Define

$$
f(t)=\int_{-1}^{1} \varphi(x, t) d x .
$$

Show that $f(t)=t$ if $|t|<\frac{1}{2}$. Hence

$$
f^{\prime}(0) \neq \int_{-1}^{1}\left(D_{2} \varphi\right)(x, 0) d x .
$$

29. Let $E$ be an open set in $R^{n}$. The classes $\mathscr{C}^{\prime}(E)$ and $\mathscr{C}^{\prime \prime}(E)$ are defined in the text. By induction, $\mathscr{C}^{(k)}(E)$ can be defined as follows, for all positive integers $k$ : To say that $f \in \mathscr{C}^{(k)}(E)$ means that the partial derivatives $D_{1} f, \ldots, D_{n} f$ belong to $\mathscr{C}^{(k-1)}(E)$.

Assume $f \in \mathscr{C}^{(k)}(E)$. and show (by repeated application of Theorem 9.41) that the $k$ th-order derivative

$$
D_{i_{1} l_{2} \ldots l_{k}} f=D_{l_{1}} D_{l_{2}} \ldots D_{l_{k}} f
$$

is unchanged if the subscripts $i_{1}, \ldots, i_{k}$ are permuted.

For instance, if $n \geq 3$, then

$$
D_{1213} f=D_{3112} f
$$

for every $f \in \mathscr{C}^{(4)}$.

30. Let $f \in \mathscr{C}^{(m)}(E)$, where $E$ is an open subset of $R^{n}$. Fix $\mathbf{a} \in E$, and suppose $\mathbf{x} \in R^{n}$ is so close to 0 that the points

$$
\mathbf{p}(t)=\mathbf{a}+t \mathbf{x}
$$

lie in $E$ whenever $0 \leq t \leq 1$. Define

$$
h(t)=f(\mathbf{p}(t))
$$

for all $t \in R^{1}$ for which $\mathrm{p}(t) \in E$.

(a) For $1 \leq k \leq m$, show (by repeated application of the chain rule) that

$$
h^{(k)}(t)=\sum\left(D_{t_{1}} \ldots t_{k} f\right)(\mathbf{p}(t)) x_{l_{1}} \ldots x_{l_{k}} .
$$

The sum extends over all ordered $k$-tuples $\left(i_{1}, \ldots, i_{k}\right)$ in which each $i_{J}$ is one of the integers $1, \ldots, n$.

(b) By Taylor's theorem (5.15),

$$
h(1)=\sum_{k=0}^{m-1} \frac{h^{(k)}(0)}{k !}+\frac{h^{(m)}(t)}{m !}
$$

for some $t \in(0,1)$. Use this to prove Taylor's theorem in $n$ variables by showing that the formula 

$$
f(\mathbf{a}+\mathbf{x})=\sum_{k=0}^{m-1} \frac{1}{k !} \sum\left(D_{i_{1}} \ldots \iota_{k} f\right)(\mathbf{a}) x_{\iota_{1}} \ldots x_{l_{k}}+r(\mathbf{x})
$$

represents $f(\mathbf{a}+\mathbf{x})$ as the sum of its so-called "Taylor polynomial of degree $m-1$, ,' plus a remainder that satisfies

$$
\lim _{\mathbf{x} \rightarrow 0} \frac{r(\mathbf{x})}{|\mathbf{x}|^{m-1}}=0 .
$$

Each of the inner sums extends over all ordered $k$-tuples $\left(i_{1}, \ldots, i_{k}\right)$, as in part (a); as usual, the zero-order derivative of $f$ is simply $f$, so that the constant term of the Taylor polynomial of $f$ at a is $f(\mathbf{a})$.

(c) Exercise 29 shows that repetition occurs in the Taylor polynomial as written in part (b). For instance, $D_{113}$ occurs three times, as $D_{113}, D_{131}, D_{311}$. The sum of the corresponding three terms can be written in the form

$$
3\left(D_{1}^{2} D_{3} f\right)(a) x_{1}^{2} x_{3} \text {. }
$$

Prove (by calculating how often each derivative occurs) that the Taylor polynomial in (b) can be written in the form

$$
\sum \frac{\left(D_{1}^{s_{1}} \cdots D_{n}^{s_{n}} f\right)(\mathbf{a})}{s_{1} ! \cdots s_{n} !} x_{1}^{s_{1}} \cdots x_{n}^{s_{n}} .
$$

Here the summation extends over all ordered $n$-tuples $\left(s_{1}, \ldots, s_{n}\right)$ such that each $s_{1}$ is a nonnegative integer, and $s_{1}+\cdots+s_{n} \leq m-1$.

31. Suppose $f \in \mathscr{C}^{(3)}$ in some neighborhood of a point $\mathbf{a} \in R^{2}$, the gradient of $f$ is 0 at $\mathbf{a}$, but not all second-order derivatives of $f$ are 0 at $\mathbf{a}$. Show how one can then determine from the Taylor polynomial of $f$ at a (of degree 2 ) whether $f$ has a local maximum, or a local minimum, or neither, at the point $\mathbf{a}$.

Extend this to $R^{n}$ in place of $R^{2}$. 
