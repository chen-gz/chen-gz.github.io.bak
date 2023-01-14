---
title: The Fundamental Theorem of Calculus
date: "2023-01-13"
---

### 7.16 

This theorem concerns functions defined on some compact interval $[a, b]$ in $R^1$. It has two parts. The first asserts, roughly speaking, that the derivative of the indefinite integral of a function is that same function. We dealt with this in Theorem 7.11. The second part goes the other way: one returns to the original function by integrating its derivative. More precisely
$$
f(x)-f(a)=\int_a^x f^{\prime}(t) d t \quad(a \leq x \leq b) .
$$
In the elementary version of this theorem, one assumes that $f$ is differentiable at every point of $[a, b]$ and that $f^{\prime}$ is a continuous function. The proof of $(1)$ is then easy.

In trying to extend (1) to the setting of the Lebesgue integral, questions such as the following come up naturally:
Is it enough to assume that $f^{\prime} \in L^1$, rather than that $f^{\prime}$ is continuous?
If $f$ is continuous and differentiable at almost all points of $[a, b]$, must (1) then hold?

Before proving any positive results, here are two examples that show how (1) can fail.

(a) Put $f(x)=x^2 \sin \left(x^{-2}\right)$ if $x \neq 0, f(0)=0$. Then $f$ is differentiable at every point, but
$$
\int_0^1\left|f^{\prime}(t)\right| d t=\infty,
$$
so $f^{\prime} \notin L^1$.
If we interpret the integral in (1) (with $[0,1]$ in place of $[a, b]$ ) as the limit, as $\epsilon \rightarrow 0$, of the integrals over $[\epsilon, 1]$, then (1) still holds for this $f$.

More complicated situations can arise where this kind of passage to the limit is of no use. There are integration processes, due to Denjoy and Perron (see [18], [28]), which are so designed that (1) holds whenever $f$ is differentiable at every point. These fail to have the property that the integrability of $f$ implies that of $|f|$, and therefore do not play such an important role in analysis.

(b) Suppose $f$ is continuous on $[a, b], f$ is differentiable at almost every point of $[a, b]$, and $f^{\prime} \in L^1$ on $[a, b]$. Do these assumptions imply that (1) holds?
Answer: No.

Choose $\left\{\delta_n\right\}$ so that $1=\delta_0>\delta_1>\delta_2>\cdots, \delta_n \rightarrow 0$. Put $E_0=[0,1]$.

Suppose $n \geq 0$ and $E_n$ is constructed so that $E_n$ is the union of $2^n$ disjoint closed intervals, each of length $2^{-n} \delta_n$. Delete a segment in the center of each of these $2^n$ intervals, so that each of the remaining $2^{n+1}$ intervals has length

$2^{-n-1} \delta_{n+1}$ (this is possible, since $\delta_{n+1}<\delta_n$ ), and let $E_{n+1}$ be the union of these $2^{n+1}$ intervals. Then $E_1 \supset E_2 \supset \cdots, m\left(E_n\right)=\delta_n$, and if
$$
E=\bigcap_{n=1}^{\infty} E_n,
$$
then $E$ is compact and $m(E)=0$. (In fact, $E$ is perfect.) Put
$$
g_n=\delta_n^{-1} \chi_{E_n} \text { and } f_n(x)=\int_0^x g_n(t) d t \quad(n=0,1,2, \ldots) .
$$
Then $f_n(0)=0, f_n(1)=1$, and each $f_n$ is a monotonic function which is constant on each segment in the complement of $E_n$. If $I$ is one of the $2^n$ intervals whose union is $E_n$, then
$$
\int_I g_n(t) d t=\int_I g_{n+1}(t) d t=2^{-n}
$$
It follows from (5) that
$$
f_{n+1}(x)=f_n(x) \quad\left(x \notin E_n\right)
$$
and that
$$
\left|f_n(x)-f_{n+1}(x)\right| \leq \int_I\left|g_n-g_{n+1}\right|<2^{-n+1} \quad\left(x \in E_n\right)
$$
Hence $\left\{f_n\right\}$ converges uniformly to a continuous monotonic function $f$, with $f(0)=0, f(1)=1$, and $f^{\prime}(x)=0$ for all $x \notin E$. Since $m(E)=0$, we have $f^{\prime}=0$ a.e.

Thus (1) fails.

If $\delta_n=(2 / 3)^n$, the set $E$ is Cantor's " middle thirds" set.

Having seen what can go wrong, assume now that $f^{\prime} \in L^1$ and that (1) does hold. There is then a measure $\mu$, defined by $d \mu=f^{\prime} d m$. Since $\mu \ll m$, Theorem $6.11$ shows that there corresponds to each $\epsilon>0$ a $\delta>0$ so that $|\mu|(E)<\epsilon$ whenever $E$ is a union of disjoint segments whose total length is less than $\delta$. Since $f(y)-f(x)=\mu((x, y))$ if $a \leq x<y \leq b$, it follows that the absolute continuity of $f$, as defined below, is necessary for (1). Theorem $7.20$ will show that this necessary condition is also sufficient.

### 7.17 Definition 

A complex function $f$, defined on an interval $I=[a, b]$, is said to be absolutely continuous on $I$ (briefly, $f$ is AC on $I$ ) if there corresponds to every $\epsilon>0$ a $\delta>0$ so that
$$
\sum_{i=1}^n\left|f\left(\beta_i\right)-f\left(\alpha_i\right)\right|<\epsilon
$$
for any $n$ and any disjoint collection of segments $\left(\alpha_1, \beta_1\right), \ldots,\left(\alpha_n, \beta_n\right)$ in $I$ whose lengths satisfy
$$
\sum_{i=1}^n\left(\beta_i-\alpha_i\right)<\delta .
$$
Such an $f$ is obviously continuous: simply take $n=1$.

In the following theorem, the implication $(b) \rightarrow(c)$ is probably the most interesting. That $(a) \rightarrow(c)$ without assuming monotonicity of $f$ is the content of Theorem 7.20.

### 7.18 Theorem 

Let $I=[a, b]$, let $f: I \rightarrow R^1$ be continuous and nondecreasing. Each of the following three statements about $f$ implies the other two:

(a) $f$ is $\mathrm{AC}$ on I.
(b) $f$ maps sets of measure 0 to sets of measure 0.
(c) $f$ is differentiable a.e. on $I, f^{\prime} \in L^1$, and
$$
f(x)-f(a)=\int_a^x f^{\prime}(t) d t \quad(\alpha \leq x \leq b) .
$$
Note that the functions constructed in Example $7.16(b)$ map certain compact sets of measure 0 onto the whole unit interval!

Exercise 12 complements this theorem.

Proof We will show that $(a) \rightarrow(b) \rightarrow(c) \rightarrow(a)$.

Let $\mathfrak{M}$ denote the $\sigma$-algebra of all Lebesgue measurable subsets of $R^1$.

Assume $f$ is AC on $I$, pick $E \subset I$ so that $E \in \mathfrak{M}$ and $m(E)=0$. We have to show that $f(E) \in \mathfrak{M}$ and $m(f(E))=0$. Without loss of generality, assume that neither $a$ nor $b$ lie in $E$.

Choose $\epsilon>0$. Associate $\delta>0$ to $f$ and $\epsilon$, as in Definition 7.17. There is then an open set $V$ with $m(V)<\delta$, so that $E \subset V \subset I$. Let $\left(\alpha_i, \beta_i\right)$ be the disjoint segments whose union is $V$. Then $\sum\left(\beta_i-\alpha_i\right)<\delta$, and our choice of $\delta$ shows that therefore
$$
\sum_i\left(f\left(\beta_i\right)-f\left(\alpha_i\right)\right) \leq \epsilon .
$$
[Definition $7.17$ was stated in terms of finite sums; thus (2) holds for every partial sum of the (possibly) infinite series, hence (2) holds also for the sum of the whole series, as stated.]

Since $E \subset V, f(E) \subset \bigcup\left[f\left(\alpha_i\right), f\left(\beta_i\right)\right]$. The Lebesgue measure of this union is the left side of (2). This says that $f(E)$ is a subset of Borel sets of arbitrarily small measure. Since Lebesgue measure is complete, it follows that $f(E) \in \mathfrak{M}$ and $m(f(E))=0$.

We have now proved that $(a)$ implies $(b)$.

Assume next that $(b)$ holds. Define
$$
g(x)=x+f(x) \quad(a \leq x \leq b) .
$$
If the $f$-image of some segment of length $\eta$ has length $\eta^{\prime}$, then the $g$-image of that same segment has length $\eta+\eta^{\prime}$. From this it follows easily that $g$ satisfies (b), since $f$ does.

Now suppose $E \subset I, E \in \mathfrak{M}$. Then $E=E_1 \cup E_0$ where $m\left(E_0\right)=0$ and $E_1$ is an $F_\sigma$ (Theorem 2.20). Thus $E_1$ is a countable union of compact sets, and so is $g\left(E_1\right)$, because $g$ is continuous. Since $g$ satisfies $(b), m\left(g\left(E_0\right)\right)=0$. Since $g(E)=g\left(E_1\right) \cup g\left(E_0\right)$, we conclude: $g(E) \in \mathfrak{M}$.
Therefore we can define
$$
\mu(E)=m(g(E)) \quad(E \subset I, E \in \mathfrak{M}) .
$$
Since $g$ is one-to-one (this is our reason for working with $g$ rather than $f$ ), disjoint sets in $I$ have disjoint $g$-images. The countable additivity of $m$ shows therefore that $\mu$ is a (positive, bounded) measure on $\mathfrak{M}$. Also, $\mu \ll m$, because $g$ satisfies $(b)$. Thus
$$
d \mu=h d m
$$
for some $h \in L^1(m)$, by the Radon-Nikodym theorem.

If $E=[a, x]$, then $g(E)=[g(a), g(x)]$, and (5) gives
$$
g(x)-g(a)=m(g(E))=\mu(E)=\int_E h d m=\int_a^x h(t) d t .
$$
If we now use (3), we conclude that
$$
f(x)-f(a)=\int_a^x[h(t)-1] d t \quad(\alpha \leq x \leq b) .
$$
Thus $f^{\prime}(x)=h(x)-1$ a.e. $[m]$, by Theorem 7.11.

We have now proved that $(b)$ implies $(c)$.

The discussion that preceded Definition $7.17$ showed that $(c)$ implies $(a)$.

### 7.19 Theorem 

Suppose $f: I \rightarrow R^1$ is $\mathrm{AC}, I=[a, b]$. Define
$$
F(x)=\sup \sum_{i=1}^N\left|f\left(t_i\right)-f\left(t_{i-1}\right)\right| \quad(a \leq x \leq b)
$$
where the supremum is taken over all $N$ and over all choices of $\left\{t_i\right\}$ such that
$$
a=t_0<t_1<\cdots<t_N=x .
$$
The functions $F, F+f, F-f$ are then nondecreasing and $\mathrm{AC}$ on I.

[ $F$ is called the total variation function of $f$. If $f$ is any (complex) function on $I$, AC or not, and $F(b)<\infty$, then $f$ is said to have bounded variation on $I$, and $F(b)$ is the total variation of $f$ on $I$. Exercise 13 is relevant to this.]

Proof If (2) holds and $x<y \leq b$, then
$$
F(y) \geq|f(y)-f(x)|+\sum_{i=1}^N\left|f\left(t_i\right)-f\left(t_{i-1}\right)\right| .
$$
Hence $F(y) \geq|f(y)-f(x)|+F(x)$. In particular
$$
F(y) \geq f(y)-f(x)+F(x) \text { and } F(y) \geq f(x)-f(y)+F(x) .
$$
This proves that $F, F+f, F-f$ are nondecreasing.

Since sums of two $\mathrm{AC}$ functions are obviously $\mathrm{AC}$, it only remains to be proved that $F$ is AC on $I$.
If $(a, \beta) \subset I$ then
$$
F(\beta)-F(\alpha)=\sup \sum_1^n\left|f\left(t_i\right)-f\left(t_{i-1}\right)\right| \text {, }
$$
the supremum being taken over all $\left\{t_i\right\}$ that satisfy $\alpha=t_0<\cdots<t_n=\beta$.
Note that $\sum\left(t_i-t_{i-1}\right)=\beta-\alpha$.

Now pick $\epsilon>0$, associate $\delta>0$ to $f$ and $\epsilon$ as in Definition 7.17, choose disjoint segments $\left(\alpha_j, \beta_j\right) \subset I$ with $\sum\left(\beta_j-\alpha_j\right)<\delta$, and apply (5) to each $\left(\alpha_j, \beta_j\right)$. It follows that
$$
\sum_j\left(F\left(\beta_j\right)-F\left(\alpha_j\right)\right) \leq \epsilon,
$$
by our choice of $\delta$. Thus $F$ is $\mathrm{AC}$ on $I$.

We have now reached our main objective:

### 7.20 Theorem 

If $f$ is a complex function that is $\mathrm{AC}$ on $I=[a, b]$, then $f$ is differentiable at almost all points of $I, f^{\prime} \in L^1(m)$, and
$$
f(x)-f(a)=\int_a^x f^{\prime}(t) d t \quad(a \leq x \leq b) .
$$
Proof It is of course enough to prove this for real $f$. Let $F$ be its total variation function, as in Theorem 7.19, define
$$
f_1=\frac{1}{2}(F+f), \quad f_2=\frac{1}{2}(F-f),
$$
and apply the implication $(a) \rightarrow(c)$ of Theorem $7.18$ to $f_1$ and $f_2$. Since
$$
f=f_1-f_2
$$
this yields (1).

The next theorem derives (1) from a different set of hypotheses, by an entirely different method of proof.

### 7.21 Theorem 

If $f:[a, b] \rightarrow R^1$ is differentiable at every point of $[a, b]$ and $f^{\prime} \in L^1$ on $[a, b]$, then
$$
f(x)-f(a)=\int_a^x f^{\prime}(t) d t \quad(a \leq x \leq b) .
$$
Note that differentiability is assumed to hold at every point of $[a, b]$.

Proof It is clear that it is enough to prove this for $x=b$. Fix $\epsilon>0$. Theorem $2.25$ ensures the existence of a lower semicontinuous function $g$ on $[a, b]$ such that $g>f^{\prime}$ and
$$
\int_a^b g(t) d t<\int_a^b f^{\prime}(t) d t+\epsilon .
$$
Actually, Theorem $2.25$ only gives $g \geq f^{\prime}$, but since $m([a, b])<\infty$, we can add a small constant to $g$ without affecting (2). For any $\eta>0$, define
$$
F_\eta(x)=\int_a^x g(t) d t-f(x)+f(a)+\eta(x-a) \quad(a \leq x \leq b)
$$
Keep $\eta$ fixed for the moment. To each $x \in[a, b)$ there corresponds a $\delta_x>0$ such that
$$
g(t)>f^{\prime}(x) \text { and } \frac{f(t)-f(x)}{t-x}<f^{\prime}(x)+\eta
$$
for all $t \in\left(x, x+\delta_x\right)$, since $g$ is lower semicontinuous and $g(x)>f^{\prime}(x)$. For any such $t$ we therefore have
$$
\begin{aligned}
F_\eta(t)-F_\eta(x) & =\int_x^t g(s) d s-[f(t)-f(x)]+\eta(t-x) \\
& >(t-x) f^{\prime}(x)-(t-x)\left[f^{\prime}(x)+\eta\right]+\eta(t-x)=0 .
\end{aligned}
$$
Since $F_\eta(a)=0$ and $F_\eta$ is continuous, there is a last point $x \in[a, b]$ at which $F_\eta(x)=0$. If $x<b$, the preceding computation implies that $F_\eta(t)>0$ for $t \in(x, b]$. In any case, $F_\eta(b) \geq 0$. Since this holds for every $\eta>0$, (2) and (3) now give
$$
f(b)-f(a) \leq \int_a^b g(t) d t<\int_a^b f^{\prime}(t) d t+\epsilon,
$$
and since $\epsilon$ was arbitrary, we conclude that
$$
f(b)-f(a) \leq \int_a^b f^{\prime}(t) d t .
$$
If $f$ satisfies the hypotheses of the theorem, so does $-f$; therefore (6) holds with $-f$ in place of $f$, and these two inequalities together give (1). ////
