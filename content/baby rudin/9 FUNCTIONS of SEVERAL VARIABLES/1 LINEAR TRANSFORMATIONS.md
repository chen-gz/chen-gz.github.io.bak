---
title: 1 LINEAR TRANSFORMATIONS.md
date: 2022-08-11
---

We begin this chapter with a discussion of sets of vectors in euclidean $n$-space $R^{n}$. The algebraic facts presented here extend without change to finite-dimensional vector spaces over any field of scalars. However, for our purposes it is quite sufficient to stay within the familiar framework provided by the euclidean spaces.

**9.1 Definitions**

(a) A nonempty set $X \subset R^{n}$ is a vector space if $\mathbf{x}+\mathbf{y} \in X$ and $c \mathbf{x} \in X$ for all $\mathbf{x} \in X, \mathbf{y} \in X$, and for all scalars $c$.
(b) If $\mathbf{x}_{1}, \ldots, \mathbf{x}_{k} \in R^{n}$ and $c_{1}, \ldots, c_{k}$ are scalars, the vector

$$
c_{1} \mathbf{x}_{1}+\cdots+c_{k} \mathbf{x}_{k}
$$

is called a linear combination of $\mathbf{x}_{1}, \ldots, \mathbf{x}_{k}$. If $S \subset R^{n}$ and if $E$ is the set of all linear combinations of elements of $S$, we say that $S$ spans $E$, or that $E$ is the span of $S$.

Observe that every span is a vector space.

(c) A set consisting of vectors $\mathbf{x}_{1}, \ldots, \mathbf{x}_{k}$ (we shall use the notation $\left\{\mathbf{x}_{1}, \ldots, \mathbf{x}_{k}\right\}$ for such a set) is said to be independent if the relation $c_{1} \mathbf{x}_{1}+\cdots+c_{k} \mathbf{x}_{k}=\mathbf{0}$ implies that $c_{1}=\cdots=c_{k}=0$. Otherwise $\left\{\mathbf{x}_{1}, \ldots, \mathbf{x}_{k}\right\}$ is said to be dependent.
Observe that no independent set contains the null vector.
(d) If a vector space $X$ contains an independent set of $r$ vectors but contains no independent set of $r+1$ vectors, we say that $X$ has dimension $r$, and write: $\operatorname{dim} X=r$.

The set consisting of $\mathbf{0}$ alone is a vector space; its dimension is 0 .
(e) An independent subset of a vector space $X$ which spans $X$ is called a basis of $X$.

Observe that if $B=\left\{\mathbf{x}_{1}, \ldots, \mathbf{x}_{r}\right\}$ is a basis of $X$, then every $\mathbf{x} \in X$ has a unique representation of the form $\mathbf{x}=\Sigma c_{j} \mathbf{x}_{j}$. Such a representation exists since $B$ spans $X$, and it is unique since $B$ is independent. The numbers $c_{1}, \ldots, c_{r}$ are called the coordinates of $\mathbf{x}$ with respect to the basis $B$.

The most familiar example of a basis is the set $\left\{\mathbf{e}_{1}, \ldots, \mathbf{e}_{n}\right\}$, where $\mathbf{e}_{j}$ is the vector in $R^{n}$ whose $j$ th coordinate is 1 and whose other coordinates are all 0. If $\mathbf{x} \in R^{n}, \mathbf{x}=\left(x_{1}, \ldots, x_{n}\right)$, then $\mathbf{x}=\Sigma x_{j} \mathbf{e}_{j}$. We shall call
$$
\left\{\mathbf{e}_{1}, \ldots, \mathbf{e}_{n}\right\}
$$
the standard basis of $R^{n}$.


**9.2 Theorem** Let $r$ be a positive integer. If a vector space $X$ is spanned by a set of $r$ vectors, then $\operatorname{dim} X \leq r$.

**Proof** If this is false, there is a vector space $X$ which contains an independent set $Q=\left\{\mathbf{y}_{1}, \ldots, \mathbf{y}_{r+1}\right\}$ and which is spanned by a set $S_{0}$ consisting of $r$ vectors.

Suppose $0 \leq i<r$, and suppose a set $S_{i}$ has been constructed which spans $X$ and which consists of all $\mathbf{y}_{j}$ with $1 \leq j \leq i$ plus a certain collection of $r-i$ members of $S_{0}$, say $\mathbf{x}_{1}, \ldots, \mathbf{x}_{r-i}$. (In other words, $S_{i}$ is obtained from $S_{0}$ by replacing $i$ of its elements by members of $Q$, without altering the span.) Since $S_{i}$ spans $X, \mathbf{y}_{i+1}$ is in the span of $S_{i}$; hence there are scalars $a_{1}, \ldots, a_{i+1}, b_{1}, \ldots, b_{r-i}$, with $a_{i+1}=1$, such that

$$
\sum_{j=1}^{i+1} a_{j} \mathbf{y}_{j}+\sum_{k=1}^{r-i} b_{k} \mathbf{x}_{k}=\mathbf{0} .
$$

If all $b_{k}$ 's were 0 , the independence of $Q$ would force all $a_{j}$ 's to be 0 , a contradiction. It follows that some $\mathbf{x}_{k} \in S_{i}$ is a linear combination of the other members of $T_{i}=S_{i} \cup\left\{\mathbf{y}_{i+1}\right\}$. Remove this $\mathbf{x}_{k}$ from $T_{i}$ and call the remaining set $S_{i+1}$. Then $S_{i+1}$ spans the same set as $T_{i}$, namely $X$, so that $S_{i+1}$ has the properties postulated for $S_{i}$ with $i+1$ in place of $i$.

Starting with $S_{0}$, we thus construct sets $S_{1}, \ldots, S_{r}$. The last of these consists of $\mathbf{y}_{1}, \ldots, \mathbf{y}_{r}$, and our construction shows that it spans $X$. But $Q$ is independent; hence $\mathbf{y}_{r+1}$ is not in the span of $S_{r}$. This contradiction establishes the theorem.

**Corollary** $\operatorname{dim} R^{n}=n$.

**Proof** Since $\left\{\mathbf{e}_{1}, \ldots, \mathbf{e}_{n}\right\}$ spans $R^{n}$, the theorem shows that $\operatorname{dim} R^{n} \leq n$. Since $\left\{\mathbf{e}_{1}, \ldots, \mathbf{e}_{n}\right\}$ is independent, $\operatorname{dim} R^{n} \geq n$.

**9.3 Theorem** Suppose $X$ is a vector space, and $\operatorname{dim} X=n$.
(a) A set $E$ of $n$ vectors in $X$ spans $X$ if and only if $E$ is independent.
(b) $X$ has a basis, and every basis consists of $n$ vectors.
(c) If $1 \leq r \leq n$ and $\left\{\mathbf{y}_{1}, \ldots, \mathbf{y}_{r}\right\}$ is an independent set in $X$, then $X$ has $a$ basis containing $\left\{\mathbf{y}_{1}, \ldots, \mathbf{y}_{r}\right\}$.

**Proof** Suppose $E=\left\{\mathbf{x}_{1}, \ldots, \mathbf{x}_{n}\right\}$. Since $\operatorname{dim} X=n$, the set $\left\{\mathbf{x}_{1}, \ldots, \mathbf{x}_{n}, \mathbf{y}\right\}$ is dependent, for every $\mathbf{y} \in X$. If $E$ is independent, it follows that $\mathbf{y}$ is in the span of $E$; hence $E$ spans $X$. Conversely, if $E$ is dependent, one of its members can be removed without changing the span of $E$. Hence $E$ cannot span $X$, by Theorem 9.2. This proves $(a)$.


Since $\operatorname{dim} X=n, X$ contains an independent set of $n$ vectors, and (a) shows that every such set is a basis of $X ;(b)$ now follows from $9.1(d)$ and 9.2.

To prove $(c)$, let $\left\{\mathbf{x}_{1}, \ldots, \mathbf{x}_{n}\right\}$ be a basis of $X$. The set

$$
S=\left\{\mathbf{y}_{1}, \ldots, \mathbf{y}_{r}, \mathbf{x}_{1}, \ldots, \mathbf{x}_{n}\right\}
$$

spans $X$ and is dependent, since it contains more than $n$ vectors. The argument used in the proof of Theorem $9.2$ shows that one of the $\mathbf{x}_{i}$ 's is a linear combination of the other members of $S$. If we remove this $\mathbf{x}_{i}$ from $S$, the remaining set still spans $X$. This process can be repeated $r$ times and leads to a basis of $X$ which contains $\left\{\mathbf{y}_{1}, \ldots, \mathbf{y}_{r}\right\}$, by $(a)$.


**9.4 Definitions** A mapping $A$ of a vector space $X$ into a vector space $Y$ is said to be a linear transformation if

$$
A\left(\mathbf{x}_{1}+\mathbf{x}_{2}\right)=A \mathbf{x}_{1}+A \mathbf{x}_{2}, \quad A(c \mathrm{x})=c A \mathbf{x}
$$

for all $\mathbf{x}, \mathbf{x}_{1}, \mathbf{x}_{2} \in X$ and all scalars $c$. Note that one often writes $A \mathbf{x}$ instead of $A(\mathbf{x})$ if $A$ is linear.

Observe that $A 0=0$ if $A$ is linear. Observe also that a linear transformation $A$ of $X$ into $Y$ is completely determined by its action on any basis: If

$\left\{\mathbf{x}_{1}, \ldots, \mathbf{x}_{n}\right\}$ is a basis of $X$, then every $\mathbf{x} \in X$ has a unique representation of the form

$$
\mathbf{x}=\sum_{i=1}^{n} c_{i} \mathbf{x}_{i},
$$

and the linearity of $A$ allows us to compute $A \mathbf{x}$ from the vectors $A \mathbf{x}_{1}, \ldots, A \mathbf{x}_{n}$ and the coordinates $c_{1}, \ldots, c_{n}$ by the formula

$$
A \mathbf{x}=\sum_{i=1}^{n} c_{i} A \mathbf{x}_{i} .
$$

Linear transformations of $X$ into $X$ are often called linear operators on $X$. If $A$ is a linear operator on $X$ which (i) is one-to-one and (ii) maps $X$ onto $X$, we say that $A$ is invertible. In this case we can define an operator $A^{-1}$ on $X$ by requiring that $A^{-1}(A \mathbf{x})=\mathbf{x}$ for all $\mathbf{x} \in X$. It is trivial to verify that we then also have $A\left(A^{-1} \mathbf{x}\right)=\mathbf{x}$, for all $\mathbf{x} \in X$, and that $A^{-1}$ is linear.

An important fact about linear operators on finite-dimensional vector spaces is that each of the above conditions (i) and (ii) implies the other:

9.5 Theorem $A$ linear operator $A$ on a finite-dimensional vector space $X$ is one-to-one if and only if the range of $A$ is all of $X$.

Proof Let $\left\{\mathbf{x}_{1}, \ldots, \mathbf{x}_{n}\right\}$ be a basis of $X$. The linearity of $A$ shows that its range $\mathscr{R}(A)$ is the span of the set $Q=\left\{A \mathbf{x}_{1}, \ldots, A \mathbf{x}_{n}\right\}$. We therefore infer from Theorem 9.3(a) that $\mathscr{R}(A)=X$ if and only if $Q$ is independent. We have to prove that this happens if and only if $A$ is one-to-one.

Suppose $A$ is one-to-one and $\Sigma c_{i} A \mathbf{x}_{i}=0$. Then $A\left(\Sigma c_{i} \mathbf{x}_{i}\right)=\mathbf{0}$, hence $\Sigma c_{i} \mathbf{x}_{i}=\mathbf{0}$, hence $c_{1}=\cdots=c_{n}=0$, and we conclude that $Q$ is independent. Conversely, suppose $Q$ is independent and $A\left(\Sigma c_{i} \mathbf{x}_{i}\right)=0$. Then $\Sigma c_{i} A \mathbf{x}_{i}=\mathbf{0}$, hence $c_{1}=\cdots=c_{n}=0$, and we conclude: $A \mathbf{x}=\mathbf{0}$ only if $\mathbf{x}=0$. If now $A \mathbf{x}=A \mathbf{y}$, then $A(\mathbf{x}-\mathbf{y})=A \mathbf{x}-A \mathbf{y}=\mathbf{0}$, so that $\mathbf{x}-\mathbf{y}=\mathbf{0}$, and this says that $A$ is one-to-one.

**9.6 Definitions**
(a) Let $L(X, Y)$ be the set of all linear transformations of the vector space $X$ into the vector space $Y$. Instead of $L(X, X)$, we shall simply write $L(X)$. If $A_{1}, A_{2} \in L(X, Y)$ and if $c_{1}, c_{2}$ are scalars, define $c_{1} A_{1}+c_{2} A_{2}$ by

$$
\left(c_{1} A_{1}+c_{2} A_{2}\right) \mathbf{x}=c_{1} A_{1} \mathbf{x}+c_{2} A_{2} \mathbf{x} \quad(\mathbf{x} \in X) \text {. }
$$

It is then clear that $c_{1} A_{1}+c_{2} A_{2} \in L(X, Y)$.
(b) If $X, Y, Z$ are vector spaces, and if $A \in L(X, Y)$ and $B \in L(Y, Z)$, we define their product $B A$ to be the composition of $A$ and $B$ :

$$
(B A) \mathbf{x}=B(A \mathbf{x}) \quad(\mathbf{x} \in X) \text {. }
$$

Then $B A \in L(X, Z)$.

Note that $B A$ need not be the same as $A B$, even if $X=Y=Z$.
(c) For $A \in L\left(R^{n}, R^{m}\right)$, define the norm $\|A\|$ of $A$ to be the sup of all numbers $|A \mathbf{x}|$, where $\mathbf{x}$ ranges over all vectors in $R^{n}$ with $|\mathbf{x}| \leq 1$.
Observe that the inequality

$$
|A \mathbf{x}| \leq\|A\||\mathbf{x}|
$$

holds for all $\mathbf{x} \in R^{n}$. Also, if $\lambda$ is such that $|A \mathbf{x}| \leq \lambda|\mathbf{x}|$ for all $\mathbf{x} \in R^{n}$, then $\|A\| \leq \lambda$.

**9.7 Theorem**
(a) If $A \in L\left(R^{n}, R^{m}\right)$, then $\|A\|<\infty$ and $A$ is a uniformly continuous mapping of $R^{n}$ into $R^{m}$.

(b) If $A, B \in L\left(R^{n}, R^{m}\right)$ and $c$ is a scalar, then

$$
\|A+B\| \leq\|A\|+\|B\|, \quad\|c A\|=|c|\|A\| \text {. }
$$

With the distance between $A$ and $B$ defined as $\|A-B\|, L\left(R^{n}, R^{m}\right)$ is a metric space.
(c) If $A \in L\left(R^{n}, R^{m}\right)$ and $B \in L\left(R^{m}, R^{k}\right)$, then

$$
\|B A\| \leq\|B\|\|A\| \text {. }
$$

**Proof**
(a) Let $\left\{\mathbf{e}_{1}, \ldots, \mathbf{e}_{n}\right\}$ be the standard basis in $R^{n}$ and suppose $\mathbf{x}=\Sigma c_{i} \mathbf{e}_{i}$, $|\mathbf{x}| \leq 1$, so that $\left|c_{i}\right| \leq 1$ for $i=1, \ldots, n$. Then
$$
|A \mathbf{x}|=\left|\sum c_{i} A \mathbf{e}_{i}\right| \leq \sum\left|c_{i}\right|\left|A \mathbf{e}_{i}\right| \leq \sum\left|A \mathbf{e}_{i}\right|
$$

so that

$$
\|A\| \leq \sum_{i=1}^{n}\left|A \mathbf{e}_{i}\right|<\infty .
$$

Since $|A \mathbf{x}-A \mathbf{y}| \leq\|A\||\mathbf{x}-\mathbf{y}|$ if $\mathbf{x}, \mathbf{y} \in R^{n}$, we see that $A$ is uniformly continuous.
(b) The inequality in $(b)$ follows from

$$
|(A+B) \mathbf{x}|=|A \mathbf{x}+B \mathbf{x}| \leq|A \mathbf{x}|+|B \mathbf{x}| \leq(\|A\|+\|B\|)|\mathbf{x}| .
$$

The second part of $(b)$ is proved in the same manner. If

$$
A, B, C \in L\left(R^{n}, R^{m}\right)
$$

we have the triangle inequality

$$
\|A-C\|=\|(A-B)+(B-C)\| \leq\|A-B\|+\|B-C\|
$$


and it is easily verified that $\|A-B\|$ has the other properties of a metric (Definition 2.15).
(c) Finally, (c) follows from

$$
|(B A) \mathbf{x}|=|B(A \mathbf{x})| \leq\|B\||A \mathbf{x}| \leq\|B\|\|A\||\mathbf{x}|
$$

Since we now have metrics in the spaces $L\left(R^{n}, R^{m}\right)$, the concepts of open set, continuity, etc., make sense for these spaces. Our next theorem utilizes these concepts.

**9.8 Theorem** Let $\Omega$ be the set of all invertible linear operators on $R^{n}$.
(a) If $A \in \Omega, B \in L\left(R^{n}\right)$, and
$$
\|B-A\| \cdot\left\|A^{-1}\right\|<1,
$$
then $B \in \Omega$.
(b) $\Omega$ is an open subset of $L\left(R^{n}\right)$, and the mapping $A \rightarrow A^{-1}$ is continuous on $\Omega$.
(This mapping is also obviously a $1-1$ mapping of $\Omega$ onto $\Omega$, which is its own inverse.)

**Proof**

(a) Put $\left\|A^{-1}\right\|=1 / \alpha$, put $\|B-A\|=\beta$. Then $\beta<\alpha$. For every $\mathbf{x} \in R^{n}$,
$$
\begin{aligned}
\alpha|\mathbf{x}| &=\alpha\left|A^{-1} A \mathbf{x}\right| \leq \alpha\left\|A^{-1}\right\| \cdot|A \mathbf{x}| \\
&=|A \mathbf{x}| \leq|(A-B) \mathbf{x}|+|B \mathbf{x}| \leq \beta|\mathbf{x}|+|B \mathbf{x}|,
\end{aligned}
$$
so that
$$
(\alpha-\beta)|\mathbf{x}| \leq|B \mathbf{x}| \quad\left(\mathbf{x} \in R^{n}\right) .
$$
Since $\alpha-\beta>0,(1)$ shows that $B \mathbf{x} \neq 0$ if $\mathbf{x} \neq 0$. Hence $B$ is $1-1$. By Theorem 9.5, $B \in \Omega$. This holds for all $B$ with $\|B-A\|<\alpha$. Thus we have $(a)$ and the fact that $\Omega$ is open.
(b) Next, replace $\mathbf{x}$ by $B^{-1} \mathbf{y}$ in (1). The resulting inequality
$$
(\alpha-\beta)\left|B^{-1} \mathbf{y}\right| \leq\left|B B^{-1} \mathbf{y}\right|=|\mathbf{y}| \quad\left(\mathrm{y} \in R^{n}\right)
$$
shows that $\left\|B^{-1}\right\| \leq(\alpha-\beta)^{-1}$. The identity
$$
B^{-1}-A^{-1}=B^{-1}(A-B) A^{-1} \text {, }
$$
combined with Theorem 9.7(c), implies therefore that
$$
\left\|B^{-1}-A^{-1}\right\| \leq\left\|B^{-1}\right\|\|A-B\|\left\|A^{-1}\right\| \leq \frac{\beta}{\alpha(\alpha-\beta)} .
$$
This establishes the continuity assertion made in $(b)$, since $\beta \rightarrow 0$ as $B \rightarrow A$.



**9.9 Matrices** Suppose $\left\{\mathbf{x}_{1}, \ldots, \mathbf{x}_{n}\right\}$ and $\left\{\mathbf{y}_{1}, \ldots, \mathbf{y}_{m}\right\}$ are bases of vector spaces $X$ and $Y$, respectively. Then every $A \in L(X, Y)$ determines a set of numbers $a_{i j}$ such that
$$
A \mathbf{x}_{j}=\sum_{i=1}^{m} a_{i j} \mathbf{y}_{i} \quad(1 \leq j \leq n)
$$
It is convenient to visualize these numbers in a rectangular array of $m$ rows and $n$ columns, called an $m$ by $n$ matrix:

Observe that the coordinates $a_{\imath j}$ of the vector $A \mathbf{x}_{j}$ (with respect to the basis $\left\{\mathbf{y}_{1}, \ldots, \mathbf{y}_{m}\right\}$ ) appear in the $j$ th column of $[A]$. The vectors $A \mathbf{x}_{j}$ are therefore sometimes called the column vectors of $[A]$. With this terminology, the range of $A$ is spanned by the column vectors of $[A]$.
If $\mathbf{x}=\Sigma c_{j} \mathbf{x}_{j}$, the linearity of $A$, combined with (3), shows that
$$
A \mathbf{x}=\sum_{i=1}^{m}\left(\sum_{j=1}^{n} a_{i j} c_{j}\right) \mathbf{y}_{i}
$$
Thus the coordinates of $A \mathbf{x}$ are $\Sigma_{j} a_{i j} c_{j}$. Note that in (3) the summation ranges over the first subscript of $a_{i j}$, but that we sum over the second subscript when computing coordinates.

Suppose next that an $m$ by $n$ matrix is given, with real entries $a_{i j}$. If $A$ is then defined by (4), it is clear that $A \in L(X, Y)$ and that $[A]$ is the given matrix. Thus there is a natural 1-1 correspondence between $L(X, Y)$ and the set of all real $m$ by $n$ matrices. We emphasize, though, that $[A]$ depends not only on $A$ but also on the choice of bases in $X$ and $Y$. The same $A$ may give rise to many different matrices if we change bases, and vice versa. We shall not pursue this observation any further, since we shall usually work with fixed bases. (Some remarks on this may be found in Sec. 9.37.)

If $Z$ is a third vector space, with basis $\left\{z_{1}, \ldots, z_{p}\right\}$, if $A$ is given by (3), and if

$$
B \mathbf{y}_{i}=\sum_{k} b_{k i} \mathbf{z}_{k}, \quad(B A) \mathbf{x}_{j}=\sum_{k} c_{k j} \mathbf{z}_{k} \text {, }
$$

then $A \in L(X, Y), B \in L(Y, Z), B A \in L(X, Z)$, and since

$$
\begin{aligned}
B\left(A \mathbf{x}_{j}\right) &=B \sum_{i} a_{i j} \mathbf{y}_{i}=\sum_{i} a_{i j} B \mathbf{y}_{i} \\
&=\sum a_{i j} \sum_{k} b_{k i} \mathbf{z}_{k}=\sum_{k}\left(\sum_{i} b_{k i} a_{i j}\right) \mathbf{z}_{k}
\end{aligned}
$$

the independence of $\left\{z_{1}, \ldots, \mathbf{z}_{p}\right\}$ implies that

$$
c_{k j}=\sum_{i} b_{k i} a_{i j} \quad(1 \leq k \leq p, 1 \leq j \leq n) .
$$

This shows how to compute the $p$ by $n$ matrix $[B A]$ from $[B]$ and $[A]$. If we define the product $[B][A]$ to be $[B A]$, then (5) describes the usual rule of matrix multiplication.

Finally, suppose $\left\{\mathbf{x}_{1}, \ldots, \mathbf{x}_{n}\right\}$ and $\left\{\mathbf{y}_{1}, \ldots, \mathbf{y}_{m}\right\}$ are standard bases of $R^{n}$ and $R^{m}$, and $A$ is given by (4). The Schwarz inequality shows that

$$
|A \mathbf{x}|^{2}=\sum_{i}\left(\sum_{j} a_{i j} c_{j}\right)^{2} \leq \sum_{i}\left(\sum_{j} a_{i j}^{2} \cdot \sum_{j} c_{j}^{2}\right)=\sum_{i, j} a_{i j}^{2}|\mathbf{x}|^{2}
$$

Thus

$$
\|A\| \leq\left\{\sum_{i, j} a_{i j}^{2}\right\}^{1 / 2} .
$$

If we apply (6) to $B-A$ in place of $A$, where $A, B \in L\left(R^{n}, R^{m}\right)$, we see that if the matrix elements $a_{i j}$ are continuous functions of a parameter, then the same is true of $A$. More precisely:

If $S$ is a metric space, if $a_{11}, \ldots, a_{m n}$ are real continuous functions on $S$, and if, for each $p \in S, A_{p}$ is the linear transformation of $R^{n}$ into $R^{m}$ whose matrix has entries $a_{i j}(p)$, then the mapping $p \rightarrow A_{p}$ is a continuous mapping of $S$ into $L\left(R^{n}, R^{m}\right)$.