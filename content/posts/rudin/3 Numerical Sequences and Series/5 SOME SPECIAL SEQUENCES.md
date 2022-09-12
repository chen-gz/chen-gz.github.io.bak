---
title: 5 SOME SPECIAL SEQUENCES
date: 2022-09-11
---



We shall now compute the limits of some sequences which occur frequently. The proofs will all be based on the following remark: If $0 \leq x_{n} \leq s_{n}$ for $n \geq N$, where $N$ is some fixed number, and if $s_{n} \rightarrow 0$, then $x_{n} \rightarrow 0$.

**3.20 Theorem**

(a) If $p>0$, then $\lim _{n \rightarrow \infty} \frac{1}{n^{p}}=0$.

(b) If $p>0$, then $\lim _{n \rightarrow \infty} \sqrt[n]{p}=1$.

(c) $\lim _{n \rightarrow \infty} \sqrt[n]{n}=1$.

(d) If $p>0$ and $\alpha$ is real, then $\lim _{n \rightarrow \infty} \frac{n^{\alpha}}{(1+p)^{n}}=0$.

(e) If $|x|<1$, then $\lim _{n \rightarrow \infty} x^{n}=0$.

**Proof**
(a) Take $n>(1 / \varepsilon)^{1 / p}$. (Note that the archimedean property of the real number system is used here.)
(b) If $p>1$, put $x_n=\sqrt[n]{p}-1$. Then $x_n>0$, and, by the binomial theorem,
$$
1+n x_n \leq\left(1+x_n\right)^n=p,
$$
so that
$$
0<x_n \leq \frac{p-1}{n} .
$$
Hence $x_n \rightarrow 0$. If $p=1,(b)$ is trivial, and if $0<p<1$, the result is obtained by taking reciprocals.
(c) Put $x_n=\sqrt[n]{n}-1$. Then $x_n \geq 0$, and, by the binomial theorem,
$$
n=\left(1+x_n\right)^n \geq \frac{n(n-1)}{2} x_n^2 .
$$
Hence
$$
0 \leq x_n \leq \sqrt{\frac{2}{n-1}} \quad(n \geq 2) .
$$
(d) Let $k$ be an integer such that $k>\alpha, k>0$. For $n>2 k$,
$$
(1+p)^n>\left(\begin{array}{l}
n \\
k
\end{array}\right) p^k=\frac{n(n-1) \cdots(n-k+1)}{k !} p^k>\frac{n^k p^k}{2^k k !} .
$$
Hence
$$
0<\frac{n^\alpha}{(1+p)^n}<\frac{2^k k !}{p^k} n^{\alpha-k} \quad(n>2 k) .
$$
Since $\alpha-k<0, n^{\alpha-k} \rightarrow 0$, by $(a)$.
(e) Take $\alpha=0$ in $(d)$.
