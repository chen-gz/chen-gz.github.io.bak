---
title: 4 UPPER AND LOWER LIMITS
date: 2022-09-06
---

**3.15 Definition** Let $\left\{s_{n}\right\}$ be a sequence of real numbers with the following property: For every real $M$ there is an integer $N$ such that $n \geq N$ implies $s_{n} \geq M$. We then write
$$
s_{n} \rightarrow+\infty .
$$

Similarly, if for every real $M$ there is an integer $N$ such that $n \geq N$ implies $s_{n} \leq M$, we write

$$
s_{n} \rightarrow-\infty
$$

It should be noted that we now use the symbol $\rightarrow$ (introduced in Definition 3.1) for certain types of divergent sequences, as well as for convergent sequences, but that the definitions of convergence and of limit, given in Definition 3.1, are in no way changed.

**3.16 Definition** Let $\left\{s_{n}\right\}$ be a sequence of real numbers. Let $E$ be the set of numbers $x$ (in the extended real number system) such that $s_{n_{k}} \rightarrow x$ for some subsequence $\left\{s_{n_{k}}\right\}$. This set $E$ contains all subsequential limits as defined in Definition 3.5, plus possibly the numbers $+\infty,-\infty$.

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

**3.17 Theorem** Let $\left\{s_{n}\right\}$ be a sequence of real numbers. Let $E$ and $s^{*}$ have the same meaning as in Definition 3.16. Then $s^{*}$ has the following two properties:

(a) $s^{*} \in E$.

(b) If $x>s^{*}$, there is an integer $N$ such that $n \geq N$ implies $s_{n}<x$.

Moreover, $s^{*}$ is the only number with the properties $(a)$ and $(b)$.

Of course, an analogous result is true for $s_{*}$.

**Proof**

(a) If $s^{*}=+\infty$, then $E$ is not bounded above; hence $\left\{s_{n}\right\}$ is not bounded above, and there is a subsequence $\left\{s_{n_{k}}\right\}$ such that $s_{n_{k}} \rightarrow+\infty$.

If $s^{*}$ is real, then $E$ is bounded above, and at least one subsequential limit exists, so that (a) follows from Theorems $3.7$ and 2.28.

If $s^{*}=-\infty$, then $E$ contains only one element, namely $-\infty$, and there is no subsequential limit. Hence, for any real $M, s_{n}>M$ for at most a finite number of values of $n$, so that $s_{n} \rightarrow-\infty$.

This establishes $(a)$ in all cases.

(b) Suppose there is a number $x>s^{*}$ such that $s_{n} \geq x$ for infinitely many values of $n$. In that case, there is a number $y \in E$ such that $y \geq x>s^{*}$, contradicting the definition of $s^{*}$.

Thus $s^{*}$ satisfies $(a)$ and $(b)$.

To show the uniqueness, suppose there are two numbers, $p$ and $q$, which satisfy $(a)$ and $(b)$, and suppose $p<q$. Choose $x$ such that $p<x<q$. Since $p$ satisfies $(b)$, we have $s_{n}<x$ for $n \geq N$. But then $q$ cannot satisfy $(a)$. 

**3.18 Examples**

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

**3.19 Theorem** If $s_{n} \leq t_{n}$ for $n \geq N$, where $N$ is fixed, then
$$
\begin{aligned}
\liminf _{n \rightarrow \infty} s_{n} & \leq \underset{n \rightarrow \infty}{\lim \inf } \  t_{n}, \\
\limsup _{n \rightarrow \infty} s_{n} & \leq \limsup _{n \rightarrow \infty} t_{n} .
\end{aligned}
$$
