---
title: 1 ORDERED SETS
date: 2022-08-08
---

* youtube: [part1](https://youtu.be/iXbU8AMIopI)
[part2](https://youtu.be/ccD9NgqnzRY)
* bilibili: [part1](https://www.bilibili.com/video/BV1dD4y117gi/)
[part2](https://www.bilibili.com/video/BV1924y1R7sx/)
* note: [pdf](https://github.com/chen-gz/bed2/blob/d74553c21ea8710b52e4b4ac203f26a9713ae0a2/1%20ORDERED%20SETS%20note.pdf)
[xopp](https://github.com/chen-gz/bed2/blob/d74553c21ea8710b52e4b4ac203f26a9713ae0a2/1%20ORDERED%20SETS%20note.xopp)

**1.5 Definition** Let $S$ be a set. An order on $S$ is a relation, denoted by $<$, with the following two properties:

(i) If $x \in S$ and $y \in S$ then one and only one of the statements

$$
x<y, \quad x=y, \quad y<x
$$

is true.

(ii) If $x, y, z \in S$, if $x<y$ and $y<z$, then $x<z$.

The statement " $x<y$ " may be read as " $x$ is less than $y$ " or " $x$ is smaller than $y$ " or " $x$ precedes $y$ ".

It is often convenient to write $y>x$ in place of $x<y$.

The notation $x \leq y$ indicates that $x<y$ or $x=y$, without specifying which of these two is to hold. In other words, $x \leq y$ is the negation of $x>y$.

**1.6 Definition** An ordered set is a set $S$ in which an order is defined.

For example, $Q$ is an ordered set if $r<s$ is defined to mean that $s-r$ is a positive rational number.

**1.7 Definition** Suppose $S$ is an ordered set, and $E \subset S$. If there exists a $\beta \in S$ such that $x \leq \beta$ for every $x \in E$, we say that $E$ is bounded above, and call $\beta$ an upper bound of $E$.
Lower bounds are defined in the same way (with $\geq$ in place of $\leq$ ).


**$1.8$ Definition** Suppose $S$ is an ordered set, $E \subset S$, and $E$ is bounded above. Suppose there exists an $\alpha \in S$ with the following properties:

(i) $\alpha$ is an upper bound of $E$.

(ii) If $\gamma<\alpha$ then $\gamma$ is not an upper bound of $E$.

Then $\alpha$ is called the least upper bound of $E$ [that there is at most one such $\alpha$ is clear from (ii)] or the supremum of $E$, and we write

$$
\alpha=\sup E .
$$

The greatest lower bound, or infimum, of a set $E$ which is bounded below is defined in the same manner: The statement

$$
\alpha=\inf E
$$

means that $\alpha$ is a lower bound of $E$ and that no $\beta$ with $\beta>\alpha$ is a lower bound of $E$.

**$1.9$ Examples**

(a) Consider the sets $A$ and $B$ of Example $1.1$ as subsets of the ordered set $Q$. The set $A$ is bounded above. In fact, the upper bounds of $A$ are exactly the members of $B$. Since $B$ contains no smallest member, $A$ has no least upper bound in $Q$.

Similarly, $B$ is bounded below: The set of all lower bounds of $B$ consists of $A$ and of all $r \in Q$ with $r \leq 0$. Since $A$ has no lasgest member, $B$ has no greatest lower bound in $Q$.

(b) If $\alpha=\sup E$ exists, then $\alpha$ may or may not be a member of $E$. For instance, let $E_{1}$ be the set of all $r \in Q$ with $r<0$. Let $E_{2}$ be the set of all $r \in Q$ with $r \leq 0$. Then

$$
\sup E_{1}=\sup E_{2}=0,
$$

and $0 \notin E_{1}, 0 \in \mathrm{E}_{2}$.
(c) Let $E$ consist of all numbers $1 / n$, where $n=1,2,3, \ldots$ Then $\sup E=1$, which is in $E$, and inf $E=0$, which is not in $E$.

**1.10 Definition** An ordered set $S$ is said to have the least-upper-bound property if the following is true:

If $E \subset \mathrm{S}, E$ is not empty, and $E$ is bounded above, then sup $E$ exists in $S$. 

Example 1.9(a) shows that $Q$ does not have the least-upper-bound property. We shall now show that there is a close relation between greatest lower bounds and least upper bounds, and that every ordered set with the least-upperbound property also has the greatest-lower-bound property.

**$1.11$ Theorem** Suppose $S$ is an ordered set with the least-upper-bound property, $B \subset S, B$ is not empty, and $B$ is bounded below. Let $L$ be the set of all lower bounds of $B$. Then
exists in $S$, and $\alpha=\inf B$.

$$
\alpha=\sup L
$$

In particular, inf $B$ exists in $S$.

**Proof** Since $B$ is bounded below, $L$ is not empty. Since $L$ consists of exactly those $y \in S$ which satisfy the inequality $y \leq x$ for every $x \in B$, we see that every $x \in B$ is an upper bound of $L$. Thus $L$ is bounded above. Our hypothesis about $S$ implies therefore that $L$ has a supremum in $S$; call it $\alpha$.

If $\gamma<\alpha$ then (see Definition 1.8) $\gamma$ is not an upper bound of $L$, hence $\gamma \notin B$. It follows that $\alpha \leq x$ for every $x \in B$. Thus $\alpha \in L$.

If $\alpha<\beta$ then $\beta \notin L$, since $\alpha$ is an upper bound of $L$.

We have shown that $\alpha \in L$ but $\beta \notin L$ if $\beta>\alpha$. In other words, $\alpha$ is a lower bound of $B$, but $\beta$ is not if $\beta>\alpha$. This means that $\alpha=\inf B$.
