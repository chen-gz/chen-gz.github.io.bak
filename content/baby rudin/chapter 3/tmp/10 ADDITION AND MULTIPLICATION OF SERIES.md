---
title: ADDITION AND MULTIPLICATION OF SERIES
date: 2022-07-17
---

**3.47 Theorem** If $\Sigma a_{n}=A$, and $\Sigma b_{n}=B$, then $\Sigma\left(a_{n}+b_{n}\right)=A+B$, and $\Sigma c a_{n}=c A$, for any fixed $c$.
Proof Let
$$
A_{n}=\sum_{k=0}^{n} a_{k}, \quad B_{n}=\sum_{k=0}^{n} b_{k}
$$
Then
$$
A_{n}+B_{n}=\sum_{k=0}^{n}\left(a_{k}+b_{k}\right) \text {. }
$$
Since $\lim _{n \rightarrow \infty} A_{n}=A$ and $\lim _{n \rightarrow \infty} B_{n}=B$, we see that
$$
\lim _{n \rightarrow \infty}\left(A_{n}+B_{n}\right)=A+B
$$
The proof of the second assertion is even simpler.

Thus two convergent series may be added term by term, and the resulting series converges to the sum of the two series. The situation becomes more complicated when we consider multiplication of two series. To begin with, we have to define the product. This can be done in several ways; we shall consider the so-called "'Cauchy product."

**3.48 Definition** Given $\Sigma a_{n}$ and $\Sigma b_{n}$, we put
$$
c_{n}=\sum_{k=0}^{n} a_{k} b_{n-k} \quad(n=0,1,2, \ldots)
$$
and call $\Sigma c_{n}$ the product of the two given series.
This definition may be motivated as follows. If we take two power series $\Sigma a_{n} z^{n}$ and $\Sigma b_{n} z^{n}$, multiply them term by term, and collect terms containing the same power of $z$, we get
$$
\begin{aligned}
\sum_{n=0}^{\infty} a_{n} z^{n} \cdot \sum_{n=0}^{\infty} b_{n} z^{n} &=\left(a_{0}+a_{1} z+a_{2} z^{2}+\cdots\right)\left(b_{0}+b_{1} z+b_{2} z^{2}+\cdots\right) \\
&=a_{0} b_{0}+\left(a_{0} b_{1}+a_{1} b_{0}\right) z+\left(a_{0} b_{2}+a_{1} b_{1}+a_{2} b_{0}\right) z^{2}+\cdots \\
&=c_{0}+c_{1} z+c_{2} z^{2}+\cdots
\end{aligned}
$$
Setting $z=1$, we arrive at the above definition.

**3.49 Example** If
$$
A_{n}=\sum_{k=0}^{n} a_{k}, \quad B_{n}=\sum_{k=0}^{n} b_{k}, \quad C_{n}=\sum_{k=0}^{n} c_{k},
$$
and $A_{n} \rightarrow A, B_{n} \rightarrow B$, then it is not at all clear that $\left\{C_{n}\right\}$ will converge to $A B$, since we do not have $C_{n}=A_{n} B_{n}$. The dependence of $\left\{C_{n}\right\}$ on $\left\{A_{n}\right\}$ and $\left\{B_{n}\right\}$ is quite a complicated one (see the proof of Theorem 3.50). We shall now show that the product of two convergent series may actually diverge.
The series
$$
\sum_{n=0}^{\infty} \frac{(-1)^{n}}{\sqrt{n+1}}=1-\frac{1}{\sqrt{2}}+\frac{1}{\sqrt{3}}-\frac{1}{\sqrt{4}}+\cdots
$$
converges (Theorem 3.43). We form the product of this series with itself and obtain
$$
\begin{aligned}
\sum_{n=0}^{\infty} c_{n}=1-\left(\frac{1}{\sqrt{2}}+\frac{1}{\sqrt{2}}\right)+\left(\frac{1}{\sqrt{3}}+\frac{1}{\sqrt{2} \sqrt{2}}+\frac{1}{\sqrt{3}}\right) \\
&-\left(\frac{1}{\sqrt{4}}+\frac{1}{\sqrt{3} \sqrt{2}}+\frac{1}{\sqrt{2} \sqrt{3}}+\frac{1}{\sqrt{4}}\right)+\cdots,
\end{aligned}
$$
so that
$$
c_{n}=(-1)^{n} \sum_{k=0}^{n} \frac{1}{\sqrt{(n-k+1)(k+1)}} .
$$
Since
$$
(n-k+1)(k+1)=\left(\frac{n}{2}+1\right)^{2}-\left(\frac{n}{2}-k\right)^{2} \leq\left(\frac{n}{2}+1\right)^{2} .
$$
we have
$$
\left|c_{n}\right| \geq \sum_{k=0}^{n} \frac{2}{n+2}=\frac{2(n+1)}{n+2}
$$
so that the condition $c_{n} \rightarrow 0$, which is necessary for the convergence of $\Sigma c_{n}$, is not satisfied.

In view of the next theorem, due to Mertens, we note that we have here considered the product of two nonabsolutely convergent series.

**3.50 Theorem** Suppose
(a) $\sum_{n=0}^{\infty} a_{n}$ converges absolutely,
(b) $\sum_{n=0}^{\infty} a_{n}=A$
(c) $\sum_{n=0}^{\infty} b_{n}=B$
(d) $c_{n}=\sum_{k=0}^{n} a_{k} b_{n-k} \quad(n=0,1,2, \ldots)$
Then
$$
\sum_{n=0}^{\infty} c_{n}=A B .
$$
That is, the product of two convergent series converges, and to the right value, if at least one of the two series converges absolutely.
Proof Put
$$
A_{n}=\sum_{k=0}^{n} a_{k}, \quad B_{n}=\sum_{k=0}^{n} b_{k}, \quad C_{n}=\sum_{k=0}^{n} c_{k}, \quad \beta_{n}=B_{n}-B
$$
Then
$$
\begin{aligned}
C_{n} &=a_{0} b_{0}+\left(a_{0} b_{1}+a_{1} b_{0}\right)+\cdots+\left(a_{0} b_{n}+a_{1} b_{n-1}+\cdots+a_{n} b_{0}\right) \\
&=a_{0} B_{n}+a_{1} B_{n-1}+\cdots+a_{n} B_{0} \\
&=a_{0}\left(B+\beta_{n}\right)+a_{1}\left(B+\beta_{n-1}\right)+\cdots+a_{n}\left(B+\beta_{0}\right) \\
&=A_{n} B+a_{0} \beta_{n}+a_{1} \beta_{n-1}+\cdots+a_{n} \beta_{0}
\end{aligned}
$$
Put
$$
\gamma_{n}=a_{0} \beta_{n}+a_{1} \beta_{n-1}+\cdots+a_{n} \beta_{0} .
$$
We wish to show that $C_{n} \rightarrow A B$. Since $A_{n} B \rightarrow A B$, it suffices to show that
$$
\lim _{n \rightarrow \infty} \gamma_{n}=0
$$
Put
$$
\alpha=\sum_{n=0}^{\infty}\left|a_{n}\right|
$$
[It is here that we use (a).] Let $\varepsilon>0$ be given. By $(c), \beta_{n} \rightarrow 0$. Hence we can choose $N$ such that $\left|\beta_{n}\right| \leq \varepsilon$ for $n \geq N$, in which case
$$
\begin{aligned}
\left|\gamma_{n}\right| & \leq\left|\beta_{0} a_{n}+\cdots+\beta_{N} a_{n-N}\right|+\left|\beta_{N+1} a_{n-N-1}+\cdots+\beta_{n} a_{0}\right| \\
& \leq\left|\beta_{0} a_{n}+\cdots+\beta_{N} a_{n-N}\right|+\varepsilon \alpha .
\end{aligned}
$$
Keeping $N$ fixed, and letting $n \rightarrow \infty$, we get
$$
\limsup _{n \rightarrow \infty}\left|\gamma_{n}\right| \leq \varepsilon \alpha,
$$
since $a_{k} \rightarrow 0$ as $k \rightarrow \infty$. Since $\varepsilon$ is arbitrary, (21) follows.
Another question which may be asked is whether the series $\Sigma c_{n}$, if convergent, must have the sum $A B$. Abel showed that the answer is in the affirmative.

**3.51 Theorem** If the series $\Sigma a_{n}, \Sigma b_{n}, \Sigma c_{n}$ converge to $A, B, C$, and $c_{n}=a_{0} b_{n}+\cdots+a_{n} b_{0}$, then $C=A B$.

Here no assumption is made concerning absolute convergence. We shall give a simple proof (which depends on the continuity of power series) after Theorem 8.2.

