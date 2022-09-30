---
title: 3 CAUCHY SEQUENCES
date: 2022-09-06
---

**3.8 Definition** A sequence $\left\{p_{n}\right\}$ in a metric space $X$ is said to be a Cauchy sequence if for every $\varepsilon>0$ there is an integer $N$ such that $d\left(p_{n}, p_{m}\right)<\varepsilon$ if $n \geq N$ and $m \geq N$.

In our discussion of Cauchy sequences, as well as in other situations which will arise later, the following geometric concept will be useful.

**3.9 Definition** Let $E$ be a nonempty subset of a metric space $X$, and let $S$ be the set of all real numbers of the form $d(p, q)$, with $p \in E$ and $q \in E$. The sup of $S$ is called the diameter of $E$. If $\left\{p_{n}\right\}$ is a sequence in $X$ and if $E_{N}$ consists of the points $p_{N}, p_{N+1}, p_{N+2}, \ldots$, it is clear from the two preceding definitions that $\left\{p_{n}\right\}$ is a Cauchy sequence if and only if

$$
\lim _{N \rightarrow \infty} \operatorname{diam} E_{N}=0 .
$$

**3.10 Theorem**

(a) If $\bar{E}$ is the closure of a set $E$ in a metric space $X$, then

$$
\operatorname{diam} \bar{E}=\operatorname{diam} E .
$$

(b) If $K_{n}$ is a sequence of compact sets in $X$ such that $K_{n} \supset K_{n+1}$ $(n=1,2,3, \ldots)$ and if

$$
\lim _{n \rightarrow \infty} \operatorname{diam} K_{n}=0,
$$

then $\bigcap_{1}^{\infty} K_{n}$ consists of exactly one point.

Proof

(a) Since $E \subset \bar{E}$, it is clear that

$$
\operatorname{diam} E \leq \operatorname{diam} \bar{E} .
$$

Fix $\varepsilon>0$, and choose $p \in \bar{E}, q \in \bar{E}$. By the definition of $\bar{E}$, there are points $p^{\prime}, q^{\prime}$, in $E$ such that $d\left(p, p^{\prime}\right)<\varepsilon, d\left(q, q^{\prence

$$
\begin{aligned}
d(p, q) & \leq d\left(p, p^{\prime}\right)+d\left(p^{\prime} q^{\prime}\right)+d\left(q^{\prime}, q\right) \\
&<2 \varepsilon+d\left(p^{\prime}, q^{\prime}\right) \leq 2 \varepsilon+\operatorname{diam} E
\end{aligned}
$$

It follows that

$$
\operatorname{diam} \bar{E} \leq 2 \varepsilon+\operatorname{diam} E,
$$

and since $\varepsilon$ was arbitrary, $(a)$ is proved.

(b) Put $K=\bigcap_{1}^{\infty} K_{n}$. By Theorem $2.36, K$ is not empty. If $K$ contains more than one point, then diam $K>0$. But for each $n, K_{n} \supset K$, so that $\operatorname{diam} K_{n} \geq \operatorname{diam} K$. This contradicts the assumption that diam $K_{n} \rightarrow 0$.

**3.11 Theorem**

(a) In any metric space $X$, every convergent sequence is a Cauchy sequence.

(b) If $X$ is a compact metric space and if $\left\{p_{n}\right\}$ is a Cauchy sequence in $X$, then $\left\{p_{n}\right\}$ converges to some point of $X$.

(c) In $R^{k}$, every Cauchy sequence converges.

Note: The difference between the definition of convergence and the definition of a Cauchy sequence is that the limit is explicitly involved in the former, but not in the latter. Thus Theorem 3.11(b) may enable us to decide whether or not a given sequence converges without knowledge of the limit to which it may converge.

The fact (contained in Theorem 3.11) that a sequence converges in $R^{k}$ if and only if it is a Cauchy sequence is usually called the Cauchy criterion for convergence.

**Proof**

(a) If $p_{n} \rightarrow p$ and if $\varepsilon>0$, there is an integer $N$ such that $d\left(p, p_{n}\right)<\varepsilon$ for all $n \geq N$. Hence

$$
d\left(p_{n}, p_{m}\right) \leq d\left(p_{n}, p\right)+d\left(p, p_{m}\right)<2 \varepsilon
$$

as soon as $n \geq N$ and $m \geq N$. Thus $\left\{p_{n}\right\}$ is a Cauchy sequence.

(b) Let $\left\{p_{n}\right\}$ be a Cauchy sequence in the compact space $X$. For $N=1,2,3, \ldots$, let $E_{N}$ be the set consisting of $p_{N}, p_{N+1}, p_{N+2}, \ldots$ Then

$$
\lim _{N \rightarrow \infty} \operatorname{diam} \bar{E}_{N}=0,
$$

by Definition $3.9$ and Theorem 3.10 $a$. Being a closed subset of the compact space $X$, each $\bar{E}_{N}$ is compact (Theorem 2.35). Also $E_{N} \supset E_{N+1}$, so that $\bar{E}_{N} \supset \bar{E}_{N+1}$.

Theorem $3.10(b)$ shows now that there is a unique $p \in X$ which lies in every $\bar{E}_{N}$.

Let $\varepsilon>0$ be given. By (3) there is an integer $N_{0}$ such that $\operatorname{diam} \bar{E}_{N}<\varepsilon$ if $N \geq N_{0}$. Since $p \in \bar{E}_{N}$, it follows that $d(p, q)<\varepsilon$ for every $q \in \bar{E}_{N}$, hence for every $q \in E_{N}$. In other words, $d\left(p, p_{n}\right)<\varepsilon$ if $n \geq N_{0}$. This says precisely that $p_{n} \rightarrow p$.

(c) Let $\left\{\mathbf{x}_{n}\right\}$ be a Cauchy sequence in $R^{k}$. Define $E_{N}$ as in (b), with $\mathbf{x}_{i}$ in place of $p_{i}$. For some $N$, $\operatorname{diam} E_{N}<1$. The range of $\left\{\mathbf{x}_{n}\right\}$ is the union of $E_{N}$ and the finite set $\left\{\mathbf{x}_{1}, \ldots, \mathbf{x}_{N-1}\right\}$. Hence $\left\{\mathbf{x}_{n}\right\}$ is bounded. Since every bounded subset of $R^{k}$ has compact closure in $R^{k}$ (Theorem 2.41), (c) follows from $(b)$.

**3.12 Definition** A metric space in which every Cauchy sequence converges is said to be complete.

Thus Theorem $3.11$ says that all compact metric spaces and all Euclidean spaces are complete. Theorem $3.11$ implies also that every closed subset $E$ of a complete metric space $X$ is complete. (Every Cauchy sequence in $E$ is a Cauchy sequence in $X$, hence it converges to some $p \in X$, and actually $p \in E$ since $E$ is closed.) An example of a metric space which is not complete is the space of all rational numbers, with $d(x, y)=|x-y|$. 

Theorem 3.2(c) and example $(d)$ of Definition 3.1 show that convergent sequences are bounded, but that bounded sequences in $R^{k}$ need not converge. However, there is one important case in which convergence is equivalent to boundedness; this happens for monotonic sequences in $R^{1}$.

**3.13 Definition** A sequence $\left\{s_{n}\right\}$ of real numbers is said to be

(a) monotonically increasing if $s_{n} \leq s_{n+1}(n=1,2,3, \ldots)$;

(b) monotonically decreasing if $s_{n} \geq s_{n+1}(n=1,2,3, \ldots)$.

The class of monotonic sequences consists of the increasing and the decreasing sequences.

**3.14 Theorem** Suppose $\left\{s_{n}\right\}$ is monotonic. Then $\left\{s_{n}\right\}$ converges if and only if it is bounded.

**Proof** Suppose $s_{n} \leq s_{n+1}$ (the proof is analogous in the other case). Let $E$ be the range of $\left\{s_{n}\right\}$. If $\left\{s_{n}\right\}$ is bounded, let $s$ be the least upper bound of $E$. Then

$$
s_{n} \leq s \quad(n=1,2,3, \ldots) .
$$

For every $\varepsilon>0$, there is an integer $N$ such that

$$
s-\varepsilon<s_{N} \leq s,
$$

for otherwise $s-\varepsilon$ would be an upper bound of $E$. Since $\left\{s_{n}\right\}$ increases, $n \geq N$ therefore implies

$$
s-\varepsilon<s_{n} \leq s,
$$

which shows that $\left\{s_{n}\right\}$ converges (to $s$ ).

The converse follows from Theorem 3.2(c).

