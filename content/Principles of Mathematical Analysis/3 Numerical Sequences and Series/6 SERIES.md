---
title: 6 SERIES
date: 2022-07-16
---

In the remainder of this chapter, all sequences and series under consideration will be complex-valued, unless the contrary is explicitly stated. Extensions of some of the theorems which follow, to series with terms in $R^{k}$, are mentioned in Exercise $15 .$

**3.21 Definition** Given a sequence $\left\{a_{n}\right\}$, we use the notation
$$
\sum_{n=p}^{q} a_{n} \quad(p \leq q)
$$
to denote the sum $a_{p}+a_{p+1}+\cdots+a_{q}$. With $\left\{a_{n}\right\}$ we associate a sequence $\left\{s_{n}\right\}$, where
$$
s_{n}=\sum_{k=1}^{n} a_{k} .
$$
For $\left\{s_{n}\right\}$ we also use the symbolic expression
or, more concisely,
$$
a_{1}+a_{2}+a_{3}+\cdots
$$
(4)
$$
\sum_{n=1}^{\infty} a_{n}
$$
The symbol (4) we call an infinite series, or just a series. The numbers $s_{n}$ are called the partial sums of the series. If $\left\{s_{n}\right\}$ converges to $s$, we say that the series converges, and write
$$
\sum_{n=1}^{\infty} a_{n}=s .
$$
The number $s$ is called the sum of the series; but it should be clearly understood that $s$ is the limit of a sequence of sums, and is not obtained simply by addition.
If $\left\{s_{n}\right\}$ diverges, the series is said to diverge.
Sometimes, for convenience of notation, we shall consider series of the form
$$
\sum_{n=0}^{\infty} a_{n} .
$$
And frequently, when there is no possible ambiguity, or when the distinction is immaterial, we shall simply write $\Sigma a_{n}$ in place of (4) or (5).

It is clear that every theorem about sequences can be stated in terms of series (putting $a_{1}=s_{1}$, and $a_{n}=s_{n}-s_{n-1}$ for $n>1$ ), and vice versa. But it is nevertheless useful to consider both concepts.

The Cauchy criterion (Theorem 3.11) can be restated in the following form:

**3.22 Theorem** $\Sigma a_{n}$ converges if and only if for every $\varepsilon>0$ there is an integer $N$ such that
(6)
$$
\left|\sum_{k=n}^{m} a_{k}\right| \leq \varepsilon
$$
if $m \geq n \geq N$.
In particular, by taking $m=n$, (6) becomes
$$
\left|a_{n}\right| \leq \varepsilon \quad(n \geq N) \text {. }
$$
In other words:

**3.23 Theorem** If $\Sigma a_{n}$ converges, then $\lim _{n \rightarrow \infty} a_{n}=0$
The condition $a_{n} \rightarrow 0$ is not, however, sufficient to ensure convergence of $\Sigma a_{n}$. For instance, the series
$$
\sum_{n=1}^{\infty} \frac{1}{n}
$$
diverges; for the proof we refer to Theorem 3.28.
Theorem 3.14, concerning monotonic sequences, also has an immediate counterpart for series.

**3.24 Theorem** A series of nonnegative terms converges if and only if its partial sums form a bounded sequence.

We now turn to a convergence test of a different nature, the so-called "comparison test."'

**3.25 Theorem**
(a) If $\left|a_{n}\right| \leq c_{n}$ for $n \geq N_{0}$, where $N_{0}$ is some fixed integer, and if $\Sigma c_{n}$ converges, then $\Sigma a_{n}$ converges.
(b) If $a_{n} \geq d_{n} \geq 0$ for $n \geq N_{0}$, and if $\Sigma d_{n}$ diverges, then $\Sigma a_{n}$ diverges.
Note that $(b)$ applies only to series of nonnegative terms $a_{n}$.
Proof Given $\varepsilon>0$, there exists $N \geq N_{0}$ such that $m \geq n \geq N$ implies
$$
\sum_{k=n}^{m} c_{k} \leq \varepsilon
$$
by the Cauchy criterion. Hence
$$
\left|\sum_{k=n}^{m} a_{k}\right| \leq \sum_{k=n}^{m}\left|a_{k}\right| \leq \sum_{k=n}^{m} c_{k} \leq \varepsilon
$$
and (a) follows.
Next, $(b)$ follows from $(a)$, for if $\Sigma a_{n}$ converges, so must $\Sigma d_{n}$ [note that $(b)$ also follows from Theorem 3.24].
The comparison test is a very useful one; to use it efficiently, we have to become familiar with a number of series of nonnegative terms whose convergence or divergence is known.
