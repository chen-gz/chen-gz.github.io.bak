---
title: 1 CONVERGENT SEQUENCES
date: 2022-09-03
---

* youtube [part1](https://youtu.be/02vC8Y0U1rI) [part2](https://youtu.be/kydMB7-KWok) 
* bilibili [part1](https://www.bilibili.com/video/BV1514y1a7GH/)
[part2](https://www.bilibili.com/video/BV1oG4y1p7Wz/)
* note [pdf 1](https://github.com/chen-gz/bed2/blob/b590a02f3a9e146a3f1e04f18fd66732c27014ff/12%20CONVERGENT%20SEQUENCES%20part1_note.pdf)
[xopp 1](https://github.com/chen-gz/bed2/blob/b590a02f3a9e146a3f1e04f18fd66732c27014ff/12%20CONVERGENT%20SEQUENCES%20%20part1_note.xopp)
[pdf 2](https://github.com/chen-gz/bed2/blob/b590a02f3a9e146a3f1e04f18fd66732c27014ff/12%20CONVERGENT%20SEQUENCES%20%20part2_note.pdf)
[xopp 2](https://github.com/chen-gz/bed2/blob/b590a02f3a9e146a3f1e04f18fd66732c27014ff/12%20CONVERGENT%20SEQUENCES%20part2_note.xopp)

**3.1 Definition** A sequence $\left\{p_{n}\right\}$ in a metric space $X$ is said to converge if there is a point $p \in X$ with the following property: For every $\varepsilon>0$ there is an integer $N$ such that $n \geq N$ implies that $d\left(p_{n}, p\right)<\varepsilon$. (Here $d$ denotes the distance in $X$.)

In this case we also say that $\left\{p_{n}\right\}$ converges to $p$, or that $p$ is the limit of $\left\{p_{n}\right\}$ [see Theorem 3.2(b)], and we write $p_{n} \rightarrow p$, or

$$
\lim _{n \rightarrow \infty} p_{n}=p .
$$

If $\left\{p_{n}\right\}$ does not converge, it is said to diverge. 

It might be well to point out that our definition of "convergent sequence" depends not only on $\left\{p_{n}\right\}$ but also on $X$; for instance, the sequence $\{1 / n\}$ converges in $R^{1}$ (to 0 ), but fails to converge in the set of all positive real numbers [with $d(x, y)=|x-y|$ ]. In cases of possible ambiguity, we can be more precise and specify "convergent in $X$ " rather than "convergent."

We recall that the set of all points $p_{n}(n=1,2,3, \ldots)$ is the range of $\left\{p_{n}\right\}$. The range of a sequence may be a finite set, or it may be infinite. The sequence $\left\{p_{n}\right\}$ is said to be bounded if its range is bounded.

As examples, consider the following sequences of complex numbers (that is, $X=R^{2}$ ):

(a) If $s_{n}=1 / n$, then $\lim _{n \rightarrow \infty} s_{n}=0$; the range is infinite, and the sequence is bounded.

(b) If $s_{n}=n^{2}$, the sequence $\left\{s_{n}\right\}$ is unbounded, is divergent, and has infinite range.

(c) If $s_{n}=1+\left[(-1)^{n} / n\right]$, the sequence $\left\{s_{n}\right\}$ converges to 1 , is bounded, and has infinite range.

(d) If $s_{n}=i^{n}$, the sequence $\left\{s_{n}\right\}$ is divergent, is bounded, and has finite range.

(e) If $s_{n}=1(n=1,2,3, \ldots)$, then $\left\{s_{n}\right\}$ converges to 1 , is bounded, and has finite range.

We now summarize some important properties of convergent sequences in metric spaces.

**3.2 Theorem** Let $\left\{p_{n}\right\}$ be a sequence in a metric space $X$.

(a) $\left\{p_{n}\right\}$ converges to $p \in X$ if and only if every neighborhood of $p$ contains $p_{n}$ for all but finitely many $n$.

(b) If $p \in X, p^{\prime} \in X$, and if $\left\{p_{n}\right\}$ converges to $p$ and to $p^{\prime}$, then $p^{\prime}=p$.

(c) If $\left\{p_{n}\right\}$ converges, then $\left\{p_{n}\right\}$ is bounded.

(d) If $E \subset X$ and if $p$ is a limit point of $E$, then there is a sequence $\left\{p_{n}\right\}$ in $E$ such that $p=\lim _{n \rightarrow \infty} p_{n}$.

Proof (a) Suppose $p_{n} \rightarrow p$ and let $V$ be a neighborhood of $p$. For some $\varepsilon>0$, the conditions $d(q, p)<\varepsilon, q \in X$ imply $q \in V$. Corresponding to this $\varepsilon$, there exists $N$ such that $n \geq N$ implies $d\left(p_{n}, p\right)<\varepsilon$. Thus $n \geq N$ implies $p_{n} \in V$.

Conversely, suppose every neighborhood of $p$ contains all but finitely many of the $p_{n}$. Fix $\varepsilon>0$, and let $V$ be the set of all $q \in X$ such that $d(p, q)<\varepsilon$. By assumption, there exists $N$ (corresponding to this $V$ ) such that $p_{n} \in V$ if $n \geq N$. Thus $d\left(p_{n}, p\right)<\varepsilon$ if $n \geq N$; hence $p_{n} \rightarrow p$. (b) Let $\varepsilon>0$ be given. There exist integers $N, N^{\prime}$ such that

$$
\begin{aligned}
&n \geq N \quad \text { implies } \quad d\left(p_{n}, p\right)<\frac{\varepsilon}{2}, \\
&n \geq N^{\prime} \quad \text { implies } \quad d\left(p_{n}, p^{\prime}\right)<\frac{\varepsilon}{2} .
\end{aligned}
$$

Hence if $n \geq \max \left(N, N^{\prime}\right)$, we have

$$
d\left(p, p^{\prime}\right) \leq d\left(p, p_{n}\right)+d\left(p_{n}, p^{\prime}\right)<\varepsilon .
$$

Since $\varepsilon$ was arbitrary, we conclude that $d\left(p, p^{\prime}\right)=0$.

(c) Suppose $p_{n} \rightarrow p$. There is an integer $N$ such that $n>N$ implies $d\left(p_{n}, p\right)<1$. Put

$$
r=\max \left\{1, d\left(p_{1}, p\right), \ldots, d\left(p_{N}, p\right)\right\} .
$$

Then $d\left(p_{n}, p\right) \leq r$ for $n=1,2,3, \ldots$

(d) For each positive integer $n$, there is a point $p_{n} \in E$ such that $d\left(p_{n}, p\right)<1 / n$. Given $\varepsilon>0$, choose $N$ so that $N \varepsilon>1$. If $n>N$, it follows that $d\left(p_{n}, p\right)<\varepsilon$. Hence $p_{n} \rightarrow p$.

This completes the proof.

For sequences in $R^{k}$ we can study the relation between convergence, on the one hand, and the algebraic operations on the other. We first consider sequences of complex numbers.

**3.3 Theorem** Suppose $\left\{s_{n}\right\},\left\{t_{n}\right\}$ are complex sequences, and $\lim _{n \rightarrow \infty} s_{n}=s$, $\lim _{n \rightarrow \infty} t_{n}=t$. Then

(a) $\lim _{n \rightarrow \infty}\left(s_{n}+t_{n}\right)=s+t$

(b) $\lim _{n \rightarrow \infty} c s_{n}=c s, \lim _{n \rightarrow \infty}\left(c+s_{n}\right)=c+s$, for any number $c$;

(c) $\lim _{n \rightarrow \infty} s_{n} t_{n}=s t$

(d) $\lim _{n \rightarrow \infty} \frac{1}{s_{n}}=\frac{1}{s}$, provided $s_{n} \neq 0(n=1,2,3, \ldots)$, and $s \neq 0$

Proof

(a) Given $\varepsilon>0$, there exist integers $N_{1}, N_{2}$ such that

$$
\begin{aligned}
&n \geq N_{1} \text { implies }\left|s_{n}-s\right|<\frac{\varepsilon}{2}, \\
&n \geq N_{2} \text { implies }\left|t_{n}-t\right|<\frac{\varepsilon}{2} .
\end{aligned}
$$

If $N=\max \left(N_{1}, N_{2}\right)$, then $n \geq N$ implies

$$
\left|\left(s_{n}+t_{n}\right)-(s+t)\right| \leq\left|s_{n}-s\right|+\left|t_{n}-t\right|<\varepsilon .
$$

This proves (a). The proof of $(b)$ is trivial.

(c) We use the identity

$$
s_{n} t_{n}-s t=\left(s_{n}-s\right)\left(t_{n}-t\right)+s\left(t_{n}-t\right)+t\left(s_{n}-s\right) .
$$

Given $\varepsilon>0$, there are integers $N_{1}, N_{2}$ such that

$$
\begin{array}{lll}
n \geq N_{1} & \text { implies } & \left|s_{n}-s\right|<\sqrt{\varepsilon} \\
n \geq N_{2} & \text { implies } & \left|t_{n}-t\right|<\sqrt{\varepsilon}
\end{array}
$$

If we take $N=\max \left(N_{1}, N_{2}\right), n \geq N$ implies

$$
\left|\left(s_{n}-s\right)\left(t_{n}-t\right)\right|<\varepsilon,
$$

so that

$$
\lim _{n \rightarrow \infty}\left(s_{n}-s\right)\left(t_{n}-t\right)=0 .
$$

We now apply $(a)$ and $(b)$ to (1), and conclude that

$$
\lim _{n \rightarrow \infty}\left(s_{n} t_{n}-s t\right)=0 .
$$

(d) Choosing $m$ such that $\left|s_{n}-s\right|<\frac{1}{2}|s|$ if $n \geq m$, we see that

$$
\left|s_{n}\right|>\frac{1}{2}|s| \quad(n \geq m) .
$$

Given $\varepsilon>0$, there is an integer $N>m$ such that $n \geq N$ implies

$$
\left|s_{n}-s\right|<\frac{1}{2}|s|^{2} \varepsilon .
$$

Hence, for $n \geq N$,

$$
\left|\frac{1}{s_{n}}-\frac{1}{s}\right|=\left|\frac{s_{n}-s}{s_{n} s}\right|<\frac{2}{|s|^{2}}\left|s_{n}-s\right|<\varepsilon .
$$

**3.4 Theorem**

(a) Suppose $\mathbf{x}_{n} \in R^{k}(n=1,2,3, \ldots)$ and

$$
\mathbf{x}_{n}=\left(\alpha_{1, n}, \ldots, \alpha_{k, n}\right) .
$$

Then $\left\{\mathbf{x}_{n}\right\}$ converges to $\mathbf{x}=\left(\alpha_{1}, \ldots, \alpha_{k}\right)$ if and only if

$$
\lim _{n \rightarrow \infty} \alpha_{j, n}=\alpha_{j} \quad(1 \leq j \leq k) .
$$

(b) Suppose $\left\{\mathbf{x}_{n}\right\},\left\{\mathbf{y}_{n}\right\}$ are sequences in $R^{k},\left\{\beta_{n}\right\}$ is a sequence of real numbers, and $\mathbf{x}_{n} \rightarrow \mathbf{x}, \mathbf{y}_{n} \rightarrow \mathbf{y}, \beta_{n} \rightarrow \beta$. Then

$$
\lim _{n \rightarrow \infty}\left(\mathbf{x}_{n}+\mathbf{y}_{n}\right)=\mathbf{x}+\mathbf{y}, \quad \lim _{n \rightarrow \infty} \mathbf{x}_{n} \cdot \mathbf{y}_{n}=\mathbf{x} \cdot \mathbf{y}, \quad \lim _{n \rightarrow \infty} \beta_{n} \mathbf{x}_{n}=\beta \mathbf{x} .
$$

\section{Proof}

(a) If $\mathbf{x}_{n} \rightarrow \mathbf{x}$, the inequalities

$$
\left|\alpha_{j, n}-\alpha_{j}\right| \leq\left|\mathbf{x}_{n}-\mathbf{x}\right|,
$$

which follow immediately from the definition of the norm in $R^{k}$, show that (2) holds.

Conversely, if (2) holds, then to each $\varepsilon>0$ there corresponds an integer $N$ such that $n \geq N$ implies

$$
\left|\alpha_{j, n}-\alpha_{j}\right|<\frac{\varepsilon}{\sqrt{k}} \quad(1 \leq j \leq k) .
$$

Hence $n \geq N$ implies

$$
\left|\mathbf{x}_{n}-\mathbf{x}\right|=\left\{\sum_{j=1}^{k}\left|\alpha_{j, n}-\alpha_{j}\right|^{2}\right\}^{1 / 2}<\varepsilon
$$

so that $\mathbf{x}_{n} \rightarrow \mathbf{x}$. This proves $(a)$.

Part $(b)$ follows from $(a)$ and Theorem 3.3.
