---
title: SUMMATION BY PARTS
date: 2022-07-17
---

**3.41 Theorem** Given two sequences $\left\{a_{n}\right\},\left\{b_{n}\right\}$, put
$$
A_{n}=\sum_{k=0}^{n} a_{k}
$$
if $n \geq 0$; put $A_{-1}=0$. Then, if $0 \leq p \leq q$, we have
$$
\sum_{n=p}^{q} a_{n} b_{n}=\sum_{n=p}^{q-1} A_{n}\left(b_{n}-b_{n+1}\right)+A_{q} b_{q}-A_{p-1} b_{p}
$$
Proof
$$
\sum_{n=p}^{q} a_{n} b_{n}=\sum_{n=p}^{q}\left(A_{n}-A_{n-1}\right) b_{n}=\sum_{n=p}^{q} A_{n} b_{n}-\sum_{n=p-1}^{q-1} A_{n} b_{n+1},
$$
and the last expression on the right is clearly equal to the right side of (20).

Formula (20), the so-called "partial summation formula," is useful in the investigation of series of the form $\Sigma a_{n} b_{n}$, particularly when $\left\{b_{n}\right\}$ is monotonic. We shall now give applications.

**3.42 Theorem** Suppose
(a) the partial sums $A_{n}$ of $\Sigma a_{n}$ form a bounded sequence;
(b) $b_{0} \geq b_{1} \geq b_{2} \geq \cdots$;
(c) $\lim _{n \rightarrow \infty} b_{n}=0$.
Then $\Sigma a_{n} b_{n}$ converges.

Proof Choose $M$ such that $\left|A_{n}\right| \leq M$ for all $n$. Given $\varepsilon>0$, there is an integer $N$ such that $b_{N} \leq(\varepsilon / 2 M)$. For $N \leq p \leq q$, we have
$$
\begin{aligned}
\left|\sum_{n=p}^{q} a_{n} b_{n}\right| &=\left|\sum_{n=p}^{q-1} A_{n}\left(b_{n}-b_{n+1}\right)+A_{q} b_{q}-A_{p-1} b_{p}\right| \\
& \leq M\left|\sum_{n=p}^{q-1}\left(b_{n}-b_{n+1}\right)+b_{q}+b_{p}\right| \\
&=2 M b_{p} \leq 2 M b_{N} \leq \varepsilon .
\end{aligned}
$$
Convergence now follows from the Cauchy criterion. We note that the first inequality in the above chain depends of course on the fact that $b_{n}-b_{n+1} \geq 0$.

**3.43 Theorem** Suppose
(a) $\left|c_{1}\right| \geq\left|c_{2}\right| \geq\left|c_{3}\right| \geq \cdots$
(b) $c_{2 m-1} \geq 0, c_{2 m} \leq 0 \quad(m=1,2,3, \ldots)$;
(c) $\lim _{n \rightarrow \infty} c_{n}=0$.
Then $\Sigma c_{n}$ converges.
Series for which $(b)$ holds are called "alternating series"; the theorem was known to Leibnitz.
Proof Apply Theorem 3.42, with $a_{n}=(-1)^{n+1}, b_{n}=\left|c_{n}\right|$.