---
title: 1 DISCUSSION OF MAIN PROBLEM
date: 2022-07-30
---

**7.1 Definition** Suppose $\left\{f_{n}\right\}, n=1,2,3, \ldots$, is a sequence of functions defined on a set $E$, and suppose that the sequence of numbers $\left\{f_{n}(x)\right\}$ converges for every $x \in E$. We can then define a function $f$ by
$$
f(x)=\lim _{n \rightarrow \infty} f_{n}(x) \quad(x \in E) .
$$

Under these circumstances we say that $\left\{f_{n}\right\}$ converges on $E$ and that $f$ is the limit, or the limit function, of $\left\{f_{n}\right\}$. Sometimes we shall use a more descriptive terminology and shall say that " $\left\{f_{n}\right\}$ converges to $f$ point-wise on $E$ " if (1) holds. Similarly, if $\Sigma f_{n}(x)$ converges for every $x \in E$, and if we define

$$
f(x)=\sum_{n=1}^{\infty} f_{n}(x) \quad(x \in E),
$$

the function $f$ is called the sum of the series $\Sigma f_{n}$.

The main problem which arises is to determine whether important properties of functions are preserved under the limit operations (1) and (2). For instance, if the functions $f_{n}$ are continuous, or differentiable, or integrable, is the same true of the limit function? What are the relations between $f_{n}^{\prime}$ and $f^{\prime}$, say, or between the integrals of $f_{n}$ and that of $f$ ?

To say that $f$ is continuous at a limit point $x$ means

$$
\lim _{t \rightarrow x} f(t)=f(x) .
$$

Hence, to ask whether the limit of a sequence of continuous functions is continuous is the same as to ask whether

$$
\lim _{t \rightarrow x} \lim _{n \rightarrow \infty} f_{n}(t)=\lim _{n \rightarrow \infty} \lim _{t \rightarrow x} f_{n}(t),
$$

i.e., whether the order in which limit processes are carried out is immaterial. On the left side of (3), we first let $n \rightarrow \infty$, then $t \rightarrow x$; on the right side, $t \rightarrow x$ first, then $n \rightarrow \infty$.

We shall now show by means of several examples that limit processes cannot in general be interchanged without affecting the result. Afterward, we shall prove that under certain conditions the order in which limit operations are carried out is immaterial.

Our first example, and the simplest one, concerns a "double sequence."

**7.2 Example** For $m=1,2,3, \ldots, n=1,2,3, \ldots$, let
$$
s_{m, n}=\frac{m}{m+n} .
$$

Then, for every fixed $n$,

$$
\lim _{m \rightarrow \infty} s_{m, n}=1,
$$

so that

$$
\lim _{n \rightarrow \infty} \lim _{m \rightarrow \infty} s_{m, n}=1 .
$$

On the other hand, for every fixed $m$,

$$
\lim _{n \rightarrow \infty} s_{m, n}=0,
$$

so that

$$
\lim _{m \rightarrow \infty} \lim _{n \rightarrow \infty} s_{m, n}=0 .
$$

**$7.3$ Example** Let
$$
f_{n}(x)=\frac{x^{2}}{\left(1+x^{2}\right)^{n}} \quad(x \text { real; } n=0,1,2, \ldots),
$$

and consider

$$
f(x)=\sum_{n=0}^{\infty} f_{n}(x)=\sum_{n=0}^{\infty} \frac{x^{2}}{\left(1+x^{2}\right)^{n}} .
$$

Since $f_{n}(0)=0$, we have $f(0)=0$. For $x \neq 0$, the last series in (6) is a convergent geometric series with sum $1+x^{2}$ (Theorem 3.26). Hence

$$
f(x)= \begin{cases}0 & (x=0) \\ 1+x^{2} & (x \neq 0)\end{cases}
$$

so that a convergent series of continuous functions may have a discontinuous sum.

**7.4 Example** For $m=1,2,3, \ldots$, put

$$
f_{m}(x)=\lim _{n \rightarrow \infty}(\cos m ! \pi x)^{2 n} .
$$

When $m ! x$ is an integer, $f_{m}(x)=1$. For all other values of $x, f_{m}(x)=0$. Now let

$$
f(x)=\lim _{m \rightarrow \infty} f_{m}(x) .
$$

For irrational $x, f_{m}(x)=0$ for every $m$; hence $f(x)=0$. For rational $x$, say $x=p / q$, where $p$ and $q$ are integers, we see that $m ! x$ is an integer if $m \geq q$, so that $f(x)=1$. Hence

$$
\lim _{m \rightarrow \infty} \lim _{n \rightarrow \infty}(\cos m ! \pi x)^{2 n}= \begin{cases}0 & (x \text { irrational }), \\ 1 & (x \text { rational }) .\end{cases}
$$

We have thus obtained an everywhere discontinuous limit function, which is not Riemann-integrable (Exercise 4, Chap. 6). 

**7.5 Example** Let

$$
f_{n}(x)=\frac{\sin n x}{\sqrt{n}} \quad(x \text { real, } n=1,2,3, \ldots)
$$

and

$$
f(x)=\lim _{n \rightarrow \infty} f_{n}(x)=0 .
$$

Then $f^{\prime}(x)=0$, and

$$
f_{n}^{\prime}(x)=\sqrt{n} \cos n x,
$$

so that $\left\{f_{n}^{\prime}\right\}$ does not converge to $f^{\prime}$. For instance,

$$
f_{n}^{\prime}(0)=\sqrt{n} \rightarrow+\infty
$$

as $n \rightarrow \infty$, whereas $f^{\prime}(0)=0$.

**7.6 Example** Let

$$
f_{n}(x)=n^{2} x\left(1-x^{2}\right)^{n} \quad(0 \leq x \leq 1, n=1,2,3, \ldots) .
$$

For $0<x \leq 1$, we have

$$
\lim _{n \rightarrow \infty} f_{n}(x)=0,
$$

by Theorem $3.20(d)$. Since $f_{n}(0)=0$, we see that

$$
\lim _{n \rightarrow \infty} f_{n}(x)=0 \quad(0 \leq x \leq 1) .
$$

A simple calculation shows that

$$
\int_{0}^{1} x\left(1-x^{2}\right)^{n} d x=\frac{1}{2 n+2} .
$$

Thus, in spite of (11),

$$
\int_{0}^{1} f_{n}(x) d x=\frac{n^{2}}{2 n+2} \rightarrow+\infty
$$

as $n \rightarrow \infty$.

If, in (10), we replace $n^{2}$ by $n,(11)$ still holds, but we now have

$$
\lim _{n \rightarrow \infty} \int_{0}^{1} f_{n}(x) d x=\lim _{n \rightarrow \infty} \frac{n}{2 n+2}=\frac{1}{2},
$$

whereas

$$
\int_{0}^{1}\left[\lim _{n \rightarrow \infty} f_{n}(x)\right] d x=0
$$

Thus the limit of the integral need not be equal to the integral of the limit, even if both are finite.

After these examples, which show what can go wrong if limit processes are interchanged carelessly, we now define a new mode of convergence, stronger than pointwise convergence as defined in Definition 7.1, which will enable us to arrive at positive results.
