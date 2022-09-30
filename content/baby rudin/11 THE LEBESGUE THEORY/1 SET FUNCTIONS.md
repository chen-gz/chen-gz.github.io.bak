---
title: 1 SET FUNCTIONS
date: 2022-08-18
---

If $A$ and $B$ are any two sets, we write $A-B$ for the set of all elements $x$ such that $x \in A, x \notin B$. The notation $A-B$ does not imply that $B \subset A$. We denote the empty set by 0 , and say that $A$ and $B$ are disjoint if $A \cap B=0$. 



### 11.1 Definition

A family $\mathscr{R}$ of sets is called a ring if $A \in \mathscr{R}$ and $B \in \mathscr{R}$ implies}

$$
\begin{equation}
A \cup B \in \mathscr{R}, \quad A-B \in \mathscr{R} .
\end{equation}
$$

Since $A \cap B=A-(A-B)$, we also have $A \cap B \in \mathscr{R}$ if $\mathscr{R}$ is a ring. A ring $\mathscr{R}$ is called a $\sigma$-ring if


$$
\begin{equation}
\bigcup_{n=1}^{\infty} A_{n} \in \mathscr{R}
\end{equation}
$$

whenever $A_{n} \in \mathscr{R}(n=1,2,3, \ldots)$. Since

$$
\bigcap_{n=1}^{\infty} A_{n}=A_{1}-\bigcup_{n=1}^{\infty}\left(A_{1}-A_{n}\right),
$$

we also have

$$
\bigcap_{n=1}^{\infty} A_{n} \in \mathscr{R}
$$

if $\mathscr{R}$ is a $\sigma$-ring.

### 11.2 Definition

We say that $\phi$ is a *set function* defined on $\mathscr{R}$ if $\phi$ assigns to every $A \in \mathscr{R}$ a number $\phi(A)$ of the extended real number system. $\phi$ is *additive* if $A \cap B=0$ implies

$$
\phi(A \cup B)=\phi(A)+\phi(B),
$$

and $\phi$ is *countably additive* if $A_{i} \cap A_{j}=0(i \neq j)$ implies

$$
\phi\left(\bigcup_{n=1}^{\infty} A_{n}\right)=\sum_{n=1}^{\infty} \phi\left(A_{n}\right) .
$$

We shall always assume that the range of $\phi$ does not contain both $+\infty$ and $-\infty$; for if it did, the right side of (3) could become meaningless. Also, we exclude set functions whose only value is $+\infty$ or $-\infty$.

It is interesting to note that the left side of (4) is independent of the order in which the $A_{n}$ 's are arranged. Hence the rearrangement theorem shows that the right side of (4) converges absolutely if it converges at all; if it does not converge, the partial sums tend to $+\infty$, or to $-\infty$.

If $\phi$ is additive, the following properties are easily verified:

$$
\begin{aligned}
\phi(0) &=0 . \\
\phi\left(A_{1} \cup \cdots \cup A_{n}\right) &=\phi\left(A_{1}\right)+\cdots+\phi\left(A_{n}\right)
\end{aligned}
$$

if $A_{i} \cap A_{j}=0$ whenever $i \neq j$. (7)

$$
\phi\left(A_{1} \cup A_{2}\right)+\phi\left(A_{1} \cap A_{2}\right)=\phi\left(A_{1}\right)+\phi\left(A_{2}\right) .
$$

If $\phi(A) \geq 0$ for all $A$, and $A_{1} \subset A_{2}$, then

$$
\phi\left(A_{1}\right) \leq \phi\left(A_{2}\right) .
$$

Because of (8), nonnegative additive set functions are often called monotonic.

$$
\phi(A-B)=\phi(A)-\phi(B)
$$

if $B \subset A$, and $|(\phi B)|<+\infty$.

### 11.3 Theorem

Suppose $\phi$ is countably additive on a ring $\mathscr{R}$. Suppose $A_{n} \in \mathscr{R}$ $(n=1,2,3, \ldots), A_{1} \subset A_{2} \subset A_{3} \subset \cdots, A \in \mathscr{R}$, and
$$
A=\bigcup_{n=1}^{\infty} A_{n} .
$$

Then, as $n \rightarrow \infty$,

$$
\phi\left(A_{n}\right) \rightarrow \phi(A) .
$$

#### Proof

Put $B_{1}=A_{1}$, and
$$
B_{n}=A_{n}-A_{n-1} \quad(n=2,3, \ldots) .
$$

Then $B_{i} \cap B_{j}=0$ for $i \neq j, A_{n}=B_{1} \cup \cdots \cup B_{n}$, and $A=\cup B_{n}$. Hence

$$
\phi\left(A_{n}\right)=\sum_{i=1}^{n} \phi\left(B_{i}\right)
$$

and

$$
\phi(A)=\sum_{i=1}^{\infty} \phi\left(B_{i}\right)
$$
