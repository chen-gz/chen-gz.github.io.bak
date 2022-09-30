---
title: CONTINUITY AND COMPACTNESS
date: 2022-07-20
---

**4.13 Definition** A mapping $f$ of a set $E$ into $R^{k}$ is said to be bounded if there is a real number $M$ such that $|\mathrm{f}(x)| \leq M$ for all $x \in E$.

**4.14 Theorem** Suppose $f$ is a continuous mapping of a compact metric space $X$ into a metric space $Y$. Then $f(X)$ is compact.

Proof Let $\left\{V_{\alpha}\right\}$ be an open cover of $f(X)$. Since $f$ is continuous, Theorem $4.8$ shows that each of the sets $f^{-1}\left(V_{\alpha}\right)$ is open. Since $X$ is compact, there are finitely many indices, say $\alpha_{1}, \ldots, \alpha_{n}$, such that
$$
X \subset f^{-1}\left(V_{\alpha_{1}}\right) \cup \cdots \cup f^{-1}\left(V_{\alpha_{n}}\right) .
$$
Since $f\left(f^{-1}(E)\right) \subset E$ for every $E \subset Y,(12)$ implies that
$$
f(X) \subset V_{\alpha_{1}} \cup \cdots \cup V_{\alpha_{n}} .
$$
This completes the proof.
Note: We have used the relation $f\left(f^{-1}(E)\right) \subset E$, valid for $E \subset Y$. If $E \subset X$, then $f^{-1}(f(E)) \supset E$; equality need not hold in either case.
We shall now deduce some consequences of Theorem 4.14.

**4.15 Theorem** If $\mathbf{f}$ is a continuous mapping of a compact metric space $X$ into $R^{k}$, then $\mathbf{f}(X)$ is closed and bounded. Thus, $\mathrm{f}$ is bounded.

This follows from Theorem 2.41. The result is particularly important when $f$ is real:
4.16 Theorem Suppose $f$ is a continuous real function on a compact metric space $X$, and
$$
M=\sup _{p \in X} f(p), \quad m=\inf _{p \in X} f(p) .
$$
Then there exist points $p, q \in X$ such that $f(p)=M$ and $f(q)=m$.
The notation in (14) means that $M$ is the least upper bound of the set of all numbers $f(p)$, where $p$ ranges over $X$, and that $m$ is the greatest lower bound of this set of numbers.

**4.16 Theorem** Suppose $f$ is a continuous real function on a compact metric space $X$, and
$$
M=\sup _{p \in X} f(p), \quad m=\inf _{p \in X} f(p) .
$$
Then there exist points $p, q \in X$ such that $f(p)=M$ and $f(q)=m$.
The notation in (14) means that $M$ is the least upper bound of the set of all numbers $f(p)$, where $p$ ranges over $X$, and that $m$ is the greatest lower bound of this set of numbers.

The conclusion may also be stated as follows: There exist points $p$ and $q$ in $X$ such that $f(q) \leq f(x) \leq f(p)$ for all $x \in X$; that is, $f$ attains its maximum (at $p$ ) and its minimum (at $q)$.

Proof By Theorem 4.15, $f(X)$ is a closed and bounded set of real numbers; hence $f(X)$ contains
$$
M=\sup f(X) \quad \text { and } \quad m=\inf f(X),
$$
by Theorem $2.28$.

**4.17 Theorem** Suppose $f$ is a continuous 1-1 mapping of a compact metric space $X$ onto a metric space $Y$. Then the inverse mapping $f^{-1}$ defined on $Y$ by
$$
f^{-1}(f(x))=x \quad(x \in X)
$$
is a continuous mapping of $Y$ onto $X$.
Proof Applying Theorem $4.8$ to $f^{-1}$ in place of $f$, we see that it suffices to prove that $f(V)$ is an open set in $Y$ for every open set $V$ in $X$. Fix such a set $V$.

The complement $V^{c}$ of $V$ is closed in $X$, hence compact (Theorem 2.35); hence $f\left(V^{c}\right)$ is a compact subset of $Y$ (Theorem 4.14) and so is closed in $Y$ (Theorem 2.34). Since $f$ is one-to-one and onto, $f(V)$ is the complement of $f\left(V^{c}\right)$. Hence $f(V)$ is open.

**4.18 Definition** Let $f$ be a mapping of a metric space $X$ into a metric space $Y$. We say that $f$ is uniformly continuous on $X$ if for every $\varepsilon>0$ there exists $\delta>0$ such that
$$
d_{\mathbf{Y}}(f(p), f(q))<\varepsilon
$$
for all $p$ and $q$ in $X$ for which $d_{\mathbf{X}}(p, q)<\delta$.
Let us consider the differences between the concepts of continuity and of uniform continuity. First, uniform continuity is a property of a function on a set, whereas continuity can be defined at a single point. To ask whether a given function is uniformly continuous at a certain point is meaningless. Second, if $f$ is continuous on $X$, then it is possible to find, for each $\varepsilon>0$ and for each point $p$ of $X$, a number $\delta>0$ having the property specified in Definition 4.5. This $\delta$ depends on $\varepsilon$ and on $p$. If $f$ is, however, uniformly continuous on $X$, then it is possible, for each $\varepsilon>0$, to find one number $\delta>0$ which will do for all points $p$ of $X$.

Evidently, every uniformly continuous function is continuous. That the two concepts are equivalent on compact sets follows from the next theorem.

**4.19 Theorem** Let $f$ be a continuous mapping of a compact metric space $X$ into a metric space $Y$. Then $f$ is uniformly continuous on $X$.

Proof Let $\varepsilon>0$ be given. Since $f$ is continuous, we can associate to each point $p \in X$ a positive number $\phi(p)$ such that
(16) $q \in X, d_{X}(p, q)<\phi(p)$ implies $d_{Y}(f(p), f(q))<\frac{\varepsilon}{2}$.
Let $J(p)$ be the set of all $q \in X$ for which
$$
d_{\mathbf{x}}(p, q)<\frac{1}{2} \phi(p) .
$$
Since $p \in J(p)$, the collection of all sets $J(p)$ is an open cover of $X$; and since $X$ is compact, there is a finite set of points $p_{1}, \ldots, p_{n}$ in $X$, such that
$$
\text { We put } \quad \delta=\frac{1}{2} \min \left[\phi\left(p_{1}\right), \ldots, \phi\left(p_{n}\right)\right] \text {. }
$$
Then $\delta>0$. (This is one point where the finiteness of the covering, inherent in the definition of compactness, is essential. The minimum of a finite set of positive numbers is positive, whereas the inf of an infinite set of positive numbers may very well be 0 .)

Now let $q$ and $p$ be points of $X$, such that $d_{X}(p, q)<\delta$. By (18), there is an integer $m, 1 \leq m \leq n$, such that $p \in J\left(p_{m}\right)$; hence
$$
d_{x}\left(p, p_{m}\right)<\frac{1}{2} \phi\left(p_{m}\right),
$$
and we also have
$$
d_{X}\left(q, p_{m}\right) \leq d_{X}(p, q)+d_{X}\left(p, p_{m}\right)<\delta+\frac{1}{2} \phi\left(p_{m}\right) \leq \phi\left(p_{m}\right) .
$$
Finally, (16) shows that therefore
$$
d_{Y}(f(p), f(q)) \leq d_{Y}\left(f(p), f\left(p_{m}\right)\right)+d_{Y}\left(f(q), f\left(p_{m}\right)\right)<\varepsilon .
$$
This completes the proof.
An alternative proof is sketched in Exercise $10 .$
We now proceed to show that compactness is essential in the hypotheses of Theorems $4.14,4.15,4.16$, and 4.19.

**4.20 Theorem** Let $E$ be a noncompact set in $R^{1}$. Then
(a) there exists a continuous function on $E$ which is not bounded;
(b) there exists a continuous and bounded function on $E$ which has no maximum.
If, in addition, $E$ is bounded, then

(c) there exists a continuous function on $E$ which is not uniformly continuous.

Proof Suppose first that $E$ is bounded, so that there exists a limit point $x_{0}$ of $E$ which is not a point of $E$. Consider
$$
f(x)=\frac{1}{x-x_{0}} \quad(x \in E)
$$
This is continuous on $E$ (Theorem 4.9), but evidently unbounded. To see that (21) is not uniformly continuous, let $\varepsilon>0$ and $\delta>0$ be arbitrary, and choose a point $x \in E$ such that $\left|x-x_{0}\right|<\delta$. Taking $t$ close enough to $x_{0}$, we can then make the difference $|f(t)-f(x)|$ greater than $\varepsilon$, although $|t-x|<\delta$. Since this is true for every $\delta>0, f$ is not uniformly continuous on $E$.

The function $g$ given by
$$
g(x)=\frac{1}{1+\left(x-x_{0}\right)^{2}} \quad(x \in E)
$$
is continuous on $E$, and is bounded, since $0<g(x)<1$. It is clear that
$$
\sup _{x \in E} g(x)=1,
$$
whereas $g(x)<1$ for all $x \in E$. Thus $g$ has no maximum on $E$.
Having proved the theorem for bounded sets $E$, let us now suppose that $E$ is unbounded. Then $f(x)=x$ establishes $(a)$, whereas
$$
h(x)=\frac{x^{2}}{1+x^{2}} \quad(x \in E)
$$
establishes $(b)$, since
$$
\sup _{x \in E} h(x)=1
$$
and $h(x)<1$ for all $x \in E$.
Assertion $(c)$ would be false if boundedness were omitted from the hypotheses. For, let $E$ be the set of all integers. Then every function defined on $E$ is uniformly continuous on $E$. To see this, we need merely take $\delta<1$ in Definition $4.18$.

We conclude this section by showing that compactness is also essential in Theorem 4.17.

**4.21 Example** Let $X$ be the half-open interval $[0,2 \pi)$ on the real line, and let $\mathrm{f}$ be the mapping of $X$ onto the circle $Y$ consisting of all points whose distance from the origin is 1 , given by
$$
\mathbf{f}(t)=(\cos t, \sin t) \quad(0 \leq t<2 \pi) .
$$
The continuity of the trigonometric functions cosine and sine, as well as their periodicity properties, will be established in Chap. 8. These results show that $\mathrm{f}$ is a continuous 1-1 mapping of $X$ onto $Y$.

However, the inverse mapping (which exists, since $f$ is one-to-one and onto) fails to be continuous at the point $(1,0)=f(0)$. Of course, $X$ is not compact in this example. (It may be of interest to observe that $\mathbf{f}^{-1}$ fails to be continuous in spite of the fact that $Y$ is compact!)

