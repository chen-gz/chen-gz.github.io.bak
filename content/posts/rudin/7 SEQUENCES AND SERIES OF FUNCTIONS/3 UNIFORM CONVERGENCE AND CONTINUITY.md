---
title: 3 UNIFORM CONVERGENCE AND CONTINUITY
date: 2022-07-31
---

**7.11 Theorem** *Suppose $f_{n} \rightarrow f$ uniformly on a set $E$ in a metric space. Let $x$ be a limit point of $E$, and suppose that
$$
\lim _{t \rightarrow x} f_{n}(t)=A_{n} \quad(n=1,2,3, \ldots) .
$$
Then $\left\{A_{n}\right\}$ converges, and
$$
\lim _{t \rightarrow x} f(t)=\lim _{n \rightarrow \infty} A_{n} .
$$*

In other words, the conclusion is that

$$
\lim _{t \rightarrow x} \lim _{n \rightarrow \infty} f_{n}(t)=\lim _{n \rightarrow \infty} \lim _{t \rightarrow x} f_{n}(t) .
$$

**Proof** Let $\varepsilon>0$ be given. By the uniform convergence of $\left\{f_{n}\right\}$, there exists $N$ such that $n \geq N, m \geq N, t \in E$ imply

$$
\left|f_{n}(t)-f_{m}(t)\right| \leq \varepsilon .
$$

Letting $t \rightarrow x$ in (18), we obtain

$$
\left|A_{n}-A_{m}\right| \leq \varepsilon
$$

for $n \geq N, m \geq N$, so that $\left\{A_{n}\right\}$ is a Cauchy sequence and therefore converges, say to $A$.

Next,

$$
|f(t)-A| \leq\left|f(t)-f_{n}(t)\right|+\left|f_{n}(t)-A_{n}\right|+\left|A_{n}-A\right| .
$$

We first choose $n$ such that

$$
\left|f(t)-f_{n}(t)\right| \leq \frac{\varepsilon}{3}
$$

for all $t \in E$ (this is possible by the uniform convergence), and such that

$$
\left|A_{n}-A\right| \leq \frac{\varepsilon}{3} .
$$

Then, for this $n$, we choose a neighborhood $V$ of $x$ such that

$$
\left|f_{n}(t)-A_{n}\right| \leq \frac{\varepsilon}{3}
$$

if $t \in V \cap E, t \neq x$.

Substituting the inequalities (20) to (22) into (19), we see that

$$
|f(t)-A| \leq \varepsilon,
$$

provided $t \in V \cap E, t \neq x$. This is equivalent to (16). 

**7.12 Theorem** *If $\left\{f_{n}\right\}$ is a sequence of continuous functions on $E$, and if $f_{n} \rightarrow f$ uniformly on $E$, then $f$ is continuous on $E$.*

This very important result is an immediate corollary of Theorem 7.11.

The converse is not true; that is, a sequence of continuous functions may converge to a continuous function, although the convergence is not uniform. Example $7.6$ is of this kind (to see this, apply Theorem 7.9). But there is a case in which we can assert the converse.

**7.13 Theorem** *Suppose $K$ is compact, and<br>
(a) $\left\{f_{n}\right\}$ is a sequence of continuous functions on $K$, <br>
(b) $\left\{f_{n}\right\}$ converges pointwise to a continuous function $f$ on $K$,<br>
(c) $f_{n}(x) \geq f_{n+1}(x)$ for all $x \in K, n=1,2,3, \ldots$ <br>
Then $f_{n} \rightarrow f$ uniformly on $K$.*

**Proof** Put $g_{n}=f_{n}-f$. Then $g_{n}$ is continuous, $g_{n} \rightarrow 0$ pointwise, and $g_{n} \geq g_{n+1}$. We have to prove that $g_{n} \rightarrow 0$ uniformly on $K$.

Let $\varepsilon>0$ be given. Let $K_{n}$ be the set of all $x \in K$ with $g_{n}(x) \geq \varepsilon$. Since $g_{n}$ is continuous, $K_{n}$ is closed (Theorem 4.8), hence compact (Theorem 2.35). Since $g_{n} \geq g_{n+1}$, we have $K_{n} \supset K_{n+1}$. Fix $x \in K$. Since $g_{n}(x) \rightarrow 0$, we see that $x \notin K_{n}$ if $n$ is sufficiently large. Thus $x \notin \bigcap K_{n}$. In other words, $\bigcap K_{n}$ is empty. Hence $K_{N}$ is empty for some $N$ (Theorem 2.36). It follows that $0 \leq g_{n}(x)<\varepsilon$ for all $x \in K$ and for all $n \geq N$. This proves the theorem.$\blacksquare$

Let us note that compactness is really needed here. For instance, if

$$
f_{n}(x)=\frac{1}{n x+1} \quad(0<x<1 ; n=1,2,3, \ldots)
$$

then $f_{n}(x) \rightarrow 0$ monotonically in $(0,1)$, but the convergence is not uniform.

**7.14 Definition** If $X$ is a metric space, $\mathscr{C}(X)$ will denote the set of all complexvalued, continuous, bounded functions with domain $X$.

[Note that boundedness is redundant if $X$ is compact (Theorem 4.15). Thus $\mathscr{C}(X)$ consists of all complex continuous functions on $X$ if $X$ is compact.]

We associate with each $f \in \mathscr{C}(X)$ its *supremum norm*

$$
\|f\|=\sup _{x \in X}|f(x)| .
$$

Since $f$ is assumed to be bounded, $\|f\|<\infty$. It is obvious that $\|f\|=0$ only if $f(x)=0$ for every $x \in X$, that is, only if $f=0$. If $h=f+g$, then

$$
|h(x)| \leq|f(x)|+|g(x)| \leq\|f\|+\|g\|
$$

for all $x \in X$; hence

$$
\|f+g\| \leq\|f\|+\|g\| .
$$

If we define the distance between $f \in \mathscr{C}(X)$ and $g \in \mathscr{C}(X)$ to be $\|f-g\|$, it follows that Axioms $2.15$ for a metric are satisfied.

We have thus made $\mathscr{C}(X)$ into a *metric space*.

Theorem $7.9$ can be rephrased as follows:

*A sequence $\left\{f_{n}\right\}$ converges to $f$ with respect to the metric of $\mathscr{C}(X)$ if and only if $f_{n} \rightarrow f$ uniformly on $X$.*

Accordingly, closed subsets of $\mathscr{C}(X)$ are sometimes called *uniformly closed*, the closure of a set $\mathscr{A} \subset \mathscr{C}(X)$ is called its *uniform closure*, and so on.

**7.15 Theorem** *The above metric makes $\mathscr{B}(X)$ into a complete metric space.*

**Proof** Let $\left\{f_{n}\right\}$ be a Cauchy sequence in $\mathscr{C}(X)$. This means that to each $\varepsilon>0$ corresponds an $N$ such that $\left\|f_{n}-f_{m}\right\|<\varepsilon$ if $n \geq N$ and $m \geq N$. It follows (by Theorem 7.8) that there is a function $f$ with domain $X$ to which $\left\{f_{n}\right\}$ converges uniformly. By Theorem 7.12, $f$ is continuous. Moreover, $f$ is bounded, since there is an $n$ such that $\left|f(x)-f_{n}(x)\right|<1$ for all $x \in X$, and $f_{n}$ is bounded.$\blacksquare$

Thus $f \in \mathscr{C}(X)$, and since $f_{n} \rightarrow f$ uniformly on $X$, we have $\left\|f-f_{n}\right\| \rightarrow 0$ as $n \rightarrow \infty$.
