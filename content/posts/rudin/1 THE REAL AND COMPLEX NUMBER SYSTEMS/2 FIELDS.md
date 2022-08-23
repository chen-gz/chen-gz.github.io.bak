---
title: 2 FIELDS.md
date: 2022-08-11
---

**$1.12$ Definition** A field is a set $F$ with two operations, called addition and multiplication, which satisfy the following so-called "field axioms" (A), (M), and (D):

(A) Axioms for addition

(A1) If $x \in F$ and $y \in F$, then their sum $x+y$ is in $F$.

(A2) Addition is commutative: $x+y=y+x$ for all $x, y \in F$.

(A3) Addition is associative: $(x+y)+z=x+(y+z)$ for all $x, y, z \in F$.

(A4) $F$ contains an element 0 such that $0+x=x$ for every $x \in F$.

(A5) To every $x \in F$ corresponds an element $-x \in F$ such that

$$
x+(-x)=0
$$

(M) Axioms for multiplication

(M1) If $x \in F$ and $y \in F$, then their product $x y$ is in $F$.

(M2) Multiplication is commutative: $x y=y x$ for all $x, y \in F$.

(M3) Multiplication is associative: $(x y) z=x(y z)$ for all $x, y, z \in F$.

(M4) $F$ contains an element $1 \neq 0$ such that $1 x=x$ for every $x \in F$.

(M5) If $x \in F$ and $x \neq 0$ then there exists an element $1 / x \in F$ such that

$$
x \cdot(1 / x)=1 \text {. }
$$

(D) The distributive law

$$
x(y+z)=x y+x z
$$
holds for all $x, y, z \in F$.

**$1.13$ Remarks**

(a) One usually writes (in any field)

$$
x-y, \frac{x}{y}, x+y+z, x y z, x^{2}, x^{3}, 2 x, 3 x, \ldots
$$

in place of

$$
x+(-y), x \cdot\left(\frac{1}{y}\right),(x+y)+z,(x y) z, x x, x x x, x+x, x+x+x, \ldots
$$

(b) The field axioms clearly hold in $Q$, the set of all rational numbers, if addition and multiplication have their customary meaning. Thus $Q$ is a field.

(c) Although it is not our purpose to study fields (or any other algebraic structures) in detail, it is worthwhile to prove that some familiar properties of $Q$ are consequences of the field axioms; once we do this, we will not need to do it again for the real numbers and for the complex numbers.


**1.14 Proposition** *The axioms for addition imply the following statements.
(a) If $x+y=x+z$ then $y=z$.<br>
(b) If $x+y=x$ then $y=0$.<br>
(c) If $x+y=0$ then $y=-x$.<br>
(d) $-(-x)=x$.<br>*

Statement (a) is a cancellation law. Note that $(b)$ asserts the uniqueness of the element whose existence is assumed in (A4), and that (c) does the same for (A5).

**Proof** If $x+y=x+z$, the axioms (A) give
$$
\begin{aligned}
y=0+y &=(-x+x)+y=-x+(x+y) \\
&=-x+(x+z)=(-x+x)+z=0+z=z
\end{aligned}
$$
This proves (a). Take $z=0$ in $(a)$ to obtain $(b)$. Take $z=-x$ in (a) to obtain $(c)$.
Since $-x+x=0,(c)$ (with $-x$ in place of $x$ ) gives $(d)$

**1.15 Proposition** *The axioms for multiplication imply the following statements.
(a) If $x \neq 0$ and $x y=x z$ then $y=z$.<br>
(b) If $x \neq 0$ and $x y=x$ then $y=1$.<br>
(c) If $x \neq 0$ and $x y=1$ then $y=1 / x$.<br>
(d) If $x \neq 0$ then $1 /(1 / x)=x$.<br>*

The proof is so similar to that of Proposition $1.14$ that we omit it.

**1.16 Proposition** *The field axioms imply the following statements, for any $x, y$, $z \in F$
(a) $0 x=0$<br>
(b) If $x \neq 0$ and $y \neq 0$ then $x y \neq 0$.<br>
(c) $(-x) y=-(x y)=x(-y)$.<br>
(d) $(-x)(-y)=x y$.<br>*

**Proof** $0 x+0 x=(0+0) x=0 x$. Hence $1.14(b)$ implies that $0 x=0$, and (a) holds.
Next, assume $x \neq 0, y \neq 0$, but $x y=0$. Then (a) gives
$$
1=\left(\frac{1}{y}\right)\left(\frac{1}{x}\right) x y=\left(\frac{1}{y}\right)\left(\frac{1}{x}\right) 0=0,
$$
a contradiction. Thus $(b)$ holds.

The first equality in $(c)$ comes from
$$
(-x) y+x y=(-x+x) y=0 y=0,
$$
combined with $1.14(c)$; the other half of $(c)$ is proved in the same way. Finally,
$$
(-x)(-y)=-[x(-y)]=-[-(x y)]=x y
$$
by $(c)$ and $1.14(d)$.

**1.17 Definition** 
An ordered field is a field $F$ which is also an ordered set, such that<br>
(i) $x+y<x+z$ if $x, y, z \in F$ and $y<z$,<br>
(ii) $x y>0$ if $x \in F, y \in F, x>0$, and $y>0$.<br>
If $x>0$, we call $x$ positive; if $x<0, x$ is negative.

For example, $Q$ is an ordered field.
All the familiar rules for working with inequalities apply in every ordered field: Multiplication by positive [negative] quantities preserves [reverses] inequalities, no square is negative, etc. The following proposition lists some of these.

**1.18 Proposition** *The following statements are true in every ordered field.<br>
(a) If $x>0$ then $-x<0$, and vice versa.<br>
(b) If $x>0$ and $y<z$ then $x y<x z$.<br>
(c) If $x<0$ and $y<z$ then $x y>x z$.<br>
(d) If $x \neq 0$ then $x^{2}>0$. In particular, $1>0$.<br>
(e) If $0<x<y$ then $0<1 / y<1 / x$.<br>*

**Proof**
(a) If $x>0$ then $0=-x+x>-x+0$, so that $-x<0$. If $x<0$ then $0=-x+x<-x+0$, so that $-x>0$. This proves $(a)$.
(b) Since $z>y$, we have $z-y>y-y=0$, hence $x(z-y)>0$, and therefore
$$
x z=x(z-y)+x y>0+x y=x y .
$$
(c) By $(a),(b)$, and Proposition 1.16(c),
$$
-[x(z-y)]=(-x)(z-y)>0,
$$
so that $x(z-y)<0$, hence $x z<x y$.

(d) If $x>0$, part (ii) of Definition $1.17$ gives $x^{2}>0$. If $x<0$, then $-x>0$, hence $(-x)^{2}>0$. But $x^{2}=(-x)^{2}$, by Proposition $1.16(d)$. Since $1=1^{2}, 1>0$.

(e) If $y>0$ and $v \leq 0$, then $y v \leq 0$. But $y \cdot(1 / y)=1>0$. Hence $1 / y>0$. Likewise, $1 / x>0$. If we multiply both sides of the inequality $x<y$ by the positive quantity $(1 / x)(1 / y)$, we obtain $1 / y<1 / x$.