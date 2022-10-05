---
title: 3 THE REAL FIELD
date: 2022-08-12
---

* [youtube](https://youtu.be/aUkuE-h6CTk)
* [bilibli](https://www.bilibili.com/video/BV1ae4y1r77X/)
* note [part1 pdf](https://github.com/chen-gz/bed2/blob/57e79c3830d281fcfe77d50f39680afec1e9ba6b/3%20R%20note%201.pdf)
[part1 xopp](https://github.com/chen-gz/bed2/blob/57e79c3830d281fcfe77d50f39680afec1e9ba6b/3%20R%20note%201.xopp)
[part2 pdf](https://github.com/chen-gz/bed2/blob/57e79c3830d281fcfe77d50f39680afec1e9ba6b/3%20R%20note%202.pdf)
[prat2 xopp](https://github.com/chen-gz/bed2/blob/57e79c3830d281fcfe77d50f39680afec1e9ba6b/3%20R%20note%202.xopp)


We now state the existence theorem which is the core of this chapter.

**1.19 Theorem** *There exists an ordered field $R$ which has the least-upper-bound property.
Moreover, $R$ contains $Q$ as a subfield.*

The second statement means that $Q \subset R$ and that the operations of addition and multiplication in $R$, when applied to members of $Q$, coincide with the usual operations on rational numbers; also, the positive rational numbers are positive elements of $R$.
The members of $R$ are called real numbers.
The proof of Theorem $1.19$ is rather long and a bit tedious and is therefore presented in an Appendix to Chap. 1. The proof actually constructs $R$ from $Q$.

The next theorem could be extracted from this construction with very little extra effort. However, we prefer to derive it from Theorem $1.19$ since this provides a good illustration of what one can do with the least-upper-bound property.

**$1.20$ Theorem**

(a) If $x \in R, y \in R$, and $x>0$, then there is a positive integer $n$ such that $n x>y$

(b) If $x \in R, y \in R$, and $x<y$, then there exists $a p \in Q$ such that $x<p<y$.

Part $(a)$ is usually referred to as the archimedean property of $R$. Part (b) may be stated by saying that $Q$ is dense in $R$ : Between any two real numbers there is a rational one.

**Proof**

(a) Let $A$ be the set of all $n x$, where $n$ runs through the positive integers. If $(a)$ were false, then $y$ would be an upper bound of $A$. But then $A$ has a least upper bound in $R$. Put $\alpha=\sup A$. Since $x>0, \alpha-x<\alpha$, and $\alpha-x$ is not an upper bound of $A$. Hence $\alpha-x<m x$ for some positive integer $m$. But then $\alpha<(m+1) x \in A$, which is impossible, since $\alpha$ is an upper bound of $A$.

(b) Since $x<y$, we have $y-x>0$, and (a) furnishes a positive integer $n$ such that

$$
n(y-x)>1 \text {. }
$$

Apply (a) again, to obtain positive integers $m_{1}$ and $m_{2}$ such that $m_{1}>n x$, $m_{2}>-n x$. Then

$$
-m_{2}<n x<m_{1} \text {. }
$$

Hence there is an integer $m$ (with $-m_{2} \leq m \leq m_{1}$ ) such that

$$
m-1 \leq n x<m .
$$

If we combine these inequalities, we obtain

$$
n x<m \leq 1+n x<n y .
$$

Since $n>0$, it follows that

$$
x<\frac{m}{n}<y .
$$

This proves $(b)$, with $p=m / n$. We shall now prove the existence of $n$th roots of positive reals. This proof will show how the difficulty pointed out in the Introduction (irrationality of $\sqrt{2}$ ) can be handled in $R$.

$1.21$ Theorem For every real $x>0$ and every integer $n>0$ there is one and only one positive real y such that $y^{n}=x$.

This number $y$ is written $\sqrt[n]{x}$ or $x^{1 / n}$.

Proof That there is at most one such $y$ is clear, since $0<y_{1}<y_{2}$ implies $y_{1}^{n}<y_{2}^{n}$.

Let $E$ be the set consisting of all positive real numbers $t$ such that $t^{n}<x$.

If $t=x /(1+x)$ then $0 \leq t<1$. Hence $t^{n} \leq t<x$. Thus $t \in E$, and $E$ is not empty.

If $t>1+x$ then $t^{n} \geq t>x$, so that $t \notin E$. Thus $1+x$ is an upper bound of $E$.

Hence Theorem $1.19$ implies the existence of

$$
y=\sup E \text {. }
$$

To prove that $y^{n}=x$ we will show that each of the inequalities $y^{n}<x$ and $y^{n}>x$ leads to a contradiction.

The identity $b^{n}-a^{n}=(b-a)\left(b^{n-1}+b^{n-2} a+\cdots+a^{n-1}\right)$ yields the inequality

$$
b^{n}-a^{n}<(b-a) n b^{n-1}
$$

when $0<a<b$.

Assume $y^{n}<x$. Choose $h$ so that $0<h<1$ and

$$
h<\frac{x-y^{n}}{n(y+1)^{n-1}} .
$$

Put $a=y, b=y+h$. Then

$$
(y+h)^{n}-y^{n}<h n(y+h)^{n-1}<h n(y+1)^{n-1}<x-y^{n} \text {. }
$$

Thus $(y+h)^{n}<x$, and $y+h \in E$. Since $y+h>y$, this contradicts the fact that $y$ is an upper bound of $E$.

Assume $y^{n}>x$. Put

$$
k=\frac{y^{n}-x}{n y^{n-1}} .
$$

Then $0<k<y$. If $t \geq y-k$, we conclude that

$$
y^{n}-t^{n} \leq y^{n}-(y-k)^{n}<k n y^{n-1}=y^{n}-x .
$$

Thus $t^{n}>x$, and $t \notin E$. It follows that $y-k$ is an upper bound of $E$. But $y-k<y$, which contradicts the fact that $y$ is the least upper bound of $E$.

Hence $y^{n}=x$, and the proof is complete.

Corollary If $a$ and $b$ are positive real numbers and $n$ is a positive integer, then

$$
(a b)^{1 / n}=a^{1 / n} b^{1 / n} .
$$

Proof Put $\alpha=a^{1 / n}, \beta=b^{1 / n}$. Then

$$
a b=\alpha^{n} \beta^{n}=(\alpha \beta)^{n},
$$

since multiplication is commutative. [Axiom (M2) in Definition 1.12.] The uniqueness assertion of Theorem $1.21$ shows therefore that

$$
(a b)^{1 / n}=\alpha \beta=a^{1 / n} b^{1 / n} .
$$

1.22 Decimals We conclude this section by pointing out the relation between real numbers and decimals.

Let $x>0$ be real. Let $n_{0}$ be the largest integer such that $n_{0} \leq x$. (Note that the existence of $n_{0}$ depends on the archimedean property of $R$.) Having chosen $n_{0}, n_{1}, \ldots, n_{k-1}$, let $n_{k}$ be the largest integer such that

$$
n_{0}+\frac{n_{1}}{10}+\cdots+\frac{n_{k}}{10^{k}} \leq x .
$$

Let $E$ be the set of these numbers

$$
n_{0}+\frac{n_{1}}{10}+\cdots+\frac{n_{k}}{10^{k}} \quad(k=0,1,2, \ldots) .
$$

Then $x=\sup E$. The decimal expansion of $x$ is

$$
n_{0} \cdot n_{1} n_{2} n_{3} \cdots \text {. }
$$

Conversely, for any infinite decimal (6) the set $E$ of numbers (5) is bounded above, and (6) is the decimal expansion of $\sup E$.

Since we shall never use decimals, we do not enter into a detailed discussion.

