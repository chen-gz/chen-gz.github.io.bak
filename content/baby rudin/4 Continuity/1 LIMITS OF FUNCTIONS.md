---
title: LIMITS OF FUNCTIONS
date: 2022-07-18
---

**4.1 Definition** Let $X$ and $Y$ be metric spaces; suppose $E \subset X, f$ maps $E$ into $Y$, and $p$ is a limit point of $E$. We write $f(x) \rightarrow q$ as $x \rightarrow p$, or
$$
\lim _{x \rightarrow p} f(x)=q
$$
if there is a point $q \in Y$ with the following property: For every $\varepsilon>0$ there exists a $\delta>0$ such that
$$
d_{Y}(f(x), q)<\varepsilon
$$
for all points $x \in E$ for which
$$
0<d_{X}(x, p)<\delta .
$$
The symbols $d_{X}$ and $d_{Y}$ refer to the distances in $X$ and $Y$, respectively.
If $X$ and/or $Y$ are replaced by the real line, the complex plane, or by some euclidean space $R^{k}$, the distances $d_{X}, d_{Y}$ are of course replaced by absolute values, or by norms of differences (see Sec. 2.16).

It should be noted that $p \in X$, but that $p$ need not be a point of $E$ in the above definition. Moreover, even if $p \in E$, we may very well have $f(p) \neq \lim _{x \rightarrow p} f(x)$.
We can recast this definition in terms of limits of sequences:

**4.2 Theorem** Let $X, Y, E, f$, and $p$ be as in Definition 4.1. Then
$$
\lim _{x \rightarrow p} f(x)=q
$$
if and only if
$$
\lim _{n \rightarrow \infty} f\left(p_{n}\right)=q
$$
for every sequence $\left\{p_{n}\right\}$ in $E$ such that
$$
p_{n} \neq p, \quad \lim _{n \rightarrow \infty} p_{n}=p .
$$
Proof Suppose (4) holds. Choose $\left\{p_{n}\right\}$ in $E$ satisfying (6). Let $\varepsilon>0$ be given. Then there exists $\delta>0$ such that $d_{Y}(f(x), q)<\varepsilon$ if $x \in E$ and $0<d_{X}(x, p)<\delta$. Also, there exists $N$ such that $n>N$ implies $0<d_{X}\left(p_{n}, p\right)<\delta$. Thus, for $n>N$, we have $d_{Y}\left(f\left(p_{n}\right), q\right)<\varepsilon$, which shows that (5) holds.

Conversely, suppose (4) is false. Then there exists some $\varepsilon>0$ such that for every $\delta>0$ there exists a point $x \in E$ (depending on $\delta$ ), for which $d_{Y}(f(x), q) \geq \varepsilon$ but $0<d_{X}(x, p)<\delta$. Taking $\delta_{n}=1 / n(n=1,2,3, \ldots)$, we thus find a sequence in $E$ satisfying (6) for which (5) is false.

**Corollary** If $f$ has a limit at $p$, this limit is unique.
This follows from Theorems $3.2(b)$ and 4.2.

**4.3 Definition** Suppose we have two complex functions, $f$ and $g$, both defined on $E$. By $f+g$ we mean the function which assigns to each point $x$ of $E$ the number $f(x)+g(x)$. Similarly we define the difference $f-g$, the product $f g$, and the quotient $f / g$ of the two functions, with the understanding that the quotient is defined only at those points $x$ of $E$ at which $g(x) \neq 0$. If $f$ assigns to each point $x$ of $E$ the same number $c$, then $f$ is said to be a constant function, or simply a constant, and we write $f=c$. If $f$ and $g$ are real functions, and if $f(x) \geq g(x)$ for every $x \in E$, we shall sometimes write $f \geq g$, for brevity.
Similarly, if $\mathbf{f}$ and $\mathbf{g}$ map $E$ into $R^{k}$, we define $\mathbf{f}+\mathbf{g}$ and $\mathbf{f} \cdot \mathbf{g}$ by
$$
(\mathbf{f}+\mathbf{g})(x)=\mathbf{f}(x)+\mathbf{g}(x), \quad(\mathbf{f} \cdot \mathbf{g})(x)=\mathbf{f}(x) \cdot \mathbf{g}(x) \text {; }
$$
and if $\lambda$ is a real number, $(\lambda f)(x)=\lambda f(x)$.

**4.4 Theorem** Suppose $E \subset X$, a metric space, $p$ is a limit point of $E, f$ and $g$ are complex functions on $E$, and
$$
\lim _{x \rightarrow p} f(x)=A, \quad \lim _{x \rightarrow p} g(x)=B .
$$
Then $(a) \lim (f+g)(x)=A+B$
(b) $\lim _{x \rightarrow p}^{x \rightarrow p}(f g)(x)=A B$;
(c) $\lim _{x \rightarrow p}\left(\frac{f}{g}\right)(x)=\frac{A}{B}$, if $B \neq 0$.
Proof In view of Theorem 4.2, these assertions follow immediately from the analogous properties of sequences (Theorem 3.3).
Remark If $\mathbf{f}$ and $\mathbf{g}$ map $E$ into $R^{k}$, then (a) remains true, and (b) becomes
(b') $\lim _{x \rightarrow p}(\mathbf{f} \cdot \mathbf{g})(x)=\mathbf{A} \cdot \mathbf{B}$.
(Compare Theorem 3.4.)

