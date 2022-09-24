---
title: 7 SERIES OF NONNEGATIVE TERMS
date: 2022-07-16
---

The simplest of all is perhaps the geometric series.

**3.26 Theorem** If $0 \leq x<1$, then
$$
\sum_{n=0}^{\infty} x^{n}=\frac{1}{1-x}
$$
If $x \geq 1$, the series diverges.

**Proof** If $x \neq 1$,
$$
s_{n}=\sum_{k=0}^{n} x^{k}=\frac{1-x^{n+1}}{1-x} .
$$
The result follows if we let $n \rightarrow \infty$. For $x=1$, we get
$$
1+1+1+\cdots \text {, }
$$
which evidently diverges.

In many cases which occur in applications, the terms of the series decrease monotonically. The following theorem of Cauchy is therefore of particular interest. The striking feature of the theorem is that a rather "thin's subsequence of $\left\{a_{n}\right\}$ determines the convergence or divergence of $\Sigma a_{n}$.

**3.27 Theorem** Suppose $a_{1} \geq a_{2} \geq a_{3} \geq \cdots \geq 0$. Then the series $\sum_{n=1}^{\infty} a_{n}$ converges if and only if the series
$$
\sum_{k=0}^{\infty} 2^{k} a_{2^{k}}=a_{1}+2 a_{2}+4 a_{4}+8 a_{8}+\cdots
$$
converges.

**Proof** By Theorem 3.24, it suffices to consider boundedness of the partial sums. Let
$$
\begin{aligned}
&s_{n}=a_{1}+a_{2}+\cdots+a_{n}, \\
&t_{k}=a_{1}+2 a_{2}+\cdots+2^{k} a_{2^{k}}
\end{aligned}
$$
For $n<2^{k}$
$$
\begin{aligned}
s_{n} & \leq a_{1}+\left(a_{2}+a_{3}\right)+\cdots+\left(a_{2^{k}}+\cdots+a_{2^{k+1}-1}\right) \\
& \leq a_{1}+2 a_{2}+\cdots+2^{k} a_{2^{k}} \\
&=t_{k}
\end{aligned}
$$
so that
$$
s_{n} \leq t_{k}
$$
On the other hand, if $n>2^{k}$,
$$
\begin{aligned}
s_{n} & \geq a_{1}+a_{2}+\left(a_{3}+a_{4}\right)+\cdots+\left(a_{2^{k-1}+1}+\cdots+a_{2^{k}}\right) \\
& \geq \frac{1}{2} a_{1}+a_{2}+2 a_{4}+\cdots+2^{k-1} a_{2^{k}} \\
&=\frac{1}{2} t_{k}
\end{aligned}
$$
so that
(9)
$$
2 s_{n} \geq t_{k} \text {. }
$$
By (8) and (9), the sequences $\left\{s_{n}\right\}$ and $\left\{t_{k}\right\}$ are either both bounded or both unbounded. This completes the proof.

**3.28 Theorem** $\sum \frac{1}{n^{p}}$ converges if $p>1$ and diverges if $p \leq 1$.
Proof If $p \leq 0$, divergence follows from Theorem 3.23. If $p>0$, Theorem $3.27$ is applicable, and we are led to the series
$$
\sum_{k=0}^{\infty} 2^{k} \cdot \frac{1}{2^{k p}}=\sum_{k=0}^{\infty} 2^{(1-p) k}
$$
Now, $2^{1-p}<1$ if and only if $1-p<0$, and the result follows by comparison with the geometric series (take $x=2^{1-p}$ in Theorem 3.26).
As a further application of Theorem 3.27, we prove:

**3.29 Theorem** If $p>1$,
$$
\sum_{n=2}^{\infty} \frac{1}{n(\log n)^{p}}
$$
converges; if $p \leq 1$, the series diverges.
Remark "'log $n$ "' denotes the logarithm of $n$ to the base $e$ (compare Exercise 7, Chap. 1); the number $e$ will be defined in a moment (see Definition 3.30). We let the series start with $n=2$, since $\log 1=0$.

**Proof** The monotonicity of the logarithmic function (which will be discussed in more detail in Chap. 8) implies that $\{\log n\}$ increases. Hence $\{1 / n \log n\}$ decreases, and we can apply Theorem $3.27$ to (10); this leads us to the series
$$
\sum_{k=1}^{\infty} 2^{k} \cdot \frac{1}{2^{k}\left(\log 2^{k}\right)^{p}}=\sum_{k=1}^{\infty} \frac{1}{(k \log 2)^{p}}=\frac{1}{(\log 2)^{p}} \sum_{k=1}^{\infty} \frac{1}{k^{p}}
$$
and Theorem $3.29$ follows from Theorem 3.28.
This procedure may evidently be continued. For instance,
$$
\sum_{n=3}^{\infty} \frac{1}{n \log n \log \log n}
$$
diverges, whereas
$$
\sum_{n=3}^{\infty} \frac{1}{n \log n(\log \log n)^{2}}
$$
converges.

We may now observe that the terms of the series (12) differ very little from those of (13). Still, one diverges, the other converges. If we continue the process which led us from Theorem $3.28$ to Theorem 3.29, and then to (12) and (13), we get pairs of convergent and divergent series whose terms differ even less than those of (12) and (13). One might thus be led to the conjecture that there is a limiting situation of some sort, a "boundary" with all convergent series on one side, all divergent series on the other side-at least as far as series with monotonic coefficients are concerned. This notion of "boundary" is of course quite vague. The point we wish to make is this: No matter how we make this notion precise, the conjecture is false. Exercises $11(b)$ and $12(b)$ may serve as illustrations.

We do not wish to go any deeper into this aspect of convergence theory, and refer the reader to Knopp's "Theory and Application of Infinite Series," Chap. IX, particularly Sec. $41 .$