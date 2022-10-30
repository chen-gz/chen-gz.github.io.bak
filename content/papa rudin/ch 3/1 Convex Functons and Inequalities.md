---
title: 1 Convex Functions and Inequalities
date: 2022-10-28
---

Many of the most common inequalities in analysis have their origin in the notion of convexity.

### 3.1 Definition

A real function $\varphi$ defined on a segment $(a, b)$, where $-\infty \leq a<b \leq \infty$, is called convex if the inequality

$$
\begin{equation}
\varphi((1-\lambda) x+\lambda y) \leq(1-\lambda) \varphi(x)+\lambda \varphi(y)
\end{equation}
$$

holds whenever $a<x<b, a<y<b$, and $0 \leq \lambda \leq 1$.
Graphically, the condition is that if $x<t<y$, then the point $(t, \varphi(t))$ should lie below or on the line connecting the points $(x, \varphi(x))$ and $(y, \varphi(y))$ in the plane. Also, (1) is equivalent to the requirement that

$$
\begin{equation}
\frac{\varphi(t)-\varphi(s)}{t-s} \leq \frac{\varphi(u)-\varphi(t)}{u-t}
\end{equation}
$$

whenever $a<s<t<u<b$.

The mean value theorem for differentiation, combined with (2), shows immediately that a real differentiable function $\varphi$ is convex in $(a, b)$ if and only if $a<s<t<b$ implies $\varphi^{\prime}(s) \leq \varphi^{\prime}(t)$, i.e., if and only if the derivative $\varphi^{\prime}$ is a monotonically increasing function.

For example, the exponential function is convex on $(-\infty, \infty)$.

### 3.2 Theorem 

If $\varphi$ is convex on $(a, b)$ then $\varphi$ is continuous on $(a, b)$.

Proof The idea of the proof is most easily conveyed in geometric language. Those who may worry that this is not "rigorous" are invited to transcribe it in terms of epsilons and deltas.

Suppose $a<s<x<y<t<b$. Write $S$ for the point $(s, \varphi(s))$ in the plane, and deal similarly with $x, y$, and $t$. Then $X$ is on or below the line $S Y$, hence $Y$ is on or above the line through $S$ and $X$; also, $Y$ is on or below $X T$. As $y \rightarrow x$, it follows that $Y \rightarrow X$, i.e., $\varphi(y) \rightarrow \varphi(x)$. Left-hand limits are handled in the same manner, and the continuity of $\varphi$ follows.

Note that this theorem depends on the fact that we are working on an open segment. For instance, if $\varphi(x)=0$ on $[0,1)$ and $\varphi(1)=1$, then $\varphi$ satisfies 3.1(1) on $[0,1]$ without being continuous.



### 3.3 Theorem (Jensen's Inequality) 

Let $\mu$ be a positive measure on a $\sigma$-algebra $\mathfrak{M}$ in a set $\Omega$, so that $\mu(\Omega)=1$. Iff is a real function in $L^1(\mu)$, if $a<f(x)<b$ for all $x \in \Omega$, and if $\varphi$ is convex on $(a, b)$, then

$$
\varphi\left(\int_{\Omega} f d \mu\right) \leq \int_{\Omega}(\varphi \circ f) d \mu .
$$

Note: The cases $a=-\infty$ and $b=\infty$ are not excluded. It may happen that $\varphi \circ f$ is not in $L^1(\mu)$; in that case, as the proof will show, the integral of $\varphi \circ f$ exists in the extended sense described in Sec. $1.31$, and its value is $+\infty$.

Proof Put $t=\int_{\Omega} f d \mu$. Then $a<t<b$. If $\beta$ is the supremum of the quotients on the left of $3.1(2)$, where $a<s<t$, then $\beta$ is no larger than any of the quotients on the right of $3.1(2)$, for any $u \in(t, b)$. It follows that

$$
\varphi(s) \geq \varphi(t)+\beta(s-t) \quad(a<s<b) .
$$

Hence

$$
\varphi(f(x))-\varphi(t)-\beta(f(x)-t) \geq 0
$$

for every $x \in \Omega$. Since $\varphi$ is continuous, $\varphi \circ f$ is measurable. If we integrate both sides of (3) with respect to $\mu$, (1) follows from our choice of $t$ and the assumption $\mu(\Omega)=1$.

To give an example, take $\varphi(x)=e^x$. Then (1) becomes

$$
\exp \left\{\int_{\Omega} f d \mu\right\} \leq \int_{\Omega} e^f d \mu .
$$

If $\Omega$ is a finite set, consisting of points $p_1, \ldots, p_n$, say, and if

$$
\mu\left(\left\{p_i\right\}\right)=1 / n, \quad f\left(p_i\right)=x_i,
$$

(4) becomes

$$
\exp \left\{\frac{1}{n}\left(x_1+\cdots+x_n\right)\right\} \leq \frac{1}{n}\left(e^{x_1}+\cdots+e^{x_n}\right),
$$

for real $x_i$. Putting $y_i=e^{x_i}$, we obtain the familiar inequality between the arithmetic and geometric means of $n$ positive numbers:

$$
\left(y_1 y_2 \cdots y_n\right)^{1 / n} \leq \frac{1}{n}\left(y_1+y_2+\cdots+y_n\right) .
$$

Going back from this to (4), it should become clear why the left and right sides of

$$
\exp \left\{\int_{\Omega} \log g d \mu\right\} \leq \int_{\Omega} g d \mu
$$

are often called the geometric and arithmetic means, respectively, of the positive function $g$.
If we take $\mu\left(\left\{p_i\right\}\right)=\alpha_i>0$, where $\sum \alpha_i=1$, then we obtain

$$
y_1^{\alpha_1} y_2^{\alpha_2} \cdots y_n^{\alpha_n} \leq \alpha_1 y_1+\alpha_2 y_2+\cdots+\alpha_n y_n
$$

in place of (6). These are just a few samples of what is contained in Theorem 3.3. 

For a converse, see Exercise 20.

### 3.4 Definition

If $p$ and $q$ are positive real numbers such that $p+q=p q$, or equivalently

$$
\frac{1}{p}+\frac{1}{q}=1
$$

then we call $p$ and $q$ a pair of conjugate exponents. It is clear that (1) implies $1<p<\infty$ and $1<q<\infty$. An important special case is $p=q=2$.

As $p \rightarrow 1,(1)$ forces $q \rightarrow \infty$. Consequently 1 and $\infty$ are also regarded as a pair of conjugate exponents. Many analysts denote the exponent conjugate to $p$ by $p^{\prime}$, often without saying so explicitly.

### 3.5 Theorem

Let $p$ and $q$ be conjugate exponents, $1<p<\infty$. Let $X$ be a measure space, with measure $\mu$. Let $f$ and $g$ be measurable functions on $X$, with range in $[0, \infty]$. Then

$$
\int_X f g d \mu \leq\left\{\int_X f^p d \mu\right\}^{1 / p}\left\{\int_X g^q d \mu\right\}^{1 / q}
$$

and

$$
\left\{\int_X(f+g)^p d \mu\right\}^{1 / p} \leq\left\{\int_X f^p d \mu\right\}^{1 / p}+\left\{\int_X g^p d \mu\right\}^{1 / p} .
$$

The inequality (1) is Hölder's; (2) is Minkowski's. If $p=q=2$, (1) is known as the Schwarz inequality.

Proof Let $A$ and $B$ be the two factors on the right of (1). If $A=0$, then $f=0$ a.e. (by Theorem 1.39); hence $f g=0$ a.e., so (1) holds. If $A>0$ and $B=\infty$, (1) is again trivial. So we need consider only the case $0<A<\infty, 0<B<\infty$. Put

$$
F=\frac{f}{A}, \quad G=\frac{g}{B} .
$$

This gives

$$
\int_X F^p d \mu=\int_X G^q d \mu=1 .
$$

If $x \in X$ is such that $0<F(x)<\infty$ and $0<G(x)<\infty$, there are real numbers $s$ and $t$ such that $F(x)=e^{s / p}, G(x)=e^{t / q}$. Since $1 / p+1 / q=1$, the convexity of the exponential function implies that

$$
e^{s / p+t / q} \leq p^{-1} e^s+q^{-1} e^t .
$$

It follows that

$$
F(x) G(x) \leq p^{-1} F(x)^p+q^{-1} G(x)^q
$$

for every $x \in X$. Integration of (6) yields

$$
\int_X F G d \mu \leq p^{-1}+q^{-1}=1,
$$

by (4); inserting (3) into (7), we obtain (1).
Note that (6) could also have been obtained as a special case of the inequality 3.3(8).
To prove (2), we write

$$
(f+g)^p=f \cdot(f+g)^{p-1}+g \cdot(f+g)^{p-1} .
$$

Hölder's inequality gives

$$
\int f \cdot(f+g)^{p-1} \leq\left\{\int f^p\right\}^{1 / p}\left\{\int(f+g)^{(p-1) q}\right\}^{1 / q} .
$$

Let $\left(9^{\prime}\right)$ be the inequality (9) with $f$ and $g$ interchanged. Since $(p-1) q=p$, addition of $(9)$ and $\left(9^{\prime}\right)$ gives

$$
\int(f+g)^p \leq\left\{\int(f+g)^p\right\}^{1 / q}\left[\left\{\int f^p\right\}^{1 / p}+\left\{\int g^p\right\}^{1 / p}\right] .
$$

Clearly, it is enough to prove (2) in the case that the left side is greater than 0 and the right side is less than $\infty$. The convexity of the function $t^p$ for $0<t<\infty$ shows that

$$
\left(\frac{f+g}{2}\right)^p \leq \frac{1}{2}\left(f^p+g^p\right) .
$$

Hence the left side of $(2)$ is less than $\infty$, and (2) follows from (10) if we divide by the first factor on the right of $(10)$, bearing in mind that $1-1 / q=1 / p$. This completes the proof.

It is sometimes useful to know the conditions under which equality can hold in an inequality. In many cases this information may be obtained by examining the proof of the inequality.

For instance, equality holds in (7) if and only if equality holds in (6) for almost every $x$. In (5), equality holds if and only if $s=t$. Hence " $F^p=G^q$ a.e." is a necessary and sufficient condition for equality in (7), if (4) is assumed. In terms of the original functions $f$ and $g$, the following result is then obtained:

Assuming $A<\infty$ and $B<\infty$, equality holds in (1) if and only if there are constants $\alpha$ and $\beta$, not both 0 , such that $\alpha f^p=\beta g^q$ a.e.
We leave the analogous discussion of equality in (2) as an exercise.
