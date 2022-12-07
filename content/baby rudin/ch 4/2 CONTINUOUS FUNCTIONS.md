---
title: CONTINUOUS FUNCTIONS
date: 2022-07-20
---
**4.5 Definition** Suppose $X$ and $Y$ are metric spaces, $E \subset X, p \in E$, and $f$ maps $E$ into $Y$. Then $f$ is said to be continuous at $p$ if for every $\varepsilon>0$ there exists a $\delta>0$ such that
$$
d_{\mathbf{Y}}(f(x), f(p))<\varepsilon
$$
for all points $x \in E$ for which $d_{X}(x, p)<\delta$.
If $f$ is continuous at every point of $E$, then $f$ is said to be continuous on $E$.
It should be noted that $f$ has to be defined at the point $p$ in order to be continuous at $p$. (Compare this with the remark following Definition 4.1.)

If $p$ is an isolated point of $E$, then our definition implies that every function $f$ which has $E$ as its domain of definition is continuous at $p$. For, no matter which $\varepsilon>0$ we choose, we can pick $\delta>0$ so that the only point $x \in E$ for which $d_{X}(x, p)<\delta$ is $x=p ;$ then
$$
d_{Y}(f(x), f(p))=0<\varepsilon
$$
**4.6 Theorem** In the situation given in Definition $4.5$, assume also that $p$ is a limit point of $E$. Then $f$ is continuous at $p$ if and only if $\lim _{x \rightarrow p} f(x)=f(p)$.
Proof This is clear if we compare Definitions $4.1$ and 4.5.
We now turn to compositions of functions. A brief statement of the following theorem is that a continuous function of a continuous function is continuous.

**4.7 Theorem** Suppose $X, Y, Z$ are metric spaces, $E \subset X, f$ maps $E$ into $Y, g$ maps the range of $f, f(E)$, into $Z$, and $h$ is the mapping of $E$ into $Z$ defined by
$$
h(x)=g(f(x)) \quad(x \in E) .
$$
If $f$ is continuous at a point $p \in E$ and if $g$ is continuous at the point $f(p)$, then $h$ is continuous at $p .$

This function $h$ is called the composition or the composite of $f$ and $g$. The notation
$$
h=g \circ f
$$
is frequently used in this context.

Proof Let $\varepsilon>0$ be given. Since $g$ is continuous at $f(p)$, there exists $\eta>0$ such that
$$
d_{Z}(g(y), g(f(p)))<\varepsilon \text { if } d_{Y}(y, f(p))<\eta \text { and } y \in f(E)
$$
Since $f$ is continuous at $p$, there exists $\delta>0$ such that
$$
d_{Y}(f(x), f(p))<\eta \text { if } d_{X}(x, p)<\delta \text { and } x \in E .
$$
It follows that
$$
d_{\mathrm{Z}}(h(x), h(p))=d_{\mathrm{Z}}(g(f(x)), g(f(p)))<\varepsilon
$$
if $d_{X}(x, p)<\delta$ and $x \in E$. Thus $h$ is continuous at $p$.

**4.8 Theorem** $A$ mapping $f$ of a metric space $X$ into a metric space $Y$ is continuous on $X$ if and only if $f^{-1}(V)$ is open in $X$ for every open set $V$ in $Y$.
(Inverse images are defined in Definition 2.2.) This is a very useful haracterization of continuity.

Proof Suppose $f$ is continuous on $X$ and $V$ is an open set in $Y$. We have to show that every point of $f^{-1}(V)$ is an interior point of $f^{-1}(V)$. So, suppose $p \in X$ and $f(p) \in V$. Since $V$ is open, there exists $\varepsilon>0$ such that $y \in V$ if $d_{\mathbf{Y}}(f(p), y)<\varepsilon ;$ and since $f$ is continuous at $p$, there exists $\delta>0$ such that $d_{Y}(f(x), f(p))<\varepsilon$ if $d_{X}(x, p)<\delta$. Thus $x \in f^{-1}(V)$ as soon as $d_{X}(x, p)<\delta$

Conversely, suppose $f^{-1}(V)$ is open in $X$ for every open set $V$ in $Y$. Fix $p \in X$ and $\varepsilon>0$, let $V$ be the set of all $y \in Y$ such that $d_{Y}(y, f(p))<\varepsilon$. Then $V$ is open; hence $f^{-1}(V)$ is open; hence there exists $\delta>0$ such that $x \in f^{-1}(V)$ as soon as $d_{x}(p, x)<\delta$. But if $x \in f^{-1}(V)$, then $f(x) \in V$, so that $d_{Y}(f(x), f(p))<\varepsilon$.
This completes the proof.

Corollary A mapping $f$ of a metric space $X$ into a metric space $Y$ is continuous if and only if $f^{-1}(C)$ is closed in $X$ for every closed set $C$ in $Y$.

This follows from the theorem, since a set is closed if and only if its complement is open, and since $f^{-1}\left(E^{c}\right)=\left[f^{-1}(E)\right]^{c}$ for every $E \subset Y$.

We now turn to complex-valued and vector-valued functions, and to functions defined on subsets of $R^{k}$.

**4.9 Theorem** Let $f$ and $g$ be complex continuous functions on a metric space $X$. Then $f+g, f g$, and $f / g$ are continuous on $X$.
In the last case, we must of course assume that $g(x) \neq 0$, for all $x \in X$.
Proof At isolated points of $X$ there is nothing to prove. At limit points, the statement follows from Theorems $4.4$ and $4.6$.

**$4.10$ Theorem**
(a) Let $f_{1}, \ldots, f_{k}$ be real functions on a metric space $X$, and let $\mathbf{f}$ be the mapping of $X$ into $R^{k}$ defined by
$$
\mathbf{f}(x)=\left(f_{1}(x), \ldots, f_{k}(x)\right) \quad(x \in X) ;
$$
then $\mathbf{f}$ is continuous if and only if each of the functions $f_{1}, \ldots, f_{k}$ is continuous. (b) If $\mathbf{f}$ and $\mathbf{g}$ are continuous mappings of $X$ into $R^{k}$, then $\mathbf{f}+\mathbf{g}$ and $\mathbf{f} \cdot \mathbf{g}$ are continuous on $X$.

The functions $f_{1}, \ldots, f_{k}$ are called the components of $\mathbf{f}$. Note that $\mathbf{f}+\mathbf{g}$ is a mapping into $R^{k}$, whereas $\mathbf{f} \cdot \mathbf{g}$ is a real function on $X$.

Proof Part (a) follows from the inequalities
$$
\left|f_{j}(x)-f_{j}(y)\right| \leq|\mathbf{f}(x)-\mathbf{f}(y)|=\left\{\sum_{i=1}^{k}\left|f_{i}(x)-f_{i}(y)\right|^{2}\right\}^{\mathbf{t}},
$$
for $j=1, \ldots, k$. Part $(b)$ follows from ( $a$ ) and Theorem 4.9.

**4.11 Examples** If $x_{1}, \ldots, x_{k}$ are the coordinates of the point $\mathrm{x} \in R^{k}$, the functions $\phi_{i}$ defined by
$$
\phi_{i}(\mathbf{x})=x_{i} \quad\left(\mathbf{x} \in R^{k}\right)
$$
are continuous on $R^{k}$, since the inequality
$$
\left|\phi_{i}(\mathbf{x})-\phi_{i}(\mathbf{y})\right| \leq|\mathbf{x}-\mathbf{y}|
$$
shows that we may take $\delta=\varepsilon$ in Definition 4.5. The functions $\phi_{i}$ are sometimes called the coordinate functions.

Repeated application of Theorem $4.9$ then shows that every monomial
$$
x_{1}^{n_{1}} x_{2}^{n_{2}} \ldots x_{k}^{n_{k}}
$$
where $n_{1}, \ldots, n_{k}$ are nonnegative integers, is continuous on $R^{k}$. The same is true of constant multiples of $(9)$, since constants are evidently continuous. It follows that every polynomial $P$, given by
$$
P(\mathbf{x})=\Sigma c_{n_{1} \cdots n_{k}} x_{1}^{n_{1}} \ldots x_{k}^{n_{k}} \quad\left(\mathbf{x} \in R^{k}\right),
$$
is continuous on $R^{k}$. Here the coefficients $c_{n_{1} \cdots n_{k}}$ are complex numbers, $n_{1}, \ldots, n_{k}$ are nonnegative integers, and the sum in (10) has finitely many terms.

Furthermore, every rational function in $x_{1}, \ldots, x_{k}$, that is, every quotient of two polynomials of the form (10), is continuous on $R^{k}$ wherever the denominator is different from zero.
From the triangle inequality one sees easily that
$$
|| \mathbf{x}|-| \mathbf{y}|| \leq|\mathbf{x}-\mathbf{y}| \quad\left(\mathbf{x}, \mathbf{y} \in R^{k}\right) .
$$
Hence the mapping $\mathbf{x} \rightarrow|\mathbf{x}|$ is a continuous real function on $R^{k}$.
If now $f$ is a continuous mapping from a metric space $X$ into $R^{k}$, and if $\phi$ is defined on $X$ by setting $\phi(p)=|\mathbf{f}(p)|$, it follows, by Theorem 4.7, that $\phi$ is a continuous real function on $X$.

**4.12 Remark** We defined the notion of continuity for functions defined on a subset $E$ of a metric space $X$. However, the complement of $E$ in $X$ plays no role whatever in this definition (note that the situation was somewhat different for limits of functions). Accordingly, we lose nothing of interest by discarding the complement of the domain of $f$. This means that we may just as well talk only about continuous mappings of one metric space into another, rather than of mappings of subsets. This simplifies statements and proofs of some theorems. We have already made use of this principle in Theorems $4.8$ to $4.10$, and will continue to do so in the following section on compactness.

