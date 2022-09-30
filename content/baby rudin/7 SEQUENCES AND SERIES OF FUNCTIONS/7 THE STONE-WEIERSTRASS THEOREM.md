---
title: 7 THE STONE-WEIERSTRASS THEOREM
date: 2022-08-04
---

**7.26 Theorem** *If $f$ is a continuous complex function on $[a, b]$, there exists a sequence of polynomials $P_{n}$ such that
$$
\lim _{n \rightarrow \infty} P_{n}(x)=f(x)
$$
uniformly on $[a, b]$. If $f$ is real, the $P_{n}$ may be taken real.*

This is the form in which the theorem was originally discovered by Weierstrass.

**Proof** We may assume, without loss of generality, that $[a, b]=[0,1]$. We may also assume that $f(0)=f(1)=0$. For if the theorem is proved for this case, consider

$$
g(x)=f(x)-f(0)-x[f(1)-f(0)] \quad(0 \leq x \leq 1) .
$$

Here $g(0)=g(1)=0$, and if $g$ can be obtained as the limit of a uniformly convergent sequence of polynomials, it is clear that the same is true for $f$, since $f-g$ is a polynomial.

Furthermore, we define $f(x)$ to be zero for $x$ outside $[0,1]$. Then $f$ is uniformly continuous on the whole line.

We put

$$
Q_{n}(x)=c_{n}\left(1-x^{2}\right)^{n} \quad(n=1,2,3, \ldots),
$$

where $c_{n}$ is chosen so that

$$
\int_{-1}^{1} Q_{n}(x) d x=1 \quad(n=1,2,3, \ldots) .
$$

We need some information about the order of magnitude of $c_{n}$. Since

$$
\begin{aligned}
\int_{-1}^{1}\left(1-x^{2}\right)^{n} d x=2 \int_{0}^{1}\left(1-x^{2}\right)^{n} d x & \geq 2 \int_{0}^{1 / \sqrt{n}}\left(1-x^{2}\right)^{n} d x \\
& \geq 2 \int_{0}^{1 / \sqrt{n}}\left(1-n x^{2}\right) d x \\
&=\frac{4}{3 \sqrt{n}} \\
&>\frac{1}{\sqrt{n}}
\end{aligned}
$$

it follows from (48) that

$$
c_{n}<\sqrt{n} .
$$

The inequality $\left(1-x^{2}\right)^{n} \geq 1-n x^{2}$ which we used above is easily shown to be true by considering the function

$$
\left(1-x^{2}\right)^{n}-1+n x^{2}
$$

which is zero at $x=0$ and whose derivative is positive in $(0,1)$.
For any $\delta>0$, (49) implies

$$
Q_{n}(x) \leq \sqrt{n}\left(1-\delta^{2}\right)^{n} \quad(\delta \leq|x| \leq 1)
$$

so that $Q_{n} \rightarrow 0$ uniformly in $\delta \leq|x| \leq 1$.
Now set

$$
P_{n}(x)=\int_{-1}^{1} f(x+t) Q_{n}(t) d t \quad(0 \leq x \leq 1) .
$$

Our assumptions about $f$ show, by a simple change of variable, that

$$
P_{n}(x)=\int_{-x}^{1-x} f(x+t) Q_{n}(t) d t=\int_{0}^{1} f(t) Q_{n}(t-x) d t,
$$

and the last integral is clearly a polynomial in $x$. Thus $\left\{P_{n}\right\}$ is a sequence of polynomials, which are real if $f$ is real.
Given $\varepsilon>0$, we choose $\delta>0$ such that $|y-x|<\delta$ implies

$$
|f(y)-f(x)|<\frac{\varepsilon}{2} .
$$

Let $M=\sup |f(x)|$. Using (48), (50), and the fact that $Q_{n}(x) \geq 0$, we see that for $0 \leq x \leq 1$,

$$
\begin{aligned}
\left|P_{n}(x)-f(x)\right| &=\left|\int_{-1}^{1}[f(x+t)-f(x)] Q_{n}(t) d t\right| \\
& \leq \int_{-1}^{1}|f(x+t)-f(x)| Q_{n}(t) d t \\
& \leq 2 M \int_{-1}^{-\delta} Q_{n}(t) d t+\frac{\varepsilon}{2} \int_{-\delta}^{\delta} Q_{n}(t) d t+2 M \int_{\delta}^{1} Q_{n}(t) d t \\
& \leq 4 M \sqrt{n}\left(1-\delta^{2}\right)^{n}+\frac{\varepsilon}{2} \\
&<\varepsilon
\end{aligned}
$$

for all large enough $n$, which proves the theorem.
It is instructive to sketch the graphs of $Q_{n}$ for a few values of $n$; also, note that we needed uniform continuity of $f$ to deduce uniform convergence of $\left\{P_{n}\right\}$

In the proof of Theorem $7.32$ we shall not need the full strength of Theorem 7.26, but only the following special case, which we state as a corollary.

**7.27 Corollary** *For every interval $[-a, a]$ there is a sequence of real polynomials $P_{n}$ such that $P_{n}(0)=0$ and such that
$$
\lim _{n \rightarrow \infty} P_{n}(x)=|x|
$$*

uniformly on $[-a, a]$.
Proof By Theorem $7.26$, there exists a sequence $\left\{P_{n}^{*}\right\}$ of real polynomials which converges to $|x|$ uniformly on $[-a, a]$. In particular, $P_{n}^{*}(0) \rightarrow 0$ as $n \rightarrow \infty$. The polynomials
$$
P_{n}(x)=P_{n}^{*}(x)-P_{n}^{*}(0) \quad(n=1,2,3, \ldots)
$$
have desired properties.
We shall now isolate those properties of the polynomials which make the Weierstrass theorem possible.

**7.28 Definition** A family $\mathscr{A}$ of complex functions defined on a set $E$ is said to be an algebra if (i) $f+g \in \mathscr{A}$, (ii) $f g \in \mathscr{A}$, and (iii) $c f \in \mathscr{A}$ for all $f \in \mathscr{A}, g \in \mathscr{A}$ and for all complex constants $c$, that is, if $\mathscr{A}$ is closed under addition, multiplication, and scalar multiplication. We shall also have to consider algebras of real functions; in this case, (iii) is of course only required to hold for all real $c$.

If $\mathscr{A}$ has the property that $f \in \mathscr{A}$ whenever $f_{n} \in \mathscr{A}(n=1,2,3, \ldots)$ and $f_{n} \rightarrow f$ uniformly on $E$, then $\mathscr{A}$ is said to be uniformly closed.

Let $\mathscr{B}$ be the set of all functions which are limits of uniformly convergent sequences of members of $\mathscr{A}$. Then $\mathscr{B}$ is called the uniform closure of $\mathscr{A}$. (See Definition 7.14.)

For example, the set of all polynomials is an algebra, and the Weierstrass theorem may be stated by saying that the set of continuous functions on $[a, b]$ is the uniform closure of the set of polynomials on $[a, b]$.

**$7.29$ Theorem** *Let $\mathscr{B}$ be the uniform closure of an algebra $\mathscr{A}$ of bounded functions. Then $\mathscr{B}$ is a uniformly closed algebra.*

**Proof** If $f \in \mathscr{B}$ and $g \in \mathscr{B}$, there exist uniformly convergent sequences $\left\{f_{n}\right\},\left\{g_{n}\right\}$ such that $f_{n} \rightarrow f, g_{n} \rightarrow g$ and $f_{n} \in \mathscr{A}, g_{n} \in \mathscr{A}$. Since we are dealing with bounded functions, it is easy to show that
$$
f_{n}+g_{n} \rightarrow f+g, \quad f_{n} g_{n} \rightarrow f g, \quad c f_{n} \rightarrow c f,
$$
where $c$ is any constant, the convergence being uniform in each case. Hence $f+g \in \mathscr{B}, f g \in \mathscr{B}$, and $c f \in \mathscr{B}$, so that $\mathscr{B}$ is an algebra. By Theorem $2.27, \mathscr{B}$ is (uniformly) closed.



**7.30 Definition** Let $\mathscr{A}$ be a family of functions on a set $E$. Then $\mathscr{A}$ is said to separate points on $E$ if to every pair of distinct points $x_{1}, x_{2} \in E$ there corresponds a function $f \in \mathscr{A}$ such that $f\left(x_{1}\right) \neq f\left(x_{2}\right)$.

If to each $x \in E$ there corresponds a function $g \in \mathscr{A}$ such that $g(x) \neq 0$, we say that $\mathscr{A}$ vanishes at no point of $E$.

The algebra of all polynomials in one variable clearly has these properties on $R^{1}$. An example of an algebra which does not separate points is the set of all even polynomials, say on $[-1,1]$, since $f(-x)=f(x)$ for every even function $f$.
The following theorem will illustrate these concepts further.

**7.31 Theorem** *Suppose $A$ is an algebra of functions on a set $E, \mathscr{A}$ separates points on $E$, and $\mathscr{A}$ vanishes at no point of $E$. Suppose $x_{1}, x_{2}$ are distinct points of $E$, and $c_{1}, c_{2}$ are constants (real if $\mathscr{A}$ is a real algebra). Then $\mathscr{A}$ contains a function $f$ such that
$$
f\left(x_{1}\right)=c_{1}, \quad f\left(x_{2}\right)=c_{2} .
$$*

**Proof** The assumptions show that $A$ contains functions $g, h$, and $k$ such that

$$
g\left(x_{1}\right) \neq g\left(x_{2}\right), \quad h\left(x_{1}\right) \neq 0, \quad k\left(x_{2}\right) \neq 0 .
$$

Put

$$
u=g k-g\left(x_{1}\right) k, \quad v=g h-g\left(x_{2}\right) h .
$$

Then $u \in \mathscr{A}, v \in \mathscr{A}, u\left(x_{1}\right)=v\left(x_{2}\right)=0, u\left(x_{2}\right) \neq 0$, and $v\left(x_{1}\right) \neq 0$. Therefore

$$
f=\frac{c_{1} v}{v\left(x_{1}\right)}+\frac{c_{2} u}{u\left(x_{2}\right)}
$$

has the desired properties.

We now have all the material needed for Stone's generalization of the Weierstrass theorem.

**7.32 Theorem** Let $A$ be an algebra of real continuous functions on a compact set $K$. If separates points on $K$ and if $\mathscr{A}$ vanishes at no point of $K$, then the uniform closure $\mathscr{B}$ of $\mathscr{A}$ consists of all real continuous functions on $K$.

We shall divide the proof into four steps.

STEP 1 *If $f \in \mathscr{B}$, then $|f| \in \mathscr{B} .$*

**Proof** Let

$$
a=\sup |f(x)| \quad(x \in K)
$$

and let $\varepsilon>0$ be given. By Corollary $7.27$ there exist real numbers $c_{1}, \ldots, c_{n}$ such that

$$
\left|\sum_{i=1}^{n} c_{i} y^{i}-\right| y||<\varepsilon \quad(-a \leq y \leq a) .
$$

Since $\mathscr{B}$ is an algebra, the function

$$
g=\sum_{i=1}^{n} c_{i} f^{i}
$$

is a member of $\mathscr{B}$. By (52) and (53), we have

$$
|g(x)-| f(x)||<\varepsilon \quad(x \in K) .
$$

Since $\mathscr{B}$ is uniformly closed, this shows that $|f| \in \mathscr{B}$.

STEP 2 *If $f \in \mathscr{B}$ and $g \in \mathscr{B}$, then $\max (f, g) \in \mathscr{B}$ and $\min (f, g) \in \mathscr{B}$.*

By $\max (f, g)$ we mean the function $h$ defined by

$$
h(x)= \begin{cases}f(x) & \text { if } f(x) \geq g(x), \\ g(x) & \text { if } f(x)<g(x),\end{cases}
$$

and $\min (f, g)$ is defined likewise.

**Proof** Step 2 follows from step 1 and the identities

$$
\begin{aligned}
&\max (f, g)=\frac{f+g}{2}+\frac{|f-g|}{2} \\
&\min (f, g)=\frac{f+g}{2}-\frac{|f-g|}{2}
\end{aligned}
$$

By iteration, the result can of course be extended to any finite set of functions: If $f_{1}, \ldots, f_{n} \in \mathscr{B}$, then $\max \left(f_{1}, \ldots, f_{n}\right) \in \mathscr{B}$, and

$$
\min \left(f_{1}, \ldots, f_{n}\right) \in \mathscr{B} .
$$

STEP 3 *Given a real function $f$, continuous on $K$, a point $x \in K$, and $\varepsilon>0$, there exists a function $g_{x} \in \mathscr{B}$ such that $g_{x}(x)=f(x)$ and
$$
g_{x}(t)>f(t)-\varepsilon \quad(t \in K) .
$$*

**Proof** Since $\mathscr{A} \subset \mathscr{B}$ and $\mathscr{A}$ satisfies the hypotheses of Theorem $7.31$ so does $\mathscr{B}$. Hence, for every $y \in K$, we can find a function $h_{y} \in \mathscr{B}$ such that

$$
h_{y}(x)=f(x), \quad h_{y}(y)=f(y) .
$$

By the continuity of $h_{y}$ there exists an open set $J_{y}$, containing $y$, such that

$$
h_{y}(t)>f(t)-\varepsilon \quad\left(t \in J_{y}\right) .
$$

Since $K$ is compact, there is a finite set of points $y_{1}, \ldots, y_{n}$ such that

$$
K \subset J_{y_{1}} \cup \cdots \cup J_{y_{n}} .
$$

Put

$$
g_{x}=\max \left(h_{y_{1}}, \ldots, h_{y_{n}}\right) .
$$

By step $2, g_{x} \in \mathscr{8}$, and the relations (55) to (57) show that $g_{x}$ has the other required properties.

*STEP 4 Given a real function $f$, continuous on $K$, and $\varepsilon>0$, there exists a function $h \in \mathscr{B}$ such that
$$
|h(x)-f(x)|<\varepsilon \quad(x \in K) .
$$*

Since $\mathscr{B}$ is uniformly closed, this statement is equivalent to the conclusion of the theorem.

**Proof** Let us consider the functions $g_{x}$, for each $x \in K$, constructed in step 3. By the continuity of $g_{x}$, there exist open sets $V_{x}$ containing $x$, such that

$$
g_{x}(t)<f(t)+\varepsilon \quad\left(t \in V_{x}\right) .
$$

Since $K$ is compact, there exists a finite set of points $x_{1}, \ldots, x_{m}$ such that
(60)

$$
K \subset V_{x_{1}} \cup \cdots \cup V_{x_{m}} .
$$

Put

$$
h=\min \left(g_{x_{1}}, \ldots, g_{x_{m}}\right) .
$$

By step 2, $h \in \mathscr{B}$, and (54) implies

$$
h(t)>f(t)-\varepsilon \quad(t \in K),
$$

whereas (59) and (60) imply

$$
h(t)<f(t)+\varepsilon \quad(t \in K) .
$$

Finally, (58) follows from (61) and (62).

Theorem $7.32$ does not hold for complex algebras. A counterexample is given in Exercise 21. However, the conclusion of the theorem does hold, even for complex algebras, if an extra condition is imposed on $\mathscr{A}$, namely, that $\mathscr{A}$ be self-adjoint. This means that for every $f \in \mathscr{A}$ its complex conjugate $f$ must also belong to $\mathscr{A} ; f$ is defined by $f(x)=\overline{f(x)}$.

**7.33 Theorem** Suppose $\mathscr{A}$ is a self-adjoint algebra of complex continuous functions on a compact set $K, \mathscr{A}$ separates points on $K$, and $\mathscr{A}$ vanishes at no point of $K$. Then the uniform closure $\mathscr{B}$ of $\mathscr{A}$ consists of all complex continuous functions on $K$. In other words, $\mathscr{A}$ is dense $\mathscr{C}(K)$.

**Proof** Let $\mathscr{A}_{R}$ be the set of all real functions on $K$ which belong to $\mathscr{A}$. 

If $f \in \mathscr{A}$ and $f=u+i v$, with $u, v$ real, then $2 u=f+\bar{f}$, and since $\mathscr{A}$ is self-adjoint, we see that $u \in \mathscr{A}_{R}$. If $x_{1} \neq x_{2}$, there exists $f \in \mathscr{A}$ such that $f\left(x_{1}\right)=1, f\left(x_{2}\right)=0$; hence $0=u\left(x_{2}\right) \neq u\left(x_{1}\right)=1$, which shows that $\mathscr{A}_{R}$ separates points on $K$. If $x \in K$, then $g(x) \neq 0$ for some $g \in \mathscr{A}$, and there is a complex number $\lambda$ such that $\lambda g(x)>0$; if $f=\lambda g, f=u+i v$, it follows that $u(x)>0$; hence $\mathscr{A}_{R}$ vanishes at no point of $K$.

Thus $\mathscr{A}_{R}$ satisfies the hypotheses of Theorem 7.32. It follows that every real continuous function on $K$ lies in the uniform closure of $\mathscr{A}_{R}$, hence lies in $\mathscr{B}$. If $f$ is a complex continuous function on $K, f=u+i v$, then $u \in \mathscr{B}, v \in \mathscr{B}$, hence $f \in \mathscr{B}$. This completes the proof.