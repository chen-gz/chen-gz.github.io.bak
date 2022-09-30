---
title: 4 THE ALGEBRAIC COMPLETENESS OF THE COMPLEX FILED
date: 2022-08-10
---


We are now in a position to give a simple proof of the fact that the complex field is algebraically complete, that is to say, that every nonconstant polynomial with complex coefficients has a complex root.


$8.8$ Theorem Suppose $a_{0}, \ldots, a_{n}$ are complex numbers, $n \geq 1, a_{n} \neq 0$,

$$
P(z)=\sum_{0}^{n} a_{k} z^{k} .
$$

Then $P(z)=0$ for some complex number $z$.

Proof Without loss of generality, assume $a_{n}=1$. Put

$$
\mu=\inf |P(z)| \quad \text { ( } z \text { complex) }
$$

If $|z|=R$, then

$$
|P(z)| \geq R^{n}\left[1-\left|a_{n-1}\right| R^{-1}-\cdots-\left|a_{0}\right| R^{-n}\right] .
$$

The right side of (56) tends to $\infty$ as $R \rightarrow \infty$. Hence there exists $R_{0}$ such that $|P(z)|>\mu$ if $|z|>R_{0}$. Since $|P|$ is continuous on the closed disc with center at 0 and radius $R_{0}$, Theorem $4.16$ shows that $\left|P\left(z_{0}\right)\right|=\mu$ for some $z_{0}$.
We claim that $\mu=0$.
If not, put $Q(z)=P\left(z+z_{0}\right) / P\left(z_{0}\right)$. Then $Q$ is a nonconstant polynomial, $Q(0)=1$, and $|Q(z)| \geq 1$ for all $z$. There is a smallest integer $k$, $1 \leq k \leq n$, such that

$$
Q(z)=1+b_{k} z^{k}+\cdots+b_{n} z^{n}, \quad b_{k} \neq 0 .
$$

By Theorem $8.7(d)$ there is a real $\theta$ such that

$$
e^{i k \theta} b_{k}=-\left|b_{k}\right|
$$

If $r>0$ and $r^{k}\left|b_{k}\right|<1,(58)$ implies

$$
\left|1+b_{k} r^{k} e^{i k \theta}\right|=1-r^{k}\left|b_{k}\right|
$$

so that

$$
\left|Q\left(r e^{i \theta}\right)\right| \leq 1-r^{k}\left\{\left|b_{k}\right|-r\left|b_{k+1}\right|-\cdots-r^{n-k}\left|b_{n}\right|\right\}
$$

For sufficiently small $r$, the expression in braces is positive; hence $\left|Q\left(r e^{i \theta}\right)\right|<1$, a contradiction.

Thus $\mu=0$, that is, $P\left(z_{0}\right)=0$.

Exercise 27 contains a more general result.