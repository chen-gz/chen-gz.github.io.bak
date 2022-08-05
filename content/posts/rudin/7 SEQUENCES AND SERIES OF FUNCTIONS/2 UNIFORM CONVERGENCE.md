---
title: 2 UNIFORM CONVERGENCE
date: 2022-07-31
---


**7.7 Definition** We say that a sequence of functions $\left\{f_{n}\right\}, n=1,2,3, \ldots$, converges *uniformly* on $E$ to a function $f$ if for every $\varepsilon>0$ there is an integer $N$ such that $n \geq N$ implies

$$
\left|f_{n}(x)-f(x)\right| \leq \varepsilon
$$

for all $x \in E$.

It is clear that every uniformly convergent sequence is pointwise convergent. Quite explicitly, the difference between the two concepts is this: If $\left\{f_{n}\right\}$ converges pointwise on $E$, then there exists a function $f$ such that, for every $\varepsilon>0$, and for every $x \in E$, there is an integer $N$, depending on $\varepsilon$ and on $x$, such that (12) holds if $n \geq N$; if $\left\{f_{n}\right\}$ converges uniformly on $E$, it is possible, for each $\varepsilon>0$, to find one integer $N$ which will do for all $x \in E$.

We say that the series $\Sigma f_{n}(x)$ converges uniformly on $E$ if the sequence $\left\{s_{n}\right\}$ of partial sums defined by

$$
\sum_{i=1}^{n} f_{i}(x)=s_{n}(x)
$$

converges uniformly on $E$.

The Cauchy criterion for uniform convergence is as follows.

**$7.8$ Theorem** The sequence of functions $\left\{f_{n}\right\}$, defined on $E$, converges uniformly on $E$ if and only if for every $\varepsilon>0$ there exists an integer $N$ such that $m \geq N$, $n \geq N, x \in E$ implies

$$
\left|f_{n}(x)-f_{m}(x)\right| \leq \varepsilon .
$$

**Proof** Suppose $\left\{f_{n}\right\}$ converges uniformly on $E$, and let $f$ be the limit function. Then there is an integer $N$ such that $n \geq N, x \in E$ implies

$$
\left|f_{n}(x)-f(x)\right| \leq \frac{\varepsilon}{2},
$$

so that

$$
\left|f_{n}(x)-f_{m}(x)\right| \leq\left|f_{n}(x)-f(x)\right|+\left|f(x)-f_{m}(x)\right| \leq \varepsilon
$$

if $n \geq N, m \geq N, x \in E$. Conversely, suppose the Cauchy condition holds. By Theorem 3.11, the sequence $\left\{f_{n}(x)\right\}$ converges, for every $x$, to a limit which we may call $f(x)$. Thus the sequence $\left\{f_{n}\right\}$ converges on $E$, to $f$. We have to prove that the convergence is uniform.

Let $\varepsilon>0$ be given, and choose $N$ such that (13) holds. Fix $n$, and let $m \rightarrow \infty$ in (13). Since $f_{m}(x) \rightarrow f(x)$ as $m \rightarrow \infty$, this gives

$$
\left|f_{n}(x)-f(x)\right| \leq \varepsilon
$$

for every $n \geq N$ and every $x \in E$, which completes the proof. $\blacksquare$

The following criterion is sometimes useful.

**7.9 Theorem** Suppose

$$
\lim _{n \rightarrow \infty} f_{n}(x)=f(x) \quad(x \in E) .
$$

Put

$$
M_{n}=\sup _{x \in E}\left|f_{n}(x)-f(x)\right| .
$$

Then $f_{n} \rightarrow f$ uniformly on $E$ if and only if $M_{n} \rightarrow 0$ as $n \rightarrow \infty$.

Since this is an immediate consequence of Definition 7.7, we omit the details of the proof.

For series, there is a very convenient test for uniform convergence, due to Weierstrass.

**7.10 Theorem** Suppose $\left\{f_{n}\right\}$ is a sequence of functions defined on $E$, and suppose

$$
\left|f_{n}(x)\right| \leq M_{n} \quad(x \in E, n=1,2,3, \ldots) \text {. }
$$

Then $\Sigma f_{n}$ converges uniformly on $E$ if $\Sigma M_{n}$ converges.

Note that the converse is not asserted (and is, in fact, not true).

**Proof** If $\Sigma M_{n}$ converges, then, for arbitrary $\varepsilon>0$,

$$
\left|\sum_{i=n}^{m} f_{i}(x)\right| \leq \sum_{i=n}^{m} M_{i} \leq \varepsilon \quad(x \in E),
$$

provided $m$ and $n$ are large enough. $\blacksquare$

Uniform convergence now follows from Theorem 7.8. 
