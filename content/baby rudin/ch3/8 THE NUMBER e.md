---
title: 8 THE NUMBER e
date: 2022-07-16
---

* [youtube](https://youtu.be/G7IFz0nlmgo)
* [bili](https://www.bilibili.com/video/BV1m8411s7At/)
* note [pdf](https://github.com/chen-gz/bed2/blob/b590a02f3a9e146a3f1e04f18fd66732c27014ff/19%20THE%20NUMBER%20e.pdf) [xopp](https://github.com/chen-gz/bed2/blob/b590a02f3a9e146a3f1e04f18fd66732c27014ff/19%20THE%20NUMBER%20e.xopp)

**3.30 Definition** $e=\sum_{n=0}^{\infty} \frac{1}{n !}$
Here $n !=1 \cdot 2 \cdot 3 \cdots n$ if $n \geq 1$, and $0 !=1$

Since
$$
\begin{aligned}
s_{n} &=1+1+\frac{1}{1 \cdot 2}+\frac{1}{1 \cdot 2 \cdot 3}+\cdots+\frac{1}{1 \cdot 2 \cdots n} \\
&<1+1+\frac{1}{2}+\frac{1}{2^{2}}+\cdots+\frac{1}{2^{n-1}}<3,
\end{aligned}
$$
the series converges, and the definition makes sense. In fact, the series converges very rapidly and allows us to compute $e$ with great accuracy.

It is of interest to note that $e$ can also be defined by means of another limit process; the proof provides a good illustration of operations with limits:

**3.31 Theorem** $\lim _{n \rightarrow \infty}\left(1+\frac{1}{n}\right)^{n}=e$.
Proof Let
$$
s_{n}=\sum_{k=0}^{n} \frac{1}{k !}, \quad t_{n}=\left(1+\frac{1}{n}\right)^{n}
$$
By the binomial theorem,
$$
\begin{aligned}
t_{n}=1+1+\frac{1}{2 !}\left(1-\frac{1}{n}\right)+\frac{1}{3 !}\left(1-\frac{1}{n}\right)\left(1-\frac{2}{n}\right) &+\cdots \\
&+\frac{1}{n !}\left(1-\frac{1}{n}\right)\left(1-\frac{2}{n}\right) \cdots\left(1-\frac{n-1}{n}\right)
\end{aligned}
$$
Hence $t_{n} \leq s_{n}$, so that
$$
\limsup _{n \rightarrow \infty} t_{n} \leq e
$$
by Theorem 3.19. Next, if $n \geq m$,
$$
t_{n} \geq 1+1+\frac{1}{2 !}\left(1-\frac{1}{n}\right)+\cdots+\frac{1}{m !}\left(1-\frac{1}{n}\right) \cdots\left(1-\frac{m-1}{n}\right) .
$$
Let $n \rightarrow \infty$, keeping $m$ fixed. We get
$$
\liminf _{n \rightarrow \infty} t_{n} \geq 1+1+\frac{1}{2 !}+\cdots+\frac{1}{m !},
$$
so that
$$
s_{m} \leq \underset{n \rightarrow \infty}{\liminf } t_{n} .
$$
Letting $m \rightarrow \infty$, we finally get
$$
e \leq \liminf _{n \rightarrow \infty} t_{n} .
$$
The theorem follows from (14) and (15).

The rapidity with which the series $\sum \frac{1}{n !}$ converges can be estimated as follows: If $s_{n}$ has the same meaning as above, we have
$$
\begin{aligned}
e-s_{n} &=\frac{1}{(n+1) !}+\frac{1}{(n+2) !}+\frac{1}{(n+3) !}+\cdots \\
&<\frac{1}{(n+1) !}\left\{1+\frac{1}{n+1}+\frac{1}{(n+1)^{2}}+\cdots\right\}=\frac{1}{n ! n}
\end{aligned}
$$
so that
$$
0<e-s_{n}<\frac{1}{n ! n}
$$
Thus $s_{10}$, for instance, approximates $e$ with an error less than $10^{-7}$. The inequality (16) is of theoretical interest as well, since it enables us to prove the irrationality of $e$ very easily.



**3.32 Theorem** e is irrational.
Proof Suppose $e$ is rational. Then $e=p / q$, where $p$ and $q$ are positive integers. By (16),
$$
0<q !\left(e-s_{q}\right)<\frac{1}{q}
$$
By our assumption, $q ! e$ is an integer. Since
$$
q ! s_{q}=q !\left(1+1+\frac{1}{2 !}+\cdots+\frac{1}{q !}\right)
$$
is an integer, we see that $q !\left(e-s_{q}\right)$ is an integer.
Since $q \geq 1,(17)$ implies the existence of an integer between 0 and 1 . We have thus reached a contradiction.

Actually, $e$ is not even an algebraic number. For a simple proof of this, see page 25 of Niven's book, or page 176 of Herstein's, cited in the Bibliography.
