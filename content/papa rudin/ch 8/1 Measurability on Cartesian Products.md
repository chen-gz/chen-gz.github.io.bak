---
titile: 1 Measurability on Cartesian Products
date: 2023-01-16
---
### 8.1 Definitions 

If $X$ and $Y$ are two sets, their cartesian product $X \times Y$ is the set of all ordered pairs $(x, y)$, with $x \in X$ and $y \in Y$. If $A \subset X$ and $B \subset Y$, it follows that $A \times B \subset X \times Y$. We call any set of the form $A \times B$ a rectangle in $X \times Y$.

Suppose now that $(X, \mathscr{S})$ and $(Y, \mathscr{T})$ are measurable spaces. Recall that this simply means that $\mathscr{S}$ is a $\sigma$-algebra in $X$ and $\mathscr{T}$ is a $\sigma$-algebra in $Y$.

A measurable rectangle is any set of the form $A \times B$, where $A \in \mathscr{S}$ and $B \in \mathscr{T}$.

If $Q=R_1 \cup \cdots \cup R_n$, where each $R_i$ is a measurable rectangle and $R_i \cap R_j=\varnothing$ for $i \neq j$, we say that $Q \in \mathscr{E}$, the class of all **elementary sets.**

$\mathscr{S} \times \mathscr{T}$ is defined to be the smallest $\sigma$-algebra in $X \times Y$ which contains every measurable rectangle.

**A monotone class** $\mathfrak{M}$ is a collection of sets with the following properties: If $A_i \in \mathfrak{M}, B_i \in \mathfrak{M}, A_i \subset A_{i+1}, B_i \supset B_{i+1}$, for $i=1,2,3, \ldots$, and if
$$
A=\bigcup_{i=1}^{\infty} A_i, \quad B=\bigcap_{i=1}^{\infty} B_i,
$$
then $A \in \mathfrak{M}$ and $B \in \mathfrak{M}$.

If $E \subset X \times Y, x \in X, y \in Y$, we define
$$
E_x=\{y:(x, y) \in E\}, \quad E^y=\{x:(x, y) \in E\} .
$$
We call $E_x$ and $E^y$ the $x$-section and $y$-section, respectively, of $E$. Note that $E_x \subset Y, E^y \subset X$.

### 8.2 Theorem 

If $E \in \mathscr{S} \times \mathscr{T}$, then $E_x \in \mathscr{T}$ and $E^y \in \mathscr{S}$, for every $x \in X$ and $y \in Y$.

Proof Let $\Omega$ be the class of all $E \in \mathscr{S} \times \mathscr{T}$ such that $E_x \in \mathscr{T}$ for every $x \in X$. If $E=A \times B$, then $E_x=B$ if $x \in A, E_x=\varnothing$ if $x \notin A$. Therefore every measurable rectangle belongs to $\Omega$. Since $\mathscr{T}$ is a $\sigma$-algebra, the following three statements are true. They prove that $\Omega$ is a $\sigma$-algebra and hence that $\Omega=\mathscr{S} \times \mathscr{T}:$

(a) $X \times Y \in \Omega$.
(b) If $E \in \Omega$, then $\left(E^c\right)_x=\left(E_x\right)^c$, hence $E^c \in \Omega$.
(c) If $E_i \in \Omega(i=1,2,3, \ldots)$ and $E=\bigcup E_i$, then $E_x=\bigcup\left(E_i\right)_x$, hence $E \in \Omega$. 

The proof is the same for $E^y$.

### 8.3 Theorem 

$\mathscr{S} \times \mathscr{T}$ is the smallest monotone class which contains all elementary sets.

**Proof** Let $\mathfrak{M}$ be the smallest monotone class which contains $\mathscr{E}$; the proof that this class exists is exactly like that of Theorem $1.10$. Since $\mathscr{S} \times \mathscr{T}$ is a monotone class, we have $\mathfrak{M} \subset \mathscr{S} \times \mathscr{T}$.
The identities
$$
\begin{aligned}
& \left(A_1 \times B_1\right) \cap\left(A_2 \times B_2\right)=\left(A_1 \cap A_2\right) \times\left(B_1 \cap B_2\right), \\
& \left(A_1 \times B_1\right)-\left(A_2 \times B_2\right)=\left[\left(A_1-A_2\right) \times B_1\right] \cup\left[\left(A_1 \cap A_2\right) \times\left(B_1-B_2\right)\right]
\end{aligned}
$$
show that the intersection of two measurable rectangles is a measurable rectangle and that their difference is the union of two disjoint measurable rectangles, hence is an elementary set. If $P \in \mathscr{E}$ and $Q \in \mathscr{E}$, it follows easily that $P \cap Q \in \mathscr{E}$ and $P-Q \in \mathscr{E}$. Since
$$
P \cup Q=(P-Q) \cup Q
$$
and $(P-Q) \cap Q=\varnothing$, we also have $P \cup Q \in \mathscr{E}$.

For any set $P \subset X \times Y$, define $\Omega(P)$ to be the class of all $Q \subset X \times Y$ such that $P-Q \in \mathfrak{M}, Q-P \in \mathfrak{M}$, and $P \cup Q \in \mathfrak{M}$. The following properties are obvious:

(a) $Q \in \Omega(P)$ if and only if $P \in \Omega(Q)$.
(b) Since $\mathfrak{M}$ is a monotone class, so is each $\Omega(P)$.

Fix $P \in \mathscr{E}$. Our preceding remarks about $\mathscr{E}$ show that $Q \in \Omega(P)$ for all $Q \in \mathscr{E}$, hence $\mathscr{E} \subset \Omega(P)$, and now $(b)$ implies that $\mathfrak{M} \subset \Omega(P)$.

Next, fix $Q \in \mathfrak{M}$. We just saw that $Q \in \Omega(P)$ if $P \in \mathscr{E}$. By $(a), P \in \Omega(Q)$, hence $\mathscr{E} \subset \Omega(Q)$, and if we refer to $(b)$ once more we obtain $\mathfrak{M} \subset \Omega(Q)$.

Summing up: If $P$ and $Q \in \mathfrak{M}$, then $P-Q \in \mathfrak{M}$ and $P \cup Q \in \mathfrak{M}$.

It now follows that $\mathfrak{M}$ is a $\sigma$-algebra in $X \times Y$ :
(i) $X \times Y \in \mathscr{E}$. Hence $X \times Y \in \mathfrak{M}$.
(ii) If $Q \in \mathfrak{M}$, then $Q^c \in \mathfrak{M}$, since the difference of any two members of $\mathfrak{M}$ is in $\mathfrak{M}$.
(iii) If $P_i \in \mathfrak{M}$ for $i=1,2,3, \ldots$, and $P=\bigcup P_i$, put
$$
Q_n=P_1 \cup \cdots \cup P_n .
$$
Since $\mathfrak{M}$ is closed under the formation of finite unions, $Q_n \in \mathfrak{M}$.

Since $Q_n \subset Q_{n+1}$ and $P=\bigcup Q_n$, the monotonicity of $\mathfrak{M}$ shows that $P \in \mathfrak{M}$.

Thus $\mathfrak{M}$ is a $\sigma$-algebra, $\mathscr{E} \subset \mathfrak{M} \subset \mathscr{S} \times \mathscr{T}$, and (by definition) $\mathscr{S} \times \mathscr{T}$ is the smallest $\sigma$-algebra which contains $\mathscr{E}$. Hence $\mathfrak{M}=\mathscr{S} \times \mathscr{T}$.

### 8.4 Definition 

With each function $f$ on $X \times Y$ and with each $x \in X$ we associate a function $f_x$ defined on $Y$ by $f_x(y)=f(x, y)$.

Similarly, if $y \in Y, f^y$ is the function defined on $X$ by $f^y(x)=f(x, y)$.

Since we are now dealing with three $\sigma$-algebras, $\mathscr{S}, \mathscr{T}$, and $\mathscr{S} \times \mathscr{T}$, we shall, for the sake of clarity, indicate in the sequel to which of these three $\sigma$-algebras the word "measurable" refers.

### 8.5 Theorem 

Let $f$ be an $(\mathscr{S} \times \mathscr{T})$-measurable function on $X \times Y$. Then

(a) For each $x \in X$, $f_x$ is a $\mathscr{T}$-measurable function.
(b) For each $y \in Y,^y$ is an $\mathscr{S}$-measurable function.

Proof For any open set $V$, put
$$
Q=\{(x, y): f(x, y) \in V\} .
$$
Then $Q \in \mathscr{S} \times \mathscr{T}$, and
$$
Q_x=\left\{y: f_x(y) \in V\right\} .
$$
Theorem $8.2$ shows that $Q_x \in \mathscr{T}$. This proves $(a)$; the proof of $(b)$ is similar.
