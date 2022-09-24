---
title: L'HOSPITAL'S RULE
date: 2022-07-28
---

The following theorem is frequently useful in the evaluation of limits.

**5.13 Theorem** Suppose $f$ and $g$ are real and differentiable in $(a, b)$, and $g^{\prime}(x) \neq 0$ for all $x \in(a, b)$, where $-\infty \leq a<b \leq+\infty$. Suppose
$$
\frac{f^{\prime}(x)}{g^{\prime}(x)} \rightarrow A \text { as } x \rightarrow a \text {. }
$$

If

$$
f(x) \rightarrow 0 \text { and } g(x) \rightarrow 0 \text { as } x \rightarrow a,
$$

or if

$$
g(x) \rightarrow+\infty \text { as } x \rightarrow a,
$$

then

$$
\frac{f(x)}{g(x)} \rightarrow A \text { as } x \rightarrow a .
$$

The analogous statement is of course also true if $x \rightarrow b$, or if $g(x) \rightarrow-\infty$ in (15). Let us note that we now use the limit concept in the extended sense of Definition 4.33.

Proof We first consider the case in which $-\infty \leq A<+\infty$. Choose a real number $q$ such that $A<q$, and then choose $r$ such that $A<r<q$. By (13) there is a point $c \in(a, b)$ such that $a<x<c$ implies

$$
\frac{f^{\prime}(x)}{g^{\prime}(x)}<r .
$$

If $a<x<y<c$, then Theorem $5.9$ shows that there is a point $t \in(x, y)$ such that

$$
\frac{f(x)-f(y)}{g(x)-g(y)}=\frac{f^{\prime}(t)}{g^{\prime}(t)}<r .
$$

Suppose (14) holds. Letting $x \rightarrow a$ in (18), we see that

$$
\frac{f(y)}{g(y)} \leq r<q \quad(a<y<c) .
$$

Next, suppose (15) holds. Keeping $y$ fixed in (18), we can choose a point $c_{1} \in(a, y)$ such that $g(x)>g(y)$ and $g(x)>0$ if $a<x<c_{1}$. Multiplying (18) by $[g(x)-g(y)] / g(x)$, we obtain

$$
\frac{f(x)}{g(x)}<r-r \frac{g(y)}{g(x)}+\frac{f(y)}{g(x)} \quad\left(a<x<c_{1}\right) .
$$

If we let $x \rightarrow a$ in $(20),(15)$ shows that there is a point $c_{2} \in\left(a, c_{1}\right)$ such that

$$
\frac{f(x)}{g(x)}<q \quad\left(a<x<c_{2}\right) .
$$

Summing up, (19) and (21) show that for any $q$, subject only to the condition $A<q$, there is a point $c_{2}$ such that $f(x) / g(x)<q$ if $a<x<c_{2}$.

In the same manner, if $-\infty<A \leq+\infty$, and $p$ is chosen so that $p<A$, we can find a point $c_{3}$ such that

$$
p<\frac{f(x)}{g(x)} \quad\left(a<x<c_{3}\right),
$$

and (16) follows from these two statements.

