---
title: 4 Completion of Product Measures
date: 2023-01-20
---

### 8.10 

If $(X, \mathscr{S}, \mu)$ and $(Y, \mathscr{T}, \lambda)$ are complete measure spaces, it need not be true that $(X \times Y, \mathscr{S} \times \mathscr{T}, \mu \times \lambda)$ is complete. There is nothing pathological about this phenomenon: Suppose that there exists an $A \in \mathscr{S}, A \neq \varnothing$, with $\mu(A)=0$; and suppose that there exists a $B \subset Y$ so that $B \notin \mathscr{T}$. Then $A \times B \subset A \times Y$, $(\mu \times \lambda)(A \times Y)=0$, but $A \times B \notin \mathscr{S} \times \mathscr{T}$. (The last assertion follows from Theorem 8.2.)

For instance, if $\mu=\lambda=m_1$ (Lebesgue measure on $R^1$ ), let $A$ consist of any one point, and let $B$ be any nonmeasurable set in $R^1$. Thus $m_1 \times m_1$ is not a complete measure; in particular, $m_1 \times m_1$ is not $m_2$, since the latter is complete, by its construction. However, $m_2$ is the completion of $m_1 \times m_1$. This result generalizes to arbitrary dimensions:
