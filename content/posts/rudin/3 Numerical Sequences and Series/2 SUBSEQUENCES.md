---
title: 2 SUBSEQUENCES
date: 2022-09-04
---

3.5 Definition Given a sequence $\left\{p_{n}\right\}$, consider a sequence $\left\{n_{k}\right\}$ of positive integers, such that $n_{1}<n_{2}<n_{3}<\cdots$. Then the sequence $\left\{p_{n i}\right\}$ is called a subsequence of $\left\{p_{n}\right\}$. If $\left\{p_{n_{i}}\right\}$ converges, its limit is called a subsequential limit of $\left\{p_{n}\right\}$.

It is clear that $\left\{p_{n}\right\}$ converges to $p$ if and only if every subsequence of $\left\{p_{n}\right\}$ converges to $p$. We leave the details of the proof to the reader.

\subsection{Theorem}

(a) If $\left\{p_{n}\right\}$ is a sequence in a compact metric space $X$, then some subsequence of $\left\{p_{n}\right\}$ converges to a point of $X$.

(b) Every bounded sequence in $R^{k}$ contains a convergent subsequence. 

\section{Proof}

(a) Let $E$ be the range of $\left\{p_{n}\right\}$. If $E$ is finite then there is a $p \in E$ and a sequence $\left\{n_{1}\right\}$ with $n_{1}<n_{2}<n_{3}<\cdots$, such that

$$
p_{n_{1}}=p_{n_{2}}=\cdots=p .
$$

The subsequence $\left\{p_{n_{1}}\right\}$ so obtained converges evidently to $p$.

If $E$ is infinite, Theorem $2.37$ shows that $E$ has a limit point $p \in X$. Choose $n_{1}$ so that $d\left(p, p_{n_{1}}\right)<1$. Having chosen $n_{1}, \ldots, n_{i-1}$, we see from Theorem $2.20$ that there is an integer $n_{i}>n_{i-1}$ such that $d\left(p, p_{n_{1}}\right)<1 / i$. Then $\left\{p_{n}\right\}$ converges to $p$.

(b) This follows from (a), since Theorem $2.41$ implies that every bounded subset of $R^{k}$ lies in a compact subset of $R^{k}$.

\subsection{Theorem The subsequential limits of a sequence $\left\{p_{n}\right\}$ in a metric space $X$ form a closed subset of $X$.}

Proof Let $E^{*}$ be the set of all subsequential limits of $\left\{p_{n}\right\}$ and let $q$ be a limit point of $E^{*}$. We have to show that $q \in E^{*}$.

Choose $n_{1}$ so that $p_{n_{1}} \neq q$. (If no such $n_{1}$ exists, then $E^{*}$ has only one point, and there is nothing to prove.) Put $\delta=d\left(q, p_{n_{1}}\right)$. Suppose $n_{1}, \ldots, n_{i-1}$ are chosen. Since $q$ is a limit point of $E^{*}$, there is an $x \in E^{*}$ with $d(x, q)<2^{-1} \delta$. Since $x \in E^{*}$, there is an $n_{i}>n_{i-1}$ such that $d\left(x, p_{n_{i}}\right)<2^{-i} \delta$. Thus

$$
d\left(q, p_{n i}\right) \leq 2^{1-1} \delta
$$

for $i=1,2,3, \ldots$. This says that $\left\{p_{n}\right\}$ converges to $q$. Hence $q \in E^{*}$.

\section{CAUCHY SEQUENCES}

3.8 Definition A sequence $\left\{p_{n}\right\}$ in a metric space $X$ is said to be a Cauchy sequence if for every $\varepsilon>0$ there is an integer $N$ such that $d\left(p_{n}, p_{m}\right)<\varepsilon$ if $n \geq N$ and $m \geq N$.

In our discussion of Cauchy sequences, as well as in other situations which will arise later, the following geometric concept will be useful.

3.9 Definition Let $E$ be a nonempty subset of a metric space $X$, and let $S$ be the set of all real numbers of the form $d(p, q)$, with $p \in E$ and $q \in E$. The sup of $S$ is called the diameter of $E$. If $\left\{p_{n}\right\}$ is a sequence in $X$ and if $E_{N}$ consists of the points $p_{N}, p_{N+1}, p_{N+2}, \ldots$, it is clear from the two preceding definitions that $\left\{p_{n}\right\}$ is a Cauchy sequence if and only if

$$
\lim _{N \rightarrow \infty} \operatorname{diam} E_{N}=0 .
$$

\subsection{Theorem}

(a) If $\bar{E}$ is the closure of a set $E$ in a metric space $X$, then

$$
\operatorname{diam} \bar{E}=\operatorname{diam} E .
$$

(b) If $K_{n}$ is a sequence of compact sets in $X$ such that $K_{n} \supset K_{n+1}$ $(n=1,2,3, \ldots)$ and if

$$
\lim _{n \rightarrow \infty} \operatorname{diam} K_{n}=0,
$$

then $\bigcap_{1}^{\infty} K_{n}$ consists of exactly one point.

\section{Proof}

(a) Since $E \subset \bar{E}$, it is clear that

$$
\operatorname{diam} E \leq \operatorname{diam} \bar{E} .
$$

Fix $\varepsilon>0$, and choose $p \in \bar{E}, q \in \bar{E}$. By the definition of $\bar{E}$, there are points $p^{\prime}, q^{\prime}$, in $E$ such that $d\left(p, p^{\prime}\right)<\varepsilon, d\left(q, q^{\prime}\right)<\varepsilon$. Hence

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

\subsection{Theorem}

(a) In any metric space $X$, every convergent sequence is a Cauchy sequence.

(b) If $X$ is a compact metric space and if $\left\{p_{n}\right\}$ is a Cauchy sequence in $X$, then $\left\{p_{n}\right\}$ converges to some point of $X$.

(c) In $R^{k}$, every Cauchy sequence converges.

Note: The difference between the definition of convergence and the definition of a Cauchy sequence is that the limit is explicitly involved in the former, but not in the latter. Thus Theorem 3.11(b) may enable us to decide whether or not a given sequence converges without knowledge of the limit to which it may converge.

The fact (contained in Theorem 3.11) that a sequence converges in $R^{k}$ if and only if it is a Cauchy sequence is usually called the Cauchy criterion for convergence.

\section{Proof}

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

3.12 Definition A metric space in which every Cauchy sequence converges is said to be complete.

Thus Theorem $3.11$ says that all compact metric spaces and all Euclidean spaces are complete. Theorem $3.11$ implies also that every closed subset $E$ of a complete metric space $X$ is complete. (Every Cauchy sequence in $E$ is a Cauchy sequence in $X$, hence it converges to some $p \in X$, and actually $p \in E$ since $E$ is closed.) An example of a metric space which is not complete is the space of all rational numbers, with $d(x, y)=|x-y|$. Theorem 3.2(c) and example $(d)$ of Definition 3.1 show that convergent sequences are bounded, but that bounded sequences in $R^{k}$ need not converge. However, there is one important case in which convergence is equivalent to boundedness; this happens for monotonic sequences in $R^{1}$.

3.13 Definition A sequence $\left\{s_{n}\right\}$ of real numbers is said to be

(a) monotonically increasing if $s_{n} \leq s_{n+1}(n=1,2,3, \ldots)$;

(b) monotonically decreasing if $s_{n} \geq s_{n+1}(n=1,2,3, \ldots)$.

The class of monotonic sequences consists of the increasing and the decreasing sequences.

3.14 Theorem Suppose $\left\{s_{n}\right\}$ is monotonic. Then $\left\{s_{n}\right\}$ converges if and only if it is bounded.

Proof Suppose $s_{n} \leq s_{n+1}$ (the proof is analogous in the other case). Let $E$ be the range of $\left\{s_{n}\right\}$. If $\left\{s_{n}\right\}$ is bounded, let $s$ be the least upper bound of $E$. Then

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

\section{UPPER AND LOWER LIMITS}

3.15 Definition Let $\left\{s_{n}\right\}$ be a sequence of real numbers with the following property: For every real $M$ there is an integer $N$ such that $n \geq N$ implies $s_{n} \geq M$. We then write

$$
s_{n} \rightarrow+\infty .
$$

Similarly, if for every real $M$ there is an integer $N$ such that $n \geq N$ implies $s_{n} \leq M$, we write

$$
s_{n} \rightarrow-\infty
$$

It should be noted that we now use the symbol $\rightarrow$ (introduced in Definition 3.1) for certain types of divergent sequences, as well as for convergent sequences, but that the definitions of convergence and of limit, given in Definition 3.1, are in no way changed.

3.16 Definition Let $\left\{s_{n}\right\}$ be a sequence of real numbers. Let $E$ be the set of numbers $x$ (in the extended real number system) such that $s_{n_{k}} \rightarrow x$ for some subsequence $\left\{s_{n_{k}}\right\}$. This set $E$ contains all subsequential limits as defined in Definition 3.5, plus possibly the numbers $+\infty,-\infty$.

We now recall Definitions $1.8$ and $1.23$ and put

$$
\begin{gathered}
s^{*}=\sup E, \\
s_{*}=\inf E .
\end{gathered}
$$

The numbers $s^{*}, s_{*}$ are called the upper and lower limits of $\left\{s_{n}\right\}$; we use the notation

$$
\limsup _{n \rightarrow \infty} s_{n}=s^{*}, \quad \liminf _{n \rightarrow \infty} s_{n}=s_{*} .
$$

3.17 Theorem Let $\left\{s_{n}\right\}$ be a sequence of real numbers. Let $E$ and $s^{*}$ have the same meaning as in Definition 3.16. Then $s^{*}$ has the following two properties:

(a) $s^{*} \in E$.

(b) If $x>s^{*}$, there is an integer $N$ such that $n \geq N$ implies $s_{n}<x$.

Moreover, $s^{*}$ is the only number with the properties $(a)$ and $(b)$.

Of course, an analogous result is true for $s_{*}$.

Proof

(a) If $s^{*}=+\infty$, then $E$ is not bounded above; hence $\left\{s_{n}\right\}$ is not bounded above, and there is a subsequence $\left\{s_{n_{k}}\right\}$ such that $s_{n_{k}} \rightarrow+\infty$.

If $s^{*}$ is real, then $E$ is bounded above, and at least one subsequential limit exists, so that (a) follows from Theorems $3.7$ and 2.28.

If $s^{*}=-\infty$, then $E$ contains only one element, namely $-\infty$, and there is no subsequential limit. Hence, for any real $M, s_{n}>M$ for at most a finite number of values of $n$, so that $s_{n} \rightarrow-\infty$.

This establishes $(a)$ in all cases.

(b) Suppose there is a number $x>s^{*}$ such that $s_{n} \geq x$ for infinitely many values of $n$. In that case, there is a number $y \in E$ such that $y \geq x>s^{*}$, contradicting the definition of $s^{*}$.

Thus $s^{*}$ satisfies $(a)$ and $(b)$.

To show the uniqueness, suppose there are two numbers, $p$ and $q$, which satisfy $(a)$ and $(b)$, and suppose $p<q$. Choose $x$ such that $p<x<q$. Since $p$ satisfies $(b)$, we have $s_{n}<x$ for $n \geq N$. But then $q$ cannot satisfy $(a)$. 

\subsection{Examples}

(a) Let $\left\{s_{n}\right\}$ be a sequence containing all rationals. Then every real number is a subsequential limit, and

$$
\limsup _{n \rightarrow \infty} s_{n}=+\infty, \quad \liminf _{n \rightarrow \infty} s_{n}=-\infty .
$$

(b) Let $s_{n}=\left(-1^{n}\right) /[1+(1 / n)]$. Then

$$
\limsup _{n \rightarrow \infty} s_{n}=1, \quad \liminf _{n \rightarrow \infty} s_{n}=-1 .
$$

(c) For a real-valued sequence $\left\{s_{n}\right\}, \lim _{n \rightarrow \infty} s_{n}=s$ if and only if

$$
\limsup _{n \rightarrow \infty} s_{n}=\liminf _{n \rightarrow \infty} s_{n}=s .
$$

We close this section with a theorem which is useful, and whose proof is quite trivial:

3.19 Theorem If $s_{n} \leq t_{n}$ for $n \geq N$, where $N$ is fixed, then

$$
\begin{aligned}
\liminf _{n \rightarrow \infty} s_{n} & \leq \underset{n \rightarrow \infty}{\lim \inf } t_{n}, \\
\limsup _{n \rightarrow \infty} s_{n} & \leq \limsup _{n \rightarrow \infty} t_{n} .
\end{aligned}
$$

\section{SOME SPECIAL SEQUENCES}

We shall now compute the limits of some sequences which occur frequently. The proofs will all be based on the following remark: If $0 \leq x_{n} \leq s_{n}$ for $n \geq N$, where $N$ is some fixed number, and if $s_{n} \rightarrow 0$, then $x_{n} \rightarrow 0$.

\subsection{Theorem}

(a) If $p>0$, then $\lim _{n \rightarrow \infty} \frac{1}{n^{p}}=0$.

(b) If $p>0$, then $\lim _{n \rightarrow \infty} \sqrt[n]{p}=1$.

(c) $\lim _{n \rightarrow \infty} \sqrt[n]{n}=1$.

(d) If $p>0$ and $\alpha$ is real, then $\lim _{n \rightarrow \infty} \frac{n^{\alpha}}{(1+p)^{n}}=0$.

(e) If $|x|<1$, then $\lim _{n \rightarrow \infty} x^{n}=0$.