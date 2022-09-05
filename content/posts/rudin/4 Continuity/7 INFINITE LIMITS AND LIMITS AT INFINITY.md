---
title: INFINITE LIMITS AND LIMITS AT INFINITY
date: 2022-07-26

---

To enable us to operate in the extended real number system, we shall now enlarge the scope of Definition 4.1, by reformulating it in terms of neighborhoods.

For any real number $x$, we have already defined a neighborhood of $x$ to be any segment $(x-\delta, x+\delta)$. 4.32 Definition For any real $c$, the set of real numbers $x$ such that $x>c$ is called a neighborhood of $+\infty$ and is written $(c,+\infty)$. Similarly, the set $(-\infty, c)$ is a neighborhood of $-\infty$.

**4.33 Definition** Let $f$ be a real function defined on $E \subset R$. We say that
$$
f(t) \rightarrow A \text { as } t \rightarrow x,
$$

where $A$ and $x$ are in the extended real number system, if for every neighborhood $U$ of $A$ there is a neighborhood $V$ of $x$ such that $V \cap E$ is not empty, and such that $f(t) \in U$ for all $t \in V \cap E, t \neq x$.

A moment's consideration will show that this coincides with Definition 4.1 when $A$ and $x$ are real.

The analogue of Theorem $4.4$ is still true, and the proof offers nothing new. We state it, for the sake of completeness.

**4.34 Theorem** Let $f$ and $g$ be defined on $E \subset R$. Suppose
$$
f(t) \rightarrow A, \quad g(t) \rightarrow B \quad \text { as } t \rightarrow x .
$$

Then

(a) $f(t) \rightarrow A^{\prime}$ implies $A^{\prime}=A$.

(b) $(f+g)(t) \rightarrow A+B$

(c) $(f g)(t) \rightarrow A B$

(d) $(f / g)(t) \rightarrow A / B$

provided the right members of $(b),(c)$, and $(d)$ are defined.

Note that $\infty-\infty, 0 \cdot \infty, \infty / \infty, A / 0$ are not defined (see Definition 1.23).