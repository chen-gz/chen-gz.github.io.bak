---
title: 9 THE ROOT AND RATIO TESTS
date: 2022-07-17
---

**3.33 Theorem** (Root Test) Given $\Sigma a_{n}$, put $\alpha=\limsup _{n \rightarrow \infty} \sqrt[n]{\left|a_{n}\right|}$. Then
(a) if $\alpha<1, \Sigma a_{n}$ converges;
(b) if $\alpha>1, \Sigma a_{n}$ diverges;
(c) if $\alpha=1$, the test gives no information.

Proof If $\alpha<1$, we can choose $\beta$ so that $\alpha<\beta<1$, and an integer $N$ such that
$$
\sqrt[n]{\left|a_{n}\right|}<\beta
$$
for $n \geq N$ [by Theorem 3.17(b)]. That is, $n \geq N$ implies
$$
\left|a_{n}\right|<\beta^{n} .
$$
Since $0<\beta<1, \Sigma \beta^{n}$ converges. Convergence of $\Sigma a_{n}$ follows now from the comparison test.

If $\alpha>1$, then, again by Theorem 3.17, there is a sequence $\left\{n_{k}\right\}$ such that
$$
\sqrt[n_{k}]{\left|a_{n_{k}}\right|} \rightarrow \alpha .
$$
Hence $\left|a_{n}\right|>1$ for infinitely many values of $n$, so that the condition $a_{n} \rightarrow 0$, necessary for convergence of $\Sigma a_{n}$, does not hold (Theorem 3.23).
To prove $(c)$, we consider the series
$$
\sum \frac{1}{n}, \sum \frac{1}{n^{2}} .
$$
For each of these series $\alpha=1$, but the first diverges, the second converges.

**3.34 Theorem (Ratio Test)** The series $\Sigma a_{n}$
(a) converges if $\limsup _{n \rightarrow \infty}\left|\frac{a_{n+1}}{a_{n}}\right|<1$,
(b) diverges if $\left|\frac{a_{n+1}}{a_{n}}\right| \geq 1$ for all $n \geq n_{0}$, where $n_{0}$ is some fixed integer.
Proof If condition $(a)$ holds, we can find $\beta<1$, and an integer $N$, such that
$$
\left|\frac{a_{n+1}}{a_{n}}\right|<\beta
$$
for $n \geq N$. In particular,
$$
\begin{aligned}
&\left|a_{N+1}\right|<\beta\left|a_{N}\right|, \\
&\left|a_{N+2}\right|<\beta\left|a_{N+1}\right|<\beta^{2}\left|a_{N}\right|, \\
&\ldots \ldots \ldots \ldots \ldots . . \ldots \ldots . \\
&\left|a_{N+p}\right|<\beta^{p}\left|a_{N}\right| .
\end{aligned}
$$
That is,
$$
\left|a_{n}\right|<\left|a_{N}\right| \beta^{-N} \cdot \beta^{n}
$$
for $n \geq N$, and (a) follows from the comparison test, since $\Sigma \beta^{n}$ converges. If $\left|a_{n+1}\right| \geq\left|a_{n}\right|$ for $n \geq n_{0}$, it is easily seen that the condition $a_{n} \rightarrow 0$ does not hold, and $(b)$ follows.

Note: The knowledge that $\lim a_{n+1} / a_{n}=1$ implies nothing about the convergence of $\Sigma a_{n}$. The series $\Sigma 1 / n$ and $\Sigma 1 / n^{2}$ demonstrate this.

**3.35 Examples**
(a) Consider the series
$$
\frac{1}{2}+\frac{1}{3}+\frac{1}{2^{2}}+\frac{1}{3^{2}}+\frac{1}{2^{3}}+\frac{1}{3^{3}}+\frac{1}{2^{4}}+\frac{1}{3^{4}}+\cdots,
$$
for which
$$
\begin{aligned}
&\liminf _{n \rightarrow \infty} \frac{a_{n+1}}{a_{n}}=\lim _{n \rightarrow \infty}\left(\frac{2}{3}\right)^{n}=0, \\
&\liminf _{n \rightarrow \infty} \sqrt[n]{a_{n}}=\lim _{n \rightarrow \infty} \sqrt[2 n]{\frac{1}{3^{n}}}=\frac{1}{\sqrt{3}} \\
&\limsup _{n \rightarrow \infty} \sqrt[n]{a_{n}}=\lim _{n \rightarrow \infty} \sqrt[2 n]{\frac{1}{2^{n}}}=\frac{1}{\sqrt{2}} \\
&\limsup _{n \rightarrow \infty} \frac{a_{n+1}}{a_{n}}=\lim _{n \rightarrow \infty} \frac{1}{2}\left(\frac{3}{2}\right)^{n}=+\infty
\end{aligned}
$$
The root test indicates convergence; the ratio test does not apply.
(b) The same is true for the series
$$
\frac{1}{2}+1+\frac{1}{8}+\frac{1}{4}+\frac{1}{32}+\frac{1}{16}+\frac{1}{128}+\frac{1}{64}+\cdots,
$$
where
$$
\begin{aligned}
&\liminf _{n \rightarrow \infty} \frac{a_{n+1}}{a_{n}}=\frac{1}{8}, \\
&\limsup _{n \rightarrow \infty} \frac{a_{n+1}}{a_{n}}=2,
\end{aligned}
$$
but
$$
\lim \sqrt[n]{a_{n}}=\frac{1}{2}
$$
**3.36 Remarks** The ratio test is frequently easier to apply than the root test, since it is usually easier to compute ratios than $n$th roots. However, the root test has wider scope. More precisely: Whenever the ratio test shows convergence, the root test does too; whenever the root test is inconclusive, the ratio test is too. This is a consequence of Theorem 3.37, and is illustrated by the above examples.

Neither of the two tests is subtle with regard to divergence. Both deduce divergence from the fact that $a_{n}$ does not tend to zero as $n \rightarrow \infty$.

**3.37 Theorem** For any sequence $\left\{c_{n}\right\}$ of positive numbers,
$$
\begin{gathered}
\liminf _{n \rightarrow \infty} \frac{c_{n+1}}{c_{n}} \leq \liminf _{n \rightarrow \infty} \sqrt[n]{c_{n}}, \\
\limsup _{n \rightarrow \infty} \sqrt[n]{c_{n}} \leq \limsup _{n \rightarrow \infty} \frac{c_{n+1}}{c_{n}}
\end{gathered}
$$
Proof We shall prove the second inequality; the proof of the first is quite similar. Put
$$
\alpha=\limsup _{n \rightarrow \infty} \frac{c_{n+1}}{c_{n}} .
$$
If $\alpha=+\infty$, there is nothing to prove. If $\alpha$ is finite, choose $\beta>\alpha$. There is an integer $N$ such that
$$
\frac{c_{n+1}}{c_{n}} \leq \beta
$$
for $n \geq N$. In particular, for any $p>0$,
$$
c_{N+k+1} \leq \beta c_{N+k} \quad(k=0,1, \ldots, p-1) .
$$
Multiplying these inequalities, we obtain
$$
c_{N+p} \leq \beta^{p} c_{N},
$$
or
$$
c_{n} \leq c_{N} \beta^{-N} \cdot \beta^{n} \quad(n \geq N)
$$
Hence
$$
\sqrt[n]{c_{n}} \leq \sqrt[n]{c_{N} \beta^{-N}} \cdot \beta
$$
so that
$$
\limsup _{n \rightarrow \infty} \sqrt[n]{c_{n}} \leq \beta
$$
by Theorem 3.20(b). Since (18) is true for every $\beta>\alpha$, we have
$$
\limsup _{n \rightarrow \infty} \sqrt[n]{c_{n}} \leq \alpha .
$$