---
title: THE DERIVATIVE OF A REAL FUNCTION
date: 2022-07-26
---

**5.1 Definition** Let $f$ be defined (and real-valued) on $[a, b]$. For any $x \in[a, b]$ form the quotient
$$
\phi(t)=\frac{f(t)-f(x)}{t-x} \quad(a<t<b, t \neq x),
$$

and define

$$
f^{\prime}(x)=\lim _{t \rightarrow x} \phi(t),
$$

provided this limit exists in accordance with Definition 4.1.

We thus associate with the function $f$ a function $f^{\prime}$ whose domain is the set of points $x$ at which the limit (2) exists; $f^{\prime}$ is called the derivative of $f$.

If $f^{\prime}$ is defined at a point $x$, we say that $f$ is differentiable at $x$. If $f^{\prime}$ is defined at every point of a set $E \subset[a, b]$, we say that $f$ is differentiable on $E$.

It is possible to consider right-hand and left-hand limits in (2); this leads to the definition of right-hand and left-hand derivatives. In particular, at the endpoints $a$ and $b$, the derivative, if it exists, is a right-hand or left-hand derivative, respectively. We shall not, however, discuss one-sided derivatives in any detail.

If $f$ is defined on a segment $(a, b)$ and if $a<x<b$, then $f^{\prime}(x)$ is defined by (1) and (2), as above. But $f^{\prime}(a)$ and $f^{\prime}(b)$ are not defined in this case.

**$5.2$ Theorem** Let $f$ be defined on $[a, b]$. If $f$ is differentiable at a point $x \in[a, b]$, then $f$ is continuous at $x$.

Proof As $t \rightarrow x$, we have, by Theorem 4.4,

$$
f(t)-f(x)=\frac{f(t)-f(x)}{t-x} \cdot(t-x) \rightarrow f^{\prime}(x) \cdot 0=0 .
$$
The converse of this theorem is not true. It is easy to construct continuous functions which fail to be differentiable at isolated points. In Chap. 7 we shall even become acquainted with a function which is continuous on the whole line without being differentiable at any point!

**5.3 Theorem** Suppose $f$ and $g$ are defined on $[a, b]$ and are differentiable at a point $x \in[a, b]$. Then $f+g, f g$, and $f / g$ are differentiable at $x$, and

(a) $(f+g)^{\prime}(x)=f^{\prime}(x)+g^{\prime}(x)$

(b) $(f g)^{\prime}(x)=f^{\prime}(x) g(x)+f(x) g^{\prime}(x)$;

(c) $\left(\frac{f}{g}\right)^{\prime}(x)=\frac{g(x) f^{\prime}(x)-g^{\prime}(x) f(x)}{g^{2}(x)}$.

In $(c)$, we assume of course that $g(x) \neq 0$

Proof $(a)$ is clear, by Theorem 4.4. Let $h=f g$. Then

$$
h(t)-h(x)=f(t)[g(t)-g(x)]+g(x)[f(t)-f(x)] .
$$

If we divide this by $t-x$ and note that $f(t) \rightarrow f(x)$ as $t \rightarrow x$ (Theorem 5.2), (b) follows. Next, let $h=f / g$. Then

$$
\frac{h(t)-h(x)}{t-x}=\frac{1}{g(t) g(x)}\left[g(x) \frac{f(t)-f(x)}{t-x}-f(x) \frac{g(t)-g(x)}{t-x}\right] \text {. }
$$

Letting $t \rightarrow x$, and applying Theorems $4.4$ and $5.2$, we obtain $(c)$.

**5.4 Examples** The derivative of any constant is clearly zero. If $f$ is defined by $f(x)=x$, then $f^{\prime}(x)=1$. Repeated application of $(b)$ and $(c)$ then shows that $x^{n}$ is differentiable, and that its derivative is $n x^{n-1}$, for any integer $n$ (if $n<0$, we have to restrict ourselves to $x \neq 0$ ). Thus every polynomial is differentiable, and so is every rational function, except at the points where the denominator is zero.

The following theorem is known as the "chain rule" for differentiation. It deals with differentiation of composite functions and is probably the most important theorem about derivatives. We shall meet more general versions of it in Chap. $9 .$

**5.5 Theorem** Suppose $f$ is continuous on $[a, b], f^{\prime}(x)$ exists at some point $x \in[a, b], g$ is defined on an interval $I$ which contains the range of $f$, and $g$ is differentiable at the point $f(x)$. If
$$
h(t)=g(f(t)) \quad(a \leq t \leq b),
$$

then $h$ is differentiable at $x$, and

$$
h^{\prime}(x)=g^{\prime}(f(x)) f^{\prime}(x)
$$

**Proof** Let $y=f(x)$. By the definition of the derivative, we have
$$
\begin{gathered}
f(t)-f(x)=(t-x)\left[f^{\prime}(x)+u(t)\right], \\
g(s)-g(y)=(s-y)\left[g^{\prime}(y)+v(s)\right]
\end{gathered}
$$

where $t \in[a, b], s \in I$, and $u(t) \rightarrow 0$ as $t \rightarrow x, v(s) \rightarrow 0$ as $s \rightarrow y$. Let $s=f(t)$. Using first (5) and then (4), we obtain

$$
\begin{aligned}
h(t)-h(x) &=g(f(t))-g(f(x)) \\
&=[f(t)-f(x)] \cdot\left[g^{\prime}(y)+v(s)\right] \\
&=(t-x) \cdot\left[f^{\prime}(x)+u(t)\right] \cdot\left[g^{\prime}(y)+v(s)\right],
\end{aligned}
$$

or, if $t \neq x$,

$$
\frac{h(t)-h(x)}{t-x}=\left[g^{\prime}(y)+v(s)\right] \cdot\left[f^{\prime}(x)+u(t)\right]
$$

Letting $t \rightarrow x$, we see that $s \rightarrow y$, by the continuity of $f$, so that the right side of $(6)$ tends to $g^{\prime}(y) f^{\prime}(x)$, which gives (3). 

**5.6 Examples**

(a) Let $f$ be defined by

$$
f(x)= \begin{cases}x \sin \frac{1}{x} & (x \neq 0) \\ 0 & (x=0)\end{cases}
$$

Taking for granted that the derivative of $\sin x$ is $\cos x$ (we shall discuss the trigonometric functions in Chap. 8), we can apply Theorems $5.3$ and $5.5$ whenever $x \neq 0$, and obtain
$$
f^{\prime}(x)=\sin \frac{1}{x}-\frac{1}{x} \cos \frac{1}{x} \quad(x \neq 0) .
$$

At $x=0$, these theorems do not apply any longer, since $1 / x$ is not defined there, and we appeal directly to the definition: for $t \neq 0$,

$$
\frac{f(t)-f(0)}{t-0}=\sin \frac{1}{t} .
$$

As $t \rightarrow 0$, this does not tend to any limit, so that $f^{\prime}(0)$ does not exist.

(b) Let $f$ be defined by

$$
f(x)= \begin{cases}x^{2} \sin \frac{1}{x} & (x \neq 0) \\ 0 & (x=0)\end{cases}
$$

As above, we obtain

$$
f^{\prime}(x)=2 x \sin \frac{1}{x}-\cos \frac{1}{x} \quad(x \neq 0)
$$

At $x=0$, we appeal to the definition, and obtain

$$
\left|\frac{f(t)-f(0)}{t-0}\right|=\left|t \sin \frac{1}{t}\right| \leq|t| \quad(t \neq 0)
$$

letting $t \rightarrow 0$, we see that

$$
f^{\prime}(0)=0 .
$$

Thus $f$ is differentiable at all points $x$, but $f^{\prime}$ is not a continuous function, since $\cos (1 / x)$ in (10) does not tend to a limit as $x \rightarrow 0$. 

$$
f^{\prime}(x)=\sin \frac{1}{x}-\frac{1}{x} \cos \frac{1}{x} \quad(x \neq 0) .
$$

At $x=0$, these theorems do not apply any longer, since $1 / x$ is not defined there, and we appeal directly to the definition: for $t \neq 0$,

$$
\frac{f(t)-f(0)}{t-0}=\sin \frac{1}{t} .
$$

As $t \rightarrow 0$, this does not tend to any limit, so that $f^{\prime}(0)$ does not exist.

(b) Let $f$ be defined by

$$
f(x)= \begin{cases}x^{2} \sin \frac{1}{x} & (x \neq 0) \\ 0 & (x=0)\end{cases}
$$

As above, we obtain

$$
f^{\prime}(x)=2 x \sin \frac{1}{x}-\cos \frac{1}{x} \quad(x \neq 0)
$$

At $x=0$, we appeal to the definition, and obtain

$$
\left|\frac{f(t)-f(0)}{t-0}\right|=\left|t \sin \frac{1}{t}\right| \leq|t| \quad(t \neq 0)
$$

letting $t \rightarrow 0$, we see that

$$
f^{\prime}(0)=0 .
$$

Thus $f$ is differentiable at all points $x$, but $f^{\prime}$ is not a continuous function, since $\cos (1 / x)$ in (10) does not tend to a limit as $x \rightarrow 0$. 

