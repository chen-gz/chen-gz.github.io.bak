---
title: 2 SUBSEQUENCES
date: 2022-09-04
---

**3.5 Definition** Given a sequence $\left\{p_{n}\right\}$, consider a sequence $\left\{n_{k}\right\}$ of positive integers, such that $n_{1}<n_{2}<n_{3}<\cdots$. Then the sequence $\left\{p_{n i}\right\}$ is called a subsequence of $\left\{p_{n}\right\}$. If $\left\{p_{n_{i}}\right\}$ converges, its limit is called a subsequential limit of $\left\{p_{n}\right\}$.

It is clear that $\left\{p_{n}\right\}$ converges to $p$ if and only if every subsequence of $\left\{p_{n}\right\}$ converges to $p$. We leave the details of the proof to the reader.

**3.6 Theorem**

(a) If $\left\{p_{n}\right\}$ is a sequence in a compact metric space $X$, then some subsequence of $\left\{p_{n}\right\}$ converges to a point of $X$.

(b) Every bounded sequence in $R^{k}$ contains a convergent subsequence. 

**Proof**

(a) Let $E$ be the range of $\left\{p_{n}\right\}$. If $E$ is finite then there is a $p \in E$ and a sequence $\left\{n_{1}\right\}$ with $n_{1}<n_{2}<n_{3}<\cdots$, such that

$$
p_{n_{1}}=p_{n_{2}}=\cdots=p .
$$

The subsequence $\left\{p_{n_{1}}\right\}$ so obtained converges evidently to $p$.

If $E$ is infinite, Theorem $2.37$ shows that $E$ has a limit point $p \in X$. Choose $n_{1}$ so that $d\left(p, p_{n_{1}}\right)<1$. Having chosen $n_{1}, \ldots, n_{i-1}$, we see from Theorem $2.20$ that there is an integer $n_{i}>n_{i-1}$ such that $d\left(p, p_{n_{1}}\right)<1 / i$. Then $\left\{p_{n}\right\}$ converges to $p$.

(b) This follows from (a), since Theorem $2.41$ implies that every bounded subset of $R^{k}$ lies in a compact subset of $R^{k}$.

**3.7 Theorem** The subsequential limits of a sequence $\left\{p_{n}\right\}$ in a metric space $X$ form a closed subset of $X$.

**Proof** Let $E^{*}$ be the set of all subsequential limits of $\left\{p_{n}\right\}$ and let $q$ be a limit point of $E^{*}$. We have to show that $q \in E^{*}$.

Choose $n_{1}$ so that $p_{n_{1}} \neq q$. (If no such $n_{1}$ exists, then $E^{*}$ has only one point, and there is nothing to prove.) Put $\delta=d\left(q, p_{n_{1}}\right)$. Suppose $n_{1}, \ldots, n_{i-1}$ are chosen. Since $q$ is a limit point of $E^{*}$, there is an $x \in E^{*}$ with $d(x, q)<2^{-1} \delta$. Since $x \in E^{*}$, there is an $n_{i}>n_{i-1}$ such that $d\left(x, p_{n_{i}}\right)<2^{-i} \delta$. Thus

$$
d\left(q, p_{n i}\right) \leq 2^{1-1} \delta
$$

for $i=1,2,3, \ldots$. This says that $\left\{p_{n}\right\}$ converges to $q$. Hence $q \in E^{*}$.

