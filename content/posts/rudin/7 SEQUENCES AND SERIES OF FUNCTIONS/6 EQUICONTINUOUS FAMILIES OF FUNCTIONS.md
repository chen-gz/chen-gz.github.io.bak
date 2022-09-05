
---
title: 6 EQUICONTINUOUS FAMILIES OF FUNCTIONS
date: 2022-08-03
---

In Theorem $3.6$ we saw that every bounded sequence of complex numbers contains a convergent subsequence, and the question arises whether something similar is true for sequences of functions. To make the question more precise, we shall define two kinds of boundedness. 

**7.19 Definition** Let $\left\{f_{n}\right\}$ be a sequence of functions defined on a set $E$.

We say that $\left\{f_{n}\right\}$ is *pointwise bounded* on $E$ if the sequence $\left\{f_{n}(x)\right\}$ is bounded for every $x \in E$, that is, if there exists a finite-valued function $\phi$ defined on $E$ such that

$$
\left|f_{n}(x)\right|<\phi(x) \quad(x \in E, n=1,2,3, \ldots) \text {. }
$$

We say that $\left\{f_{n}\right\}$ is *uniformly bounded* on $E$ if there exists a number $M$ such that

$$
\left|f_{n}(x)\right|<M \quad(x \in E, n=1,2,3, \ldots) \text {. }
$$

Now if $\left\{f_{n}\right\}$ is pointwise bounded on $E$ and $E_{1}$ is a **countable subset** of $E$, it is always possible to find a subsequence $\left\{f_{n_{k}}\right\}$ such that $\left\{f_{n_{k}}(x)\right\}$ converges for every $x \in E_{1}$. This can be done by the diagonal process which is used in the proof of Theorem 7.23.

However, even if $\left\{f_{n}\right\}$ is a uniformly bounded sequence of continuous functions on a **compact set** $E$, there need not exist a subsequence which converges pointwise on $E$. In the following example, this would be quite troublesome to prove with the equipment which we have at hand so far, but the proof is quite simple if we appeal to a theorem from Chap. $11 .$

**7.20 Example** Let

$$
f_{n}(x)=\sin n x \quad(0 \leq x \leq 2 \pi, n=1,2,3, \ldots) .
$$

Suppose there exists a sequence $\left\{n_{k}\right\}$ such that $\left\{\sin n_{k} x\right\}$ converges, for every $x \in[0,2 \pi]$. In that case we must have

$$
\lim _{k \rightarrow \infty}\left(\sin n_{k} x-\sin n_{k+1} x\right)=0 \quad(0 \leq x \leq 2 \pi) ;
$$

hence

$$
\lim _{k \rightarrow \infty}\left(\sin n_{k} x-\sin n_{k+1} x\right)^{2}=0 \quad(0 \leq x \leq 2 \pi) .
$$

By Lebesgue's theorem concerning integration of boundedly convergent sequences (Theorem 11.32), (40) implies

$$
\lim _{k \rightarrow \infty} \int_{0}^{2 \pi}\left(\sin n_{k} x-\sin n_{k+1} x\right)^{2} d x=0 .
$$

But a simple calculation shows that

$$
\int_{0}^{2 \pi}\left(\sin n_{k} x-\sin n_{k+1} x\right)^{2} d x=2 \pi
$$

which contradicts (41). Another question is whether every convergent sequence contains a uniformly convergent subsequence. Our next example will show that this need not be so, even if the sequence is uniformly bounded on a compact set. (Example $7.6$ shows that a sequence of bounded functions may converge without being uniformly bounded; but it is trivial to see that uniform convergence of a sequence of bounded functions implies uniform boundedness.)

**7.21 Example** Let

$$
f_{n}(x)=\frac{x^{2}}{x^{2}+(1-n x)^{2}} \quad(0 \leq x \leq 1, n=1,2,3, \ldots) \text {. }
$$

Then $\left|f_{n}(x)\right| \leq 1$, so that $\left\{f_{n}\right\}$ is uniformly bounded on $[0,1]$. Also

$$
\lim _{n \rightarrow \infty} f_{n}(x)=0 \quad(0 \leq x \leq 1),
$$

but

$$
f_{n}\left(\frac{1}{n}\right)=1 \quad(n=1,2,3, \ldots),
$$

so that no subsequence can converge uniformly on $[0,1]$.

The concept which is needed in this connection is that of equicontinuity; it is given in the following definition.

**7.22 Definition** A family $\mathscr{F}$ of complex functions $f$ defined on a set $E$ in a metric space $X$ is said to be *equicontinuous* on $E$ if for every $\varepsilon>0$ there exists a $\delta>0$ such that

$$
|f(x)-f(y)|<\varepsilon
$$

whenever $d(x, y)<\delta, x \in E, y \in E$, and $f \in \mathscr{F}$. Here $d$ denotes the metric of $X$. (compare to 4.18)

It is clear that every member of an equicontinuous family is uniformly continuous.

The sequence of Example $7.21$ is not equicontinuous.

Theorems $7.24$ and $7.25$ will show that there is a very close relation between equicontinuity, on the one hand, and uniform convergence of sequences of continuous functions, on the other. But first we describe a selection process which has nothing to do with continuity.

**7.23 Theorem** *If $\left\{f_{n}\right\}$ is a pointwise bounded sequence of complex functions on a countable set $E$, then $\left\{f_{n}\right\}$ has a subsequence $\left\{f_{n_{k}}\right\}$ such that $\left\{f_{n_{k}}(x)\right\}$ converges for every $x \in E$.*

**Proof** Let $\left\{x_{i}\right\}, i=1,2,3, \ldots$, be the points of $E$, arranged in a sequence. Since $\left\{f_{n}\left(x_{1}\right)\right\}$ is bounded, there exists a subsequence, which we shall denote by $\left\{f_{1, k}\right\}$, such that $\left\{f_{1, k}\left(x_{1}\right)\right\}$ converges as $k \rightarrow \infty$.

Let us now consider sequences $S_{1}, S_{2}, S_{3}, \ldots$, which we represent by the array

$$
\begin{array}{cccccc}
S_{1}: & f_{1,1} & f_{1,2} & f_{1,3} & f_{1,4} & \ldots \\
S_{2}: & f_{2,1} & f_{2,2} & f_{2,3} & f_{2,4} & \ldots \\
S_{3}: & f_{3,1} & f_{3,2} & f_{3,3} & f_{3,4} & \cdots \\
\ldots & \ldots & \ldots & \ldots & \ldots
\end{array}
$$

and which have the following properties:

(a) $S_{n}$ is a subsequence of $S_{n-1}$, for $n=2,3,4, \ldots$

(b) $\left\{f_{n, k}\left(x_{n}\right)\right\}$ converges, as $k \rightarrow \infty$ (the boundedness of $\left\{f_{n}\left(x_{n}\right)\right\}$ makes it possible to choose $S_{n}$ in this way);

(c) The order in which the functions appear is the same in each sequence; i.e., if one function precedes another in $S_{1}$, they are in the same relation in every $S_{n}$, until one or the other is deleted. Hence, when going from one row in the above array to the next below, functions may move to the left but never to the right.

We now go down the diagonal of the array; i.e., we consider the sequence

$$
S: f_{1,1} \quad f_{2,2} \quad f_{3,3} \quad f_{4,4} \cdots .
$$

By $(c)$, the sequence $S$ (except possibly its first $n-1$ terms) is a subsequence of $S_{n}$, for $n=1,2,3, \ldots$. Hence $(b)$ implies that $\left\{f_{n, n}\left(x_{i}\right)\right\}$ converges, as $n \rightarrow \infty$, for every $x_{i} \in E$.

**7.24 Theorem** *If $K$ is a compact metric space, if $f_{n} \in \mathscr{C}(K)$ for $n=1,2,3, \ldots$, and if $\left\{f_{n}\right\}$ converges uniformly on $K$, then $\left\{f_{n}\right\}$ is equicontinuous on $K$.*

**Proof** Let $\varepsilon>0$ be given. Since $\left\{f_{n}\right\}$ converges uniformly, there is an integer $N$ such that

$$
\left\|f_{n}-f_{N}\right\|<\varepsilon \quad(n>N) .
$$

(See Definition 7.14.) Since continuous functions are uniformly continuous on compact sets, there is a $\delta>0$ such that

$$
\left|f_{i}(x)-f_{i}(y)\right|<\varepsilon
$$

if $1 \leq i \leq N$ and $d(x, y)<\delta$.

If $n>N$ and $d(x, y)<\delta$, it follows that

$$
\left|f_{n}(x)-f_{n}(y)\right| \leq\left|f_{n}(x)-f_{N}(x)\right|+\left|f_{N}(x)-f_{N}(y)\right|+\left|f_{N}(y)-f_{n}(y)\right|<3 \varepsilon \text {. }
$$

In conjunction with (43), this proves the theorem. 

**7.25 Theorem** *If $K$ is compact, if $f_{n} \in \mathscr{C}(K)$ for $n=1,2,3, \ldots$, and if $\left\{f_{n}\right\}$ is pointwise bounded and equicontinuous on $K$, then <br>
(a) $\left\{f_{n}\right\}$ is uniformly bounded on $K$,<br>
(b) $\left\{f_{n}\right\}$ contains a uniformly convergent subsequence.*

**Proof**

(a) Let $\varepsilon>0$ be given and choose $\delta>0$, in accordance with Definition 7.22, so that

$$
\left|f_{n}(x)-f_{n}(y)\right|<\varepsilon
$$

for all $n$, provided that $d(x, y)<\delta$.

Since $K$ is compact, there are finitely many points $p_{1}, \ldots, p_{r}$ in $K$ such that to every $x \in K$ corresponds at least one $p_{i}$ with $d\left(x, p_{i}\right)<\delta$. Since $\left\{f_{n}\right\}$ is pointwise bounded, there exist $M_{i}<\infty$ such that $\left|f_{n}\left(p_{i}\right)\right|<M_{i}$ for all $n$. If $M=\max \left(M_{1}, \ldots, M_{r}\right)$, then $\left|f_{n}(x)\right|<M+\varepsilon$ for every $x \in K$. This proves $(a)$.

(b) Let $E$ be a countable dense subset of $K$. (For the existence of such a set $E$, see Exercise 25, Chap. 2.) Theorem $7.23$ shows that $\left\{f_{n}\right\}$ has a subsequence $\left\{f_{n_{i}}\right\}$ such that $\left\{f_{n_{i}}(x)\right\}$ converges for every $x \in E$.

Put $f_{n_{i}}=g_{i}$, to simplify the notation. We shall prove that $\left\{g_{i}\right\}$ converges uniformly on $K$.

Let $\varepsilon>0$, and pick $\delta>0$ as in the beginning of this proof. Let $V(x, \delta)$ be the set of all $y \in K$ with $d(x, y)<\delta$. Since $E$ is dense in $K$, and $K$ is compact, there are finitely many points $x_{1}, \ldots, x_{m}$ in $E$ such that

$$
K \subset V\left(x_{1}, \delta\right) \cup \cdots \cup V\left(x_{m}, \delta\right) .
$$

Since $\left\{g_{i}(x)\right\}$ converges for every $x \in E$, there is an integer $N$ such that

$$
\left|g_{l}\left(x_{s}\right)-g_{j}\left(x_{s}\right)\right|<\varepsilon
$$

whenever $i \geq N, j \geq N, 1 \leq s \leq m$.

If $x \in K$, (45) shows that $x \in V\left(x_{s}, \delta\right)$ for some $s$, so that

$$
\left|g_{i}(x)-g_{i}\left(x_{\mathrm{s}}\right)\right|<\varepsilon
$$

for every $i$. If $i \geq N$ and $j \geq N$, it follows from (46) that

$$
\begin{aligned}
\left|g_{i}(x)-g_{j}(x)\right| & \leq\left|g_{i}(x)-g_{i}\left(x_{s}\right)\right|+\left|g_{i}\left(x_{s}\right)-g_{j}\left(x_{s}\right)\right|+\left|g_{j}\left(x_{s}\right)-g_{j}(x)\right| \\
&<3 \varepsilon .
\end{aligned}
$$

This completes the proof. 
