---
title: 7 DETERMINANTS
date: 2022-08-13
---

Determinants are numbers associated to square matrices, and hence to the operators represented by such matrices. They are 0 if and only if the corresponding operator fails to be invertible. They can therefore be used to decide whether the hypotheses of some of the preceding theorems are satisfied. They will play an even more important role in Chap. $10 .$ 

**9.33 Definition** If $\left(j_{1}, \ldots, j_{n}\right)$ is an ordered $n$-tuple of integers, define

$$
s\left(j_{1}, \ldots, j_{n}\right)=\prod_{p<q} \operatorname{sgn}\left(j_{q}-j_{p}\right),
$$

where $\operatorname{sgn} x=1$ if $x>0, \operatorname{sgn} x=-1$ if $x<0, \operatorname{sgn} x=0$ if $x=0$. Then $s\left(j_{1}, \ldots, j_{n}\right)=1,-1$, or 0 , and it changes sign if any two of the $j$ 's are interchanged.

Let $[A]$ be the matrix of a linear operator $A$ on $R^{n}$, relative to the standard basis $\left\{\mathbf{e}_{1}, \ldots, \mathbf{e}_{n}\right\}$, with entries $a(i, j)$ in the $i$ th row and jth column. The determinant of $[A]$ is defined to be the number

$$
\operatorname{det}[A]=\sum s\left(j_{1}, \ldots, j_{n}\right) a\left(1, j_{1}\right) a\left(2, j_{2}\right) \cdots a\left(n, j_{n}\right) .
$$

The sum in (83) extends over all ordered $n$-tuples of integers $\left(j_{1}, \ldots, j_{n}\right)$ with $1 \leq j_{r} \leq n$.

The column vectors $\mathbf{x}_{j}$ of $[A]$ are

$$
\mathbf{x}_{j}=\sum_{i=1}^{n} a(i, j) \mathbf{e}_{i} \quad(1 \leq j \leq n) .
$$

It will be convenient to think of det $[A]$ as a function of the column vectors of $[A]$. If we write

$$
\operatorname{det}\left(\mathbf{x}_{1}, \ldots, \mathbf{x}_{n}\right)=\operatorname{det}[A] \text {, }
$$

det is now a real function on the set of all ordered $n$-tuples of vectors in $R^{n}$.

**9.34 Theorem**

(a) If I is the identity operator on $R^{n}$, then

$$
\operatorname{det}[I]=\operatorname{det}\left(\mathbf{e}_{1}, \ldots, \mathbf{e}_{n}\right)=1 .
$$

(b) det is a linear function of each of the column vectors $\mathbf{x}_{j}$, if the others are held fixed.

(c) If $[A]_{1}$ is obtained from $[A]$ by interchanging two columns, then $\operatorname{det}[A]_{1}=-\operatorname{det}[A]$.

(d) If $[A]$ has two equal columns, then $\operatorname{det}[A]=0$.

Proof If $A=I$, then $a(i, i)=1$ and $a(i, j)=0$ for $i \neq j$. Hence

$$
\operatorname{det}[I]=s(1,2, \ldots, n)=1 \text {, }
$$

which proves $(a)$. By (82), $s\left(j_{1}, \ldots, j_{n}\right)=0$ if any two of the $j$ 's are equal. Each of the remaining $n$ ! products in (83) contains exactly one factor from each column. This proves $(b)$. Part $(c)$ is an immediate consequence of the fact that $s\left(j_{1}, \ldots, j_{n}\right)$ changes sign if any two of the j's are interchanged, and $(d)$ is a corollary of $(c)$.

**9.35 Theorem** *If $[A]$ and $[B]$ are $n$ by $n$ matrices, then*

$$
\operatorname{det}([B][A])=\operatorname{det}[B] \operatorname{det}[A] .
$$

Proof If $\mathbf{x}_{1}, \ldots, \mathbf{x}_{n}$ are the columns of $[A]$, define

$$
\Delta_{B}\left(\mathbf{x}_{1}, \ldots, \mathbf{x}_{n}\right)=\Delta_{B}[A]=\operatorname{det}([B][A]) .
$$

The columns of $[B][A]$ are the vectors $B \mathbf{x}_{1}, \ldots, B \mathbf{x}_{n}$. Thus

$$
\Delta_{B}\left(\mathbf{x}_{1}, \ldots, \mathbf{x}_{n}\right)=\operatorname{det}\left(B \mathbf{x}_{1}, \ldots, B \mathbf{x}_{n}\right) \text {. }
$$

By (86) and Theorem $9.34, \Delta_{B}$ also has properties $9.34(b)$ to $(d)$. By $(b)$ and (84),

$$
\Delta_{B}[A]=\Delta_{B}\left(\sum_{i} a(i, 1) \mathbf{e}_{i}, \mathbf{x}_{2}, \ldots, \mathbf{x}_{n}\right)=\sum_{i} a(i, 1) \Delta_{B}\left(\mathbf{e}_{i}, \mathbf{x}_{2}, \ldots, \mathbf{x}_{n}\right) .
$$

Repeating this process with $\mathbf{x}_{2}, \ldots, \mathbf{x}_{n}$, we obtain

$$
\Delta_{B}[A]=\sum a\left(i_{1}, 1\right) a\left(i_{2}, 2\right) \cdots a\left(i_{n}, n\right) \Delta_{B}\left(\mathbf{e}_{i_{1}}, \ldots, \mathbf{e}_{i_{n}}\right) \text {, }
$$

the sum being extended over all ordered $n$-tuples $\left(i_{1}, \ldots, i_{n}\right)$ with $1 \leq i_{r} \leq n .$ By $(c)$ and $(d)$

$$
\Delta_{B}\left(\mathbf{e}_{i_{1}}, \ldots, \mathbf{e}_{i_{n}}\right)=t\left(i_{1}, \ldots, i_{n}\right) \Delta_{B}\left(\mathbf{e}_{1}, \ldots, \mathbf{e}_{n}\right),
$$

where $t=1,0$, or $-1$, and since $[B][I]=[B],(85)$ shows that

$$
\Delta_{B}\left(\mathbf{e}_{1}, \ldots, \mathbf{e}_{n}\right)=\operatorname{det}[B] \text {. }
$$

Substituting (89) and (88) into (87), we obtain

$$
\operatorname{det}([B][A])=\left\{\sum a\left(i_{1}, 1\right) \cdots a\left(i_{n}, n\right) t\left(i_{1}, \ldots, i_{n}\right)\right\} \operatorname{det}[B] \text {, }
$$

for all $n$ by $n$ matrices $[A]$ and $[B]$. Taking $B=I$, we see that the above sum in braces is $\operatorname{det}[A]$. This proves the theorem.


**9.36 Theorem** *$A$ linear operator $A$ on $R^{n}$ is invertible if and only if $\operatorname{det}[A] \neq 0$.*


**Proof** If $A$ is invertible, Theorem $9.35$ shows that

$$
\operatorname{det}[A] \operatorname{det}\left[A^{-1}\right]=\operatorname{det}\left[A A^{-1}\right]=\operatorname{det}[I]=1 \text {, }
$$

so that $\operatorname{det}[A] \neq 0$.

If $A$ is not invertible, the columns $\mathbf{x}_{1}, \ldots, \mathbf{x}_{n}$ of $[A]$ are dependent (Theorem 9.5); hence there is one, say, $\mathbf{x}_{k}$, such that

$$
\mathbf{x}_{k}+\sum_{j \neq k} c_{j} \mathbf{x}_{j}=0
$$

for certain scalars $c_{j}$. By $9.34(b)$ and $(d), \mathbf{x}_{k}$ can be replaced by $\mathbf{x}_{k}+c_{j} \mathbf{x}_{j}$ without altering the determinant, if $j \neq k$. Repeating, we see that $\mathbf{x}_{k}$ can be replaced by the left side of (90), i.e., by 0 , without altering the determinant. But a matrix which has 0 for one column has determinant 0 . Hence $\operatorname{det}[A]=0$.



**9.37 Remark** Suppose $\left\{\mathbf{e}_{1}, \ldots, \mathbf{e}_{n}\right\}$ and $\left\{\mathbf{u}_{1}, \ldots, \mathbf{u}_{n}\right\}$ are bases in $R^{n}$. Every linear operator $A$ on $R^{n}$ determines matrices $[A]$ and $[A]_{U}$, with entries $a_{i j}$ and $\alpha_{i j}$, given by

$$
A \mathbf{e}_{j}=\sum_{\imath} a_{i j} \mathbf{e}_{i}, \quad A \mathbf{u}_{j}=\sum_{i} \alpha_{i j} \mathbf{u}_{i} .
$$

If $\mathbf{u}_{j}=B \mathbf{e}_{j}=\Sigma b_{i j} \mathbf{e}_{i}$, then $A \mathbf{u}_{j}$ is equal to

$$
\sum_{k} \alpha_{k j} B \mathbf{e}_{k}=\sum_{k} \alpha_{k j} \sum_{i} b_{i k} \mathbf{e}_{i}=\sum_{i}\left(\sum_{k} b_{i k} \alpha_{k j}\right) \mathbf{e}_{i},
$$

and also to

$$
A B \mathbf{e}_{j}=A \sum_{k} b_{k j} \mathbf{e}_{k}=\sum_{i}\left(\sum_{k} a_{i k} b_{k j}\right) \mathbf{e}_{i} .
$$

Thus $\Sigma b_{i k} \alpha_{k j}=\Sigma a_{i k} b_{k j}$, or

$$
[B][A]_{U}=[A][B] \text {. }
$$

Since $B$ is invertible, $\operatorname{det}[B] \neq 0$. Hence $(91)$, combined with Theorem $9.35$, shows that

$$
\operatorname{det}[A]_{U}=\operatorname{det}[A] \text {. }
$$

The determinant of the matrix of a linear operator does therefore not depend on the basis which is used to construct the matrix. It is thus meaningful to speak of the determinant of a linear operator, without having any basis in mind.



**9.38 Jacobians** If $\mathrm{f}$ maps an open set $E \subset R^{n}$ into $R^{n}$, and if $\mathrm{f}$ is differentiable at a point $\mathbf{x} \in E$, the determinant of the linear operator $\mathbf{f}^{\prime}(\mathbf{x})$ is called the Jacobian of $\mathbf{f}$ at $\mathbf{x}$. In symbols,

$$
J_{\mathbf{f}}(\mathbf{x})=\operatorname{det} \mathbf{f}^{\prime}(\mathbf{x}) .
$$

We shall also use the notation

$$
\frac{\partial\left(y_{1}, \ldots, y_{n}\right)}{\partial\left(x_{1}, \ldots, x_{n}\right)}
$$

for $J_{\mathbf{f}}(\mathbf{x})$, if $\left(y_{1}, \ldots, y_{n}\right)=\mathbf{f}\left(x_{1}, \ldots, x_{n}\right)$.

In terms of Jacobians, the crucial hypothesis in the inverse function theorem is that $J_{\mathbf{f}}(\mathbf{a}) \neq 0$ (compare Theorem 9.36). If the implicit function theorem is stated in terms of the functions (59), the assumption made there on $A$ amounts to

$$
\frac{\partial\left(f_{1}, \ldots, f_{n}\right)}{\partial\left(x_{1}, \ldots, x_{n}\right)} \neq 0
$$

