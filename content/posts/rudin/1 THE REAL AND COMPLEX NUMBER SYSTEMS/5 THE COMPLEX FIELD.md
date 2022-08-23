---
title: 5 THE COMPLEX FIELD
date: 2022-08-15
---


**1.24 Definition** A complex number is an ordered pair $(a, b)$ of real numbers. "Ordered" means that $(a, b)$ and $(b, a)$ are regarded as distinct if $a \neq b$.

Let $x=(a, b), y=(c, d)$ be two complex numbers. We write $x=y$ if and only if $a=c$ and $b=d$. (Note that this definition is not entirely superfluous; think of equality of rational numbers, represented as quotients of integers.) We define

$$
\begin{aligned}
x+y &=(a+c, b+d), \\
x y &=(a c-b d, a d+b c) .
\end{aligned}
$$

**$1.25$ Theorem** These definitions of addition and multiplication turn the set of all complex numbers into a field, with $(0,0)$ and $(1,0)$ in the role of 0 and $1 .$

Proof We simply verify the field axioms, as listed in Definition 1.12. (Of course, we use the field structure of $R$.)

Let $x=(a, b), y=(c, d), z=(e, f)$.

(A1) is clear.

(A2) $x+y=(a+c, b+d)=(c+a, d+b)=y+x$. (A3) $(x+y)+z=(a+c, b+d)+(e, f)$

$$
=(a+c+e, b+d+f)
$$

$$
\begin{aligned}
& =(a, b)+(c+e, d+f)=x+(y+z) \text {. }
\end{aligned}
$$

(A4) $x+0=(a, b)+(0,0)=(a, b)=x$.

(A5) Put $-x=(-a,-b)$. Then $x+(-x)=(0,0)=0$.

(M1) is clear.

(M2) $x y=(a c-b d, a d+b c)=(c a-d b, d a+c b)=y x$.

(M3) $(x y) z=(a c-b d, a d+b c)(e, f)$

$$
=(a c e-b d e-a d f-b c f, a c f-b d f+a d e+b c e)
$$

$$
\begin{aligned}
& =(a, b)(c e-d f, c f+d e)=x(y z) \text {. }
\end{aligned}
$$

(M4) $1 x=(1,0)(a, b)=(a, b)=x$.

(M5) If $x \neq 0$ then $(a, b) \neq(0,0)$, which means that at least one of the real numbers $a, b$ is different from 0 . Hence $a^{2}+b^{2}>0$, by Proposition $1.18(d)$, and we can define

$$
\frac{1}{x}=\left(\frac{a}{a^{2}+b^{2}}, \frac{-b}{a^{2}+b^{2}}\right) .
$$

Then

$$
x \cdot \frac{1}{x}=(a, b)\left(\frac{a}{a^{2}+b^{2}}, \frac{-b}{a^{2}+b^{2}}\right)=(1,0)=1 .
$$

(D) $x(y+z)=(a, b)(c+e, d+f)$

$$
\begin{aligned}
&=(a c+a e-b d-b f, a d+a f+b c+b e) \\
&=(a c-b d, a d+b c)+(a e-b f, a f+b e) \\
&=x y+x z .
\end{aligned}
$$

**$1.26$ Theorem** For any real numbers $a$ and $b$ we have

$$
(a, 0)+(b, 0)=(a+b, 0), \quad(a, 0)(b, 0)=(a b, 0) \text {. }
$$

The proof is trivial.

Theorem $1.26$ shows that the complex numbers of the form $(a, 0)$ have the same arithmetic properties as the corresponding real numbers $a$. We can therefore identify $(a, 0)$ with $a$. This identification gives us the real field as a subfield of the complex field.

The reader may have noticed that we have defined the complex numbers without any reference to the mysterious square root of $-1$. We now show that the notation $(a, b)$ is equivalent to the more customary $a+b i$.

**1.27 Definition** $i=(0,1)$. 

**$1.28$ Theorem** $i^{2}=-1$.

Proof $i^{2}=(0,1)(0,1)=(-1,0)=-1$.

**1.29 Theorem** If $a$ and $b$ are real, then $(a, b)=a+b i$.

Proof

$$
\begin{aligned}
a+b i &=(a, 0)+(b, 0)(0,1) \\
&=(a, 0)+(0, b)=(a, b) .
\end{aligned}
$$

**1.30 Definition** If $a, b$ are real and $z=a+b i$, then the complex number $\bar{z}=a-b i$ is called the conjugate of $z$. The numbers $a$ and $b$ are the real part and the imaginary part of $z$, respectively.

We shall occasionally write

$$
a=\operatorname{Re}(z), \quad b=\operatorname{Im}(z) .
$$

**1.31 Theorem** If $z$ and $w$ are complex, then}
(a) $\overline{z+w}=\bar{z}+\bar{w}$
(b) $\overline{z w}=\bar{z} \cdot \bar{w}$
(c) $z+\bar{z}=2 \operatorname{Re}(z), z-\bar{z}=2 i \operatorname{Im}(z)$,
(d) $z \bar{z}$ is real and positive (except when $z=0$ ).

Proof $(a),(b)$, and $(c)$ are quite trivial. To prove $(d)$, write $z=a+b i$, and note that $z \bar{z}=a^{2}+b^{2}$.

**1.32 Definition** If $z$ is a complex number, its absolute value $|z|$ is the nonnegative square root of $z \bar{z}$; that is, $|z|=(z \bar{z})^{1 / 2}$.

The existence (and uniqueness) of $|z|$ follows from Theorem $1.21$ and part $(d)$ of Theorem $1.31$.

Note that when $x$ is real, then $\bar{x}=x$, hence $|x|=\sqrt{x^{2}}$. Thus $|x|=x$ if $x \geq 0,|x|=-x$ if $x<0$.

**$1.33$ Theorem** Let $z$ and $w$ be complex numbers. Then
(a) $|z|>0$ unless $z=0,|0|=0$,
(b) $|\bar{z}|=|z|$,
(c) $|z w|=|z||w|$,
(d) $|\operatorname{Re} z| \leq|z|$
(e) $|z+w| \leq|z|+|w|$. Proof $(a)$ and $(b)$ are trivial. Put $z=a+b i, w=c+d i$, with $a, b, c, d$ real. Then

$$
|z w|^{2}=(a c-b d)^{2}+(a d+b c)^{2}=\left(a^{2}+b^{2}\right)\left(c^{2}+d^{2}\right)=|z|^{2}|w|^{2}
$$

or $|z w|^{2}=(|z||w|)^{2}$. Now (c) follows from the uniqueness assertion of Theorem $1.21$.

To prove $(d)$, note that $a^{2} \leq a^{2}+b^{2}$, hence

$$
|a|=\sqrt{a^{2}} \leq \sqrt{a^{2}+b^{2}} .
$$

To prove $(e)$, note that $\bar{z} w$ is the conjugate of $z \bar{w}$, so that $z \bar{w}+\bar{z} w=$ $2 \operatorname{Re}(z \bar{w})$. Hence

$$
\begin{aligned}
|z+w|^{2} &=(z+w)(\bar{z}+\bar{w})=z \bar{z}+z \bar{w}+\bar{z} w+w \bar{w} \\
&=|z|^{2}+2 \operatorname{Re}(z \bar{w})+|w|^{2} \\
& \leq|z|^{2}+2|z \bar{w}|+|w|^{2} \\
&=|z|^{2}+2|z||w|+|w|^{2}=(|z|+|w|)^{2}
\end{aligned}
$$

Now $(e)$ follows by taking square roots.


**$1.34$ Notation** If $x_{1}, \ldots, x_{n}$ are complex numbers, we write

$$
x_{1}+x_{2}+\cdots+x_{n}=\sum_{j=1}^{n} x_{j} .
$$

We conclude this section with an important inequality, usually known as the Schwarz inequality.

**$1.35$ Theorem** If $a_{1}, \ldots, a_{n}$ and $b_{1}, \ldots, b_{n}$ are complex numbers, then

$$
\left|\sum_{j=1}^{n} a_{j} \bar{b}_{j}\right|^{2} \leq \sum_{j=1}^{n}\left|a_{j}\right|^{2} \sum_{j=1}^{n}\left|b_{j}\right|^{2} .
$$

Proof Put $A=\Sigma\left|a_{j}\right|^{2}, B=\Sigma\left|b_{j}\right|^{2}, C=\Sigma a_{j} b_{j}$ (in all sums in this proof, $j$ runs over the values $1, \ldots, n$ ). If $B=0$, then $b_{1}=\cdots=b_{n}=0$, and the conclusion is trivial. Assume therefore that $B>0$. By Theorem $1.31$ we have

$$
\begin{aligned}
\sum\left|B a_{j}-C b_{j}\right|^{2} &=\sum\left(B a_{j}-C b_{j}\right)\left(B \bar{a}_{j}-\overline{C b_{j}}\right) \\
&=B^{2} \sum\left|a_{j}\right|^{2}-B \bar{C} \sum a_{j} \bar{b}_{j}-B C \sum \bar{a}_{j} b_{j}+|C|^{2} \sum\left|b_{j}\right|^{2} \\
&=B^{2} A-B|C|^{2} \\
&=B\left(A B-|C|^{2}\right) .
\end{aligned}
$$

Since each term in the first sum is nonnegative, we see that

$$
B\left(A B-|C|^{2}\right) \geq 0 \text {. }
$$

Since $B>0$, it follows that $A B-|C|^{2} \geq 0$. This is the desired inequality.

