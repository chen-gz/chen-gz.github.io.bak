---
title: REARRANGEMENTS
date: 2022-07-18
---

**3.52 Definition** Let $\left\{k_{n}\right\}, n=1,2,3, \ldots$, be a sequence in which every positive integer appears once and only once (that is, $\left\{k_{n}\right\}$ is a 1-1 function from $J$ onto $J$, in the notation of Definition 2.2). Putting
$$
a_{n}^{\prime}=a_{k_{n}} \quad(n=1,2,3, \ldots),
$$
we say that $\Sigma a_{n}^{\prime}$ is a rearrangement of $\Sigma a_{n}$.

If $\left\{s_{n}\right\},\left\{s_{n}^{\prime}\right\}$ are the sequences of partial sums of $\Sigma a_{n}, \Sigma a_{n}^{\prime}$, it is easily seen that, in general, these two sequences consist of entirely different numbers. We are thus led to the problem of determining under what conditions all rearrangements of a convergent series will converge and whether the sums are necessarily the same.
**3.53 Example** Consider the convergent series
$$
1-\frac{1}{2}+\frac{1}{3}-\frac{1}{4}+\frac{1}{5}-\frac{1}{6}+\cdots
$$
and one of its rearrangements
$$
1+\frac{1}{3}-\frac{1}{2}+\frac{1}{5}+\frac{1}{7}-\frac{1}{4}+\frac{1}{9}+\frac{1}{11}-\frac{1}{6}+\cdots
$$
in which two positive terms are always followed by one negative. If $s$ is the sum of (22), then
$$
s<1-\frac{1}{2}+\frac{1}{3}=\frac{5}{6} .
$$
Since
$$
\frac{1}{4 k-3}+\frac{1}{4 k-1}-\frac{1}{2 k}>0
$$
for $k \geq 1$, we see that $s_{3}^{\prime}<s_{6}^{\prime}<s_{9}^{\prime}<\cdots$, where $s_{n}^{\prime}$ is $n$th partial sum of (23). Hence
$$
\limsup _{n \rightarrow \infty} s_{n}^{\prime}>s_{3}^{\prime}=\frac{5}{6},
$$
so that (23) certainly does not converge to $s$ [we leave it to the reader to verify that (23) does, however, converge].
This example illustrates the following theorem, due to Riemann.

**3.54 Theorem** Let $\Sigma a_{n}$ be a series of real numbers which converges, but not absolutely. Suppose
$$
-\infty \leq \alpha \leq \beta \leq \infty \text {. }
$$
Then there exists a rearrangement $\Sigma a_{n}^{\prime}$ with partial sums $s_{n}^{\prime}$ such that
$$
\liminf _{n \rightarrow \infty} s_{n}^{\prime}=\alpha, \quad \limsup _{n \rightarrow \infty} s_{n}^{\prime}=\beta .
$$
Proof Let
$$
p_{n}=\frac{\left|a_{n}\right|+a_{n}}{2}, \quad q_{n}=\frac{\left|a_{n}\right|-a_{n}}{2} \quad(n=1,2,3, \ldots)
$$
Then $p_{n}-q_{n}=a_{n}, p_{n}+q_{n}=\left|a_{n}\right|, p_{n} \geq 0, q_{n} \geq 0$. The series $\Sigma p_{n}, \Sigma q_{n}$ must both diverge.
For if both were convergent, then
$$
\Sigma\left(p_{n}+q_{n}\right)=\Sigma\left|a_{n}\right|
$$
would converge, contrary to hypothesis. Since
$$
\sum_{n=1}^{N} a_{n}=\sum_{n=1}^{N}\left(p_{n}-q_{n}\right)=\sum_{n=1}^{N} p_{n}-\sum_{n=1}^{N} q_{n},
$$
divergence of $\Sigma p_{n}$ and convergence of $\Sigma q_{n}$ (or vice versa) implies divergence of $\Sigma a_{n}$, again contrary to hypothesis.

Now let $P_{1}, P_{2}, P_{3}, \ldots$ denote the nonnegative terms of $\Sigma a_{n}$, in the order in which they occur, and let $Q_{1}, Q_{2}, Q_{3}, \ldots$ be the absolute values of the negative terms of $\Sigma a_{n}$, also in their original order.

The series $\Sigma P_{n}, \Sigma Q_{n}$ differ from $\Sigma p_{n}, \Sigma q_{n}$ only by zero terms, and are therefore divergent.
We shall construct sequences $\left\{m_{n}\right\},\left\{k_{n}\right\}$, such that the series
(25) $P_{1}+\cdots+P_{m_{1}}-Q_{1}-\cdots-Q_{k_{1}}+P_{m_{1}+1}+\cdots$
$$
+P_{m_{2}}-Q_{k_{1}+1}-\cdots-Q_{k_{2}}+\cdots,
$$
which clearly is a rearrangement of $\Sigma a_{n}$, satisfies (24).
Choose real-valued sequences $\left\{\alpha_{n}\right\},\left\{\beta_{n}\right\}$ such that $\alpha_{n} \rightarrow \alpha, \beta_{n} \rightarrow \beta$,
$\alpha_{n}<\beta_{n}, \beta_{1}>0$. $\quad$ Let $m_{1}, k_{1}$ be the smallest integers such that
Let $m_{1}, k_{1}$ be the smallest integers such that
$$
\begin{gathered}
P_{1}+\cdots+P_{m_{1}}>\beta_{1} \\
P_{1}+\cdots+P_{m_{1}}-Q_{1}-\cdots-Q_{k_{1}}<\alpha_{1}
\end{gathered}
$$
let $m_{2}, k_{2}$ be the smallest integers such that
$$
\begin{aligned}
P_{1}+\cdots+P_{m_{1}}-Q_{1}-\cdots-Q_{k_{1}}+P_{m_{1}+1}+\cdots+P_{m_{2}}>\beta_{2} \\
P_{1}+\cdots+P_{m_{1}}-Q_{1}-\cdots-Q_{k_{1}}+P_{m_{1}+1}+\cdots+P_{m_{2}}-Q_{k_{1}+1} \\
&-\cdots-Q_{k_{2}}<\alpha_{2}
\end{aligned}
$$
and continue in this way. This is possible since $\Sigma P_{n}$ and $\Sigma Q_{n}$ diverge. If $x_{n}, y_{n}$ denote the partial sums of (25) whose last terms are $P_{m_{n}}$, $-Q_{k_{n}}$, then
$$
\left|x_{n}-\beta_{n}\right| \leq P_{m_{n}}, \quad\left|y_{n}-\alpha_{n}\right| \leq Q_{k_{n}} .
$$
Since $P_{n} \rightarrow 0$ and $Q_{n} \rightarrow 0$ as $n \rightarrow \infty$, we see that $x_{n} \rightarrow \beta, y_{n} \rightarrow \alpha$.
Finally, it is clear that no number less than $\alpha$ or greater than $\beta$ can be a subsequential limit of the partial sums of ( 25$)$.

**3.55 Theorem** If $\Sigma a_{n}$ is a series of complex numbers which converges absolutely, then every rearrangement of $\Sigma a_{n}$ converges, and they all converge to the same sum.
Proof Let $\Sigma a_{n}^{\prime}$ be a rearrangement, with partial sums $s_{n}^{\prime}$. Given $\varepsilon>0$, there exists an integer $N$ such that $m \geq n \geq N$ implies
$$
\sum_{i=n}^{m}\left|a_{i}\right| \leq \varepsilon .
$$
Now choose $p$ such that the integers $1,2, \ldots, N$ are all contained in the set $k_{1}, k_{2}, \ldots, k_{p}$ (we use the notation of Definition 3.52). Then if $n>p$, the numbers $a_{1}, \ldots, a_{N}$ will cancel in the difference $s_{n}-s_{n}^{\prime}$, so that $\left|s_{n}-s_{n}^{\prime}\right| \leq \varepsilon$, by (26). Hence $\left\{s_{n}^{\prime}\right\}$ converges to the same sum as $\left\{s_{n}\right\}$.