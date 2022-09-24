---
title: 1 FINITE, COUNTABLE, AND UNCOUNTABLE SETS
date: 2022-08-20
---

We begin this section with a definition of the function concept.

**2.1 Definition** Consider two sets $A$ and $B$, whose elements may be any objects whatsoever, and suppose that with each element $x$ of $A$ there is associated, in some manner, an element of $B$, which we denote by $f(x)$. Then $f$ is said to be a function from $A$ to $B$ (or a mapping of $A$ into $B$ ). The set $A$ is called the domain of $f$ (we also say $f$ is defined on $A$ ), and the elements $f(x)$ are called the values of $f$. The set of all values of $f$ is called the range of $f$.

**$2.2$ Definition** Let $A$ and $B$ be two sets and let $f$ be a mapping of $A$ into $B$. If $E \subset A, f(E)$ is defined to be the set of all elements $f(x)$, for $x \in E$. We call $f(E)$ the image of $E$ under $f$. In this notation, $f(A)$ is the range of $f$. It is clear that $f(A) \subset B$. If $f(A)=B$, we say that $f$ maps $A$ onto $B$. (Note that, according to this usage, onto is more specific than into.)

If $E \subset B, f^{-1}(E)$ denotes the set of all $x \in A$ such that $f(x) \in E$. We call $f^{-1}(E)$ the inverse image of $E$ under $f$. If $y \in B, f^{-1}(y)$ is the set of all $x \in A$ such that $f(x)=y$. If, for each $y \in B, f^{-1}(y)$ consists of at most one element of $A$, then $f$ is said to be a 1-1 (one-to-one) mapping of $A$ into $B$. This may also be expressed as follows: $f$ is a 1-1 mapping of $A$ into $B$ provided that $f\left(x_{1}\right) \neq f\left(x_{2}\right)$ whenever $x_{1} \neq x_{2}, x_{1} \in A, x_{2} \in A$.

(The notation $x_{1} \neq x_{2}$ means that $x_{1}$ and $x_{2}$ are distinct elements; otherwise we write $x_{1}=x_{2}$.)

**2.3 Definition** If there exists a 1-1 mapping of $A$ onto $B$, we say that $A$ and $B$ can be put in 1-1 correspondence, or that $A$ and $B$ have the same cardinal number, or, briefly, that $A$ and $B$ are equivalent, and we write $A \sim B$. This relation clearly has the following properties:

It is reflexive: $A \sim A$.

It is symmetric: If $A \sim B$, then $B \sim A$.

It is transitive: If $A \sim B$ and $B \sim C$, then $A \sim C$.

Any relation with these three properties is called an equivalence relation.

**2.4 Definition** For any positive integer $n$, let $J_{n}$ be the set whose elements are the integers $1,2, \ldots, n$; let $J$ be the set consisting of all positive integers. For any set $A$, we say:

(a) $A$ is finite if $A \sim J_{n}$ for some $n$ (the empty set is also considered to be finite).

(b) $A$ is infinite if $A$ is not finite.

(c) $A$ is countable if $A \sim J$.

(d) $A$ is uncountable if $A$ is neither finite nor countable.

(e) $A$ is at most countable if $A$ is finite or countable.

Countable sets are sometimes called enumerable, or denumerable.

For two finite sets $A$ and $B$, we evidently have $A \sim B$ if and only if $A$ and $B$ contain the same number of elements. For infinite sets, however, the idea of "having the same number of elements" becomes quite vague, whereas the notion of $1-1$ correspondence retains its clarity.

**2.5 Example** Let $A$ be the set of all integers. Then $A$ is countable. For, consider the following arrangement of the sets $A$ and $J$ :

$$
\begin{array}{ll}
A: & 0,1,-1,2,-2,3,-3, \ldots \\
J: & 1,2,3,4,5,6,7, \ldots
\end{array}
$$

We can, in this example, even give an explicit formula for a function $f$ from $J$ to $A$ which sets up a 1-1 correspondence:

$$
f(n)= \begin{cases}\frac{n}{2} & \text { ( } n \text { even), } \\ -\frac{n-1}{2} & \text { (n odd). }\end{cases}
$$

**2.6 Remark** A finite set cannot be equivalent to one of its proper subsets. That this is, however, possible for infinite sets, is shown by Example $2.5$, in which $J$ is a proper subset of $A$.

In fact, we could replace Definition $2.4(b)$ by the statement: $A$ is infinite if $A$ is equivalent to one of its proper subsets.

**2.7 Definition** By a sequence, we mean a function $f$ defined on the set $J$ of all positive integers. If $f(n)=x_{n}$, for $n \in J$, it is customary to denote the sequence $f$ by the symbol $\left\{x_{n}\right\}$, or sometimes by $x_{1}, x_{2}, x_{3}, \ldots$. The values of $f$, that is, the elements $x_{n}$, are called the terms of the sequence. If $A$ is a set and if $x_{n} \in A$ for all $n \in J$, then $\left\{x_{n}\right\}$ is said to be a sequence in $A$, or a sequence of elements of $A$.

Note that the terms $x_{1}, x_{2}, x_{3}, \ldots$ of a sequence need not be distinct.

Since every countable set is the range of a 1-1 function defined on $J$, we may regard every countable set as the range of a sequence of distinct terms. Speaking more loosely, we may say that the elements of any countable set can be "arranged in a sequence."

Sometimes it is convenient to replace $J$ in this definition by the set of all nonnegative integers, i.e., to start with 0 rather than with 1 .

**2.8 Theorem** Every infinite subset of a countable set $A$ is countable.

Proof Suppose $E \subset A$, and $E$ is infinite. Arrange the elements $x$ of $A$ in a sequence $\left\{x_{n}\right\}$ of distinct elements. Construct a sequence $\left\{n_{k}\right\}$ as follows:

Let $n_{1}$ be the smallest positive integer such that $x_{n_{1}} \in E$. Having chosen $n_{1}, \ldots, n_{k-1}(k=2,3,4, \ldots)$, let $n_{k}$ be the smallest integer greater than $n_{k-1}$ such that $x_{n_{k}} \in E$.

Putting $f(k)=x_{n_{k}}(k=1,2,3, \ldots)$, we obtain a 1-1 correspondence between $E$ and $J$.

The theorem shows that, roughly speaking, countable sets represent the "smallest" infinity: No uncountable set can be a subset of a countable set.

**2.9 Definition** Let $A$ and $\Omega$ be sets, and suppose that with each element $\alpha$ of $A$ there is associated a subset of $\Omega$ which we denote by $E_{\alpha}$. The set whose elements are the sets $E_{\alpha}$ will be denoted by $\left\{E_{\alpha}\right\}$. Instead of speaking of sets of sets, we shall sometimes speak of a collection of sets, or a family of sets.

The union of the sets $E_{\alpha}$ is defined to be the set $S$ such that $x \in S$ if and only if $x \in E_{\alpha}$ for at least one $\alpha \in A$. We use the notation

$$
S=\bigcup_{\alpha \in A} E_{\alpha} .
$$

If $A$ consists of the integers $1,2, \ldots, n$, one usually writes

$$
S=\bigcup_{m=1}^{n} E_{m}
$$

or

$$
S=E_{1} \cup E_{2} \cup \cdots \cup E_{n} .
$$

If $A$ is the set of all positive integers, the usual notation is

$$
S=\bigcup_{m=1}^{\infty} E_{m} .
$$

The symbol $\infty$ in (4) merely indicates that the union of a countable collection of sets is taken, and should not be confused with the symbols $+\infty,-\infty$, introduced in Definition $1.23 .$

The intersection of the sets $E_{\alpha}$ is defined to be the set $P$ such that $x \in P$ if and only if $x \in E_{\alpha}$ for every $\alpha \in A$. We use the notation

$$
P=\bigcap_{\alpha \in A} E_{\alpha},
$$

or

$$
P=\bigcap_{m=1}^{n} E_{m}=E_{1} \cap E_{2} \cap \cdots \cap E_{n},
$$

or

$$
P=\bigcap_{m=1}^{\infty} E_{m},
$$

as for unions. If $A \cap B$ is not empty, we say that $A$ and $B$ intersect; otherwise they are disjoint.

**$2.10$ Examples**

(a) Suppose $E_{1}$ consists of $1,2,3$ and $E_{2}$ consists of $2,3,4$. Then $E_{1} \cup E_{2}$ consists of $1,2,3,4$, whereas $E_{1} \cap E_{2}$ consists of 2,3 . (b) Let $A$ be the set of real numbers $x$ such that $0<x \leq 1$. For every $x \in A$, let $E_{x}$ be the set of real numbers $y$ such that $0<y<x$. Then

$$
\begin{gathered}
E_{x} \subset E_{z} \text { if and only if } 0<x \leq z \leq 1 ; \\
\bigcup_{\substack{x \in A}} E_{x}=E_{1} ; \\
\bigcap_{x} \text { is empty; }
\end{gathered}
$$

(i) and (ii) are clear. To prove (iii), we note that for every $y>0, y \notin E_{x}$ if $x<y$. Hence $y \notin \bigcap_{x \in A} E_{x}$.

**2.11 Remarks** Many properties of unions and intersections are quite similar to those of sums and products; in fact, the words sum and product were sometimes used in this connection, and the symbols $\Sigma$ and $\Pi$ were written in place of $\bigcup$ and $\bigcap$.

The commutative and associative laws are trivial:

$$
\begin{array}{cc}
A \cup B=B \cup A ; & A \cap B=B \cap A . \\
(A \cup B) \cup C=A \cup(B \cup C) ; & (A \cap B) \cap C=A \cap(B \cap C) .
\end{array}
$$

Thus the omission of parentheses in (3) and (6) is justified.

The distributive law also holds:

$$
A \cap(B \cup C)=(A \cap B) \cup(A \cap C) .
$$

To prove this, let the left and right members of (10) be denoted by $E$ and $F$, respectively.

Suppose $x \in E$. Then $x \in A$ and $x \in B \cup C$, that is, $x \in B$ or $x \in C$ (possibly both). Hence $x \in A \cap B$ or $x \in A \cap C$, so that $x \in F$. Thus $E \subset F$.

Next, suppose $x \in F$. Then $x \in A \cap B$ or $x \in A \cap C$. That is, $x \in A$, and $x \in B \cup C$. Hence $x \in A \cap(B \cup C)$, so that $F \subset E$.

It follows that $E=F$.

We list a few more relations which are easily verified:

$$
\begin{aligned}
&A \subset A \cup B, \\
&A \cap B \subset A .
\end{aligned}
$$

If 0 denotes the empty set, then

$$
A \cup 0=A, \quad A \cap 0=0 .
$$

If $A \subset B$, then

$$
A \cup B=B, \quad A \cap B=A \text {. }
$$

**2.12 Theorem** Let $\left\{E_{n}\right\}, n=1,2,3, \ldots$, be a sequence of countable sets, and put

Then $S$ is countable.

$$
S=\bigcup_{n=1}^{\infty} E_{n} .
$$

Proof Let every set $E_{n}$ be arranged in a sequence $\left\{x_{n k}\right\}, k=1,2,3, \ldots$, and consider the infinite array

![](https://cdn.mathpix.com/cropped/2022_08_20_aff89fd7afc23d2ff808g-06.jpg?height=797&width=2191&top_left_y=2086&top_left_x=2060)

in which the elements of $E_{n}$ form the $n$th row. The array contains all elements of $S$. As indicated by the arrows, these elements can be arranged in a sequence

$$
x_{11} ; x_{21}, x_{12} ; x_{31}, x_{22}, x_{13} ; x_{41}, x_{32}, x_{23}, x_{14} ; \ldots
$$

If any two of the sets $E_{n}$ have elements in common, these will appear more than once in (17). Hence there is a subset $T$ of the set of all positive integers such that $S \sim T$, which shows that $S$ is at most countable (Theorem 2.8). Since $E_{1} \subset S$, and $E_{1}$ is infinite, $S$ is infinite, and thus countable.

**Corollary** Suppose $A$ is at most countable, and, for every $\alpha \in A, B_{\alpha}$ is at most countable. Put

$$
T=\bigcup_{\alpha \in A} B_{\alpha} .
$$

Then $T$ is at most countable.

For $T$ is equivalent to a subset of $(15)$.

**2.13 Theorem** Let $A$ be a countable set, and let $B_{n}$ be the set of all n-tuples $\left(a_{1}, \ldots, a_{n}\right)$, where $a_{k} \in A(k=1, \ldots, n)$, and the elements $a_{1}, \ldots, a_{n}$ need not be distinct. Then $B_{n}$ is countable.

Proof That $B_{1}$ is countable is evident, since $B_{1}=A$. Suppose $B_{n-1}$ is countable $(n=2,3,4, \ldots)$. The elements of $B_{n}$ are of the form

$$
(b, a) \quad\left(b \in B_{n-1}, a \in A\right) \text {. }
$$

For every fixed $b$, the set of pairs $(b, a)$ is equivalent to $A$, and hence countable. Thus $B_{n}$ is the union of a countable set of countable sets. By Theorem $2.12, B_{n}$ is countable.

The theorem follows by induction. 

**Corollary** The set of all rational numbers is countable.

Proof We apply Theorem $2.13$, with $n=2$, noting that every rational $r$ is of the form $b / a$, where $a$ and $b$ are integers. The set of pairs $(a, b)$, and therefore the set of fractions $b / a$, is countable.

In fact, even the set of all algebraic numbers is countable (see Exercise 2$)$

That not all infinite sets are, however, countable, is shown by the next theorem.

**2.14 Theorem** Let $A$ be the set of all sequences whose elements are the digits 0 and 1. This set $A$ is uncountable.

The elements of $A$ are sequences like $1,0,0,1,0,1,1,1, \ldots$

Proof Let $E$ be a countable subset of $A$, and let $E$ consist of the sequences $s_{1}, s_{2}, s_{3}, \ldots$ We construct a sequence $s$ as follows. If the $n$th digit in $s_{n}$ is 1 , we let the $n$th digit of $s$ be 0 , and vice versa. Then the sequence $s$ differs from every member of $E$ in at least one place; hence $s \notin E$. But clearly $s \in A$, so that $E$ is a proper subset of $A$.

We have shown that every countable subset of $A$ is a proper subset of $A$. It follows that $A$ is uncountable (for otherwise $A$ would be a proper subset of $A$, which is absurd).

The idea of the above proof was first used by Cantor, and is called Cantor's diagonal process; for, if the sequences $s_{1}, s_{2}, s_{3}, \ldots$ are placed in an array like (16), it is the elements on the diagonal which are involved in the construction of the new sequence.

Readers who are familiar with the binary representation of the real numbers (base 2 instead of 10 ) will notice that Theorem $2.14$ implies that the set of all real numbers is uncountable. We shall give a second proof of this fact in Theorem $2.43 .$
