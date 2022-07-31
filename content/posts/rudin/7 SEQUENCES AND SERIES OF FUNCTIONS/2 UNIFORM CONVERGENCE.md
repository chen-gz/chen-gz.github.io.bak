---
title: 2 UNIFORM CONVERGENCE
date: 2022-07-31
---


**7.7 Definition** We say that a sequence of functions $\left\{f_{n}\right\}, n=1,2,3, \ldots$, converges uniformly on $E$ to a function $f$ if for every $\varepsilon>0$ there is an integer $N$ such that $n \geq N$ implies

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

$7.8$ Theorem The sequence of functions $\left\{f_{n}\right\}$, defined on $E$, converges uniformly on $E$ if and only if for every $\varepsilon>0$ there exists an integer $N$ such that $m \geq N$, $n \geq N, x \in E$ implies

$$
\left|f_{n}(x)-f_{m}(x)\right| \leq \varepsilon .
$$

Proof Suppose $\left\{f_{n}\right\}$ converges uniformly on $E$, and let $f$ be the limit function. Then there is an integer $N$ such that $n \geq N, x \in E$ implies

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

for every $n \geq N$ and every $x \in E$, which completes the proof.

The following criterion is sometimes useful.

\subsection{Theorem Suppose}

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

7.10 Theorem Suppose $\left\{f_{n}\right\}$ is a sequence of functions defined on $E$, and suppose

$$
\left|f_{n}(x)\right| \leq M_{n} \quad(x \in E, n=1,2,3, \ldots) \text {. }
$$

Then $\Sigma f_{n}$ converges uniformly on $E$ if $\Sigma M_{n}$ converges.

Note that the converse is not asserted (and is, in fact, not true).

Proof If $\Sigma M_{n}$ converges, then, for arbitrary $\varepsilon>0$,

$$
\left|\sum_{i=n}^{m} f_{i}(x)\right| \leq \sum_{i=n}^{m} M_{i} \leq \varepsilon \quad(x \in E),
$$

provided $m$ and $n$ are large enough. Uniform convergence now follows from Theorem 7.8. 

\section{UNIFORM CONVERGENCE AND CONTINUITY}

7.11 Theorem Suppose $f_{n} \rightarrow f$ uniformly on a set $E$ in a metric space. Let $x$ be a limit point of $E$, and suppose that

$$
\lim _{t \rightarrow x} f_{n}(t)=A_{n} \quad(n=1,2,3, \ldots) .
$$

Then $\left\{A_{n}\right\}$ converges, and

$$
\lim _{t \rightarrow x} f(t)=\lim _{n \rightarrow \infty} A_{n} .
$$

In other words, the conclusion is that

$$
\lim _{t \rightarrow x} \lim _{n \rightarrow \infty} f_{n}(t)=\lim _{n \rightarrow \infty} \lim _{t \rightarrow x} f_{n}(t) .
$$

Proof Let $\varepsilon>0$ be given. By the uniform convergence of $\left\{f_{n}\right\}$, there exists $N$ such that $n \geq N, m \geq N, t \in E$ imply

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

provided $t \in V \cap E, t \neq x$. This is equivalent to (16). 7.12 Theorem If $\left\{f_{n}\right\}$ is a sequence of continuous functions on $E$, and if $f_{n} \rightarrow f$ uniformly on $E$, then $f$ is continuous on $E$.

This very important result is an immediate corollary of Theorem 7.11.

The converse is not true; that is, a sequence of continuous functions may converge to a continuous function, although the convergence is not uniform. Example $7.6$ is of this kind (to see this, apply Theorem 7.9). But there is a case in which we can assert the converse.

7.13 Theorem Suppose $K$ is compact, and

(a) $\left\{f_{n}\right\}$ is a sequence of continuous functions on $K$,

(b) $\left\{f_{n}\right\}$ converges pointwise to a continuous function $f$ on $K$,

(c) $f_{n}(x) \geq f_{n+1}(x)$ for all $x \in K, n=1,2,3, \ldots$

Then $f_{n} \rightarrow f$ uniformly on $K$.

Proof Put $g_{n}=f_{n}-f$. Then $g_{n}$ is continuous, $g_{n} \rightarrow 0$ pointwise, and $g_{n} \geq g_{n+1}$. We have to prove that $g_{n} \rightarrow 0$ uniformly on $K$.

Let $\varepsilon>0$ be given. Let $K_{n}$ be the set of all $x \in K$ with $g_{n}(x) \geq \varepsilon$. Since $g_{n}$ is continuous, $K_{n}$ is closed (Theorem 4.8), hence compact (Theorem 2.35). Since $g_{n} \geq g_{n+1}$, we have $K_{n} \supset K_{n+1}$. Fix $x \in K$. Since $g_{n}(x) \rightarrow 0$, we see that $x \notin K_{n}$ if $n$ is sufficiently large. Thus $x \notin \bigcap K_{n}$. In other words, $\bigcap K_{n}$ is empty. Hence $K_{N}$ is empty for some $N$ (Theorem 2.36). It follows that $0 \leq g_{n}(x)<\varepsilon$ for all $x \in K$ and for all $n \geq N$. This proves the theorem.

Let us note that compactness is really needed here. For instance, if

$$
f_{n}(x)=\frac{1}{n x+1} \quad(0<x<1 ; n=1,2,3, \ldots)
$$

then $f_{n}(x) \rightarrow 0$ monotonically in $(0,1)$, but the convergence is not uniform.

7.14 Definition If $X$ is a metric space, $\mathscr{C}(X)$ will denote the set of all complexvalued, continuous, bounded functions with domain $X$.

[Note that boundedness is redundant if $X$ is compact (Theorem 4.15). Thus $\mathscr{C}(X)$ consists of all complex continuous functions on $X$ if $X$ is compact.]

We associate with each $f \in \mathscr{C}(X)$ its supremum norm

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

We have thus made $\mathscr{C}(X)$ into a metric space.

Theorem $7.9$ can be rephrased as follows:

A sequence $\left\{f_{n}\right\}$ converges to $f$ with respect to the metric of $\mathscr{C}(X)$ if and only if $f_{n} \rightarrow f$ uniformly on $X$.

Accordingly, closed subsets of $\mathscr{C}(X)$ are sometimes called uniformly closed, the closure of a set $\mathscr{A} \subset \mathscr{C}(X)$ is called its uniform closure, and so on.

7.15 Theorem The above metric makes $\mathscr{B}(X)$ into a complete metric space.

Proof Let $\left\{f_{n}\right\}$ be a Cauchy sequence in $\mathscr{C}(X)$. This means that to each $\varepsilon>0$ corresponds an $N$ such that $\left\|f_{n}-f_{m}\right\|<\varepsilon$ if $n \geq N$ and $m \geq N$. It follows (by Theorem 7.8) that there is a function $f$ with domain $X$ to which $\left\{f_{n}\right\}$ converges uniformly. By Theorem 7.12, $f$ is continuous. Moreover, $f$ is bounded, since there is an $n$ such that $\left|f(x)-f_{n}(x)\right|<1$ for all $x \in X$, and $f_{n}$ is bounded.

Thus $f \in \mathscr{C}(X)$, and since $f_{n} \rightarrow f$ uniformly on $X$, we have $\left\|f-f_{n}\right\| \rightarrow 0$ as $n \rightarrow \infty$.

\section{UNIFORM CONVERGENCE AND INTEGRATION}

7.16 Theorem Let $\alpha$ be monotonically increasing on [a, b]. Suppose $f_{n} \in \mathscr{R}(\alpha)$ on $[a, b]$, for $n=1,2,3, \ldots$, and suppose $f_{n} \rightarrow f$ uniformly on $[a, b]$. Then $f \in \mathscr{R}(\alpha)$ on $[a, b]$, and

$$
\int_{a}^{b} f d \alpha=\lim _{n \rightarrow \infty} \int_{a}^{b} f_{n} d \alpha .
$$

(The existence of the limit is part of the conclusion.)

Proof It suffices to prove this for real $f_{n}$. Put

$$
\varepsilon_{n}=\sup \left|f_{n}(x)-f(x)\right|,
$$
the supremum being taken over $a \leq x \leq b$. Then

$$
f_{n}-\varepsilon_{n} \leq f \leq f_{n}+\varepsilon_{n},
$$

so that the upper and lower integrals of $f$ (see Definition 6.2) satisfy

$$
\int_{a}^{b}\left(f_{n}-\varepsilon_{n}\right) d \alpha \leq \int_{-} f d \alpha \leq \bar{\int} f d \alpha \leq \int_{a}^{b}\left(f_{n}+\varepsilon_{n}\right) d \alpha .
$$

Hence

$$
0 \leq \bar{\int} f d \alpha-\int_{-} f d \alpha \leq 2 \varepsilon_{n}[\alpha(b)-\alpha(a)]
$$

Since $\varepsilon_{n} \rightarrow 0$ as $n \rightarrow \infty$ (Theorem 7.9), the upper and lower integrals of $f$ are equal.

Thus $f \in \mathscr{R}(\alpha)$. Another application of (25) now yields

$$
\left|\int_{a}^{b} f d \alpha-\int_{a}^{b} f_{n} d \alpha\right| \leq \varepsilon_{n}[\alpha(b)-\alpha(a)] .
$$

This implies (23).

Corollary If $f_{n} \in \mathscr{R}(\alpha)$ on $[a, b]$ and if

$$
f(x)=\sum_{n=1}^{\infty} f_{n}(x) \quad(a \leq x \leq b),
$$

the series converging uniformly on $[a, b]$, then

$$
\int_{a}^{b} f d \alpha=\sum_{n=1}^{\infty} \int_{a}^{b} f_{n} d \alpha .
$$

In other words, the series may be integrated term by term.

\section{UNIFORM CONVERGENCE AND DIFFERENTIATION}

We have already seen, in Example 7.5, that uniform convergence of $\left\{f_{n}\right\}$ implies nothing about the sequence $\left\{f_{n}^{\prime}\right\}$. Thus stronger hypotheses are required for the assertion that $f_{n}^{\prime} \rightarrow f^{\prime}$ if $f_{n} \rightarrow f$.

7.17 Theorem Suppose $\left\{f_{n}\right\}$ is a sequence of functions, differentiable on $[a, b]$ and such that $\left\{f_{n}\left(x_{0}\right)\right\}$ converges for some point $x_{0}$ on $[a, b]$. If $\left\{f_{n}^{\prime}\right\}$ converges uniformly on $[a, b]$, then $\left\{f_{n}\right\}$ converges uniformly on $[a, b]$, to a function $f$, and

$$
f^{\prime}(x)=\lim _{n \rightarrow \infty} f_{n}^{\prime}(x) \quad(a \leq x \leq b) .
$$

Proof Let $\varepsilon>0$ be given. Choose $N$ such that $n \geq N, m \geq N$, implies

$$
\left|f_{n}\left(x_{0}\right)-f_{m}\left(x_{0}\right)\right|<\frac{\varepsilon}{2}
$$

and

$$
\left|f_{n}^{\prime}(t)-f_{m}^{\prime}(t)\right|<\frac{\varepsilon}{2(b-a)} \quad(a \leq t \leq b)
$$

If we apply the mean value theorem $5.19$ to the function $f_{n}-f_{m},(29)$ shows that

$$
\left|f_{n}(x)-f_{m}(x)-f_{n}(t)+f_{m}(t)\right| \leq \frac{|x-t| \varepsilon}{2(b-a)} \leq \frac{\varepsilon}{2}
$$

for any $x$ and $t$ on $[a, b]$, if $n \geq N, m \geq N$. The inequality

$$
\left|f_{n}(x)-f_{m}(x)\right| \leq\left|f_{n}(x)-f_{m}(x)-f_{n}\left(x_{0}\right)+f_{m}\left(x_{0}\right)\right|+\left|f_{n}\left(x_{0}\right)-f_{m}\left(x_{0}\right)\right|
$$

implies, by (28) and (30), that

$$
\left|f_{n}(x)-f_{m}(x)\right|<\varepsilon \quad(a \leq x \leq b, n \geq N, m \geq N) \text {, }
$$

so that $\left\{f_{n}\right\}$ converges uniformly on $[a, b]$. Let

$$
f(x)=\lim _{n \rightarrow \infty} f_{n}(x) \quad(a \leq x \leq b) .
$$

Let us now fix a point $x$ on $[a, b]$ and define

$$
\phi_{n}(t)=\frac{f_{n}(t)-f_{n}(x)}{t-x}, \quad \phi(t)=\frac{f(t)-f(x)}{t-x}
$$

for $a \leq t \leq b, t \neq x$. Then

$$
\lim _{t \rightarrow x} \phi_{n}(t)=f_{n}^{\prime}(x) \quad(n=1,2,3, \ldots) \text {. }
$$

The first inequality in (30) shows that

$$
\left|\phi_{n}(t)-\phi_{m}(t)\right| \leq \frac{\varepsilon}{2(b-a)} \quad(n \geq N, m \geq N),
$$

so that $\left\{\phi_{n}\right\}$ converges uniformly, for $t \neq x$. Since $\left\{f_{n}\right\}$ converges to $f$, we conclude from (31) that

$$
\lim _{n \rightarrow \infty} \phi_{n}(t)=\phi(t)
$$

uniformly for $a \leq t \leq b, t \neq x$.

If we now apply Theorem $7.11$ to $\left\{\phi_{n}\right\},(32)$ and (33) show that

$$
\lim _{t \rightarrow x} \phi(t)=\lim _{n \rightarrow \infty} f_{n}^{\prime}(x) \text {; }
$$

and this is (27), by the definition of $\phi(t)$.

Remark: If the continuity of the functions $f_{n}^{\prime}$ is assumed in addition to the above hypotheses, then a much shorter proof of (27) can be based on Theorem $7.16$ and the fundamental theorem of calculus.