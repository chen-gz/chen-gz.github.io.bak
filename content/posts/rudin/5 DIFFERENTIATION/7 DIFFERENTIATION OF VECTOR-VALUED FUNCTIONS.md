---
title: DIFFERENTIATION OF VECTOR-VALUED FUNCTIONS
date: 2022-07-28
---



**5.16 Remarks** Definition $5.1$ applies without any change to complex functions $f$ defined on $[a, b]$, and Theorems $5.2$ and $5.3$, as well as their proofs, remain valid. If $f_{1}$ and $f_{2}$ are the real and imaginary parts of $f$, that is, if
$$
f(t)=f_{1}(t)+i f_{2}(t)
$$

for $a \leq t \leq b$, where $f_{1}(t)$ and $f_{2}(t)$ are real, then we clearly have

$$
f^{\prime}(x)=f_{1}^{\prime}(x)+i f_{2}^{\prime}(x)
$$

also, $f$ is differentiable at $x$ if and only if both $f_{1}$ and $f_{2}$ are differentiable at $x$. Passing to vector-valued functions in general, i.e., to functions $\mathbf{f}$ which map $[a, b]$ into some $R^{k}$, we may still apply Definition $5.1$ to define $\mathrm{f}^{\prime}(x)$. The term $\phi(t)$ in (1) is now, for each $t$, a point in $R^{k}$, and the limit in (2) is taken with respect to the norm of $R^{k}$. In other words, $f^{\prime}(x)$ is that point of $R^{k}$ (if there is one) for which

$$
\lim _{t \rightarrow x}\left|\frac{f(t)-f(x)}{t-x}-f^{\prime}(x)\right|=0,
$$

and $\mathrm{f}^{\prime}$ is again a function with values in $R^{k}$.

If $f_{1}, \ldots, f_{k}$ are the components of $f$, as defined in Theorem $4.10$, then

$$
\mathbf{f}^{\prime}=\left(f_{1}^{\prime}, \ldots, f_{k}^{\prime}\right),
$$

and $f$ is differentiable at a point $x$ if and only if each of the functions $f_{1}, \ldots, f_{k}$ is differentiable at $x$.

Theorem $5.2$ is true in this context as well, and so is Theorem 5.3(a) and (b), if $f g$ is replaced by the inner product $f \cdot g$ (see Definition 4.3).

When we turn to the mean value theorem, however, and to one of its consequences, namely, L'Hospital's rule, the situation changes. The next two examples will show that each of these results fails to be true for complex-valued functions.

**5.17 Example** Define, for real $x$,
$$
f(x)=e^{i x}=\cos x+i \sin x .
$$

(The last expression may be taken as the definition of the complex exponential $e^{i x}$; see Chap. 8 for a full discussion of these functions.) Then

$$
f(2 \pi)-f(0)=1-1=0
$$

but

$$
f^{\prime}(x)=i e^{i x}
$$

so that $\left|f^{\prime}(x)\right|=1$ for all real $x$.

Thus Theorem $5.10$ fails to hold in this case.

**5.18 Example** On the segment $(0,1)$, define $f(x)=x$ and
$$
g(x)=x+x^{2} e^{i / x^{2}} .
$$

Since $\left|e^{i t}\right|=1$ for all real $t$, we see that

$$
\lim _{x \rightarrow 0} \frac{f(x)}{g(x)}=1 .
$$

Next,

$$
g^{\prime}(x)=1+\left\{2 x-\frac{2 i}{x}\right\} e^{i / x^{2}} \quad(0<x<1)
$$

so that

$$
\left|g^{\prime}(x)\right| \geq\left|2 x-\frac{2 i}{x}\right|-1 \geq \frac{2}{x}-1
$$

Hence

$$
\left|\frac{f^{\prime}(x)}{g^{\prime}(x)}\right|=\frac{1}{\left|g^{\prime}(x)\right|} \leq \frac{x}{2-x}
$$

and so

$$
\lim _{x \rightarrow 0} \frac{f^{\prime}(x)}{g^{\prime}(x)}=0 .
$$

By (36) and (40), L'Hospital's rule fails in this case. Note also that $g^{\prime}(x) \neq 0$ on $(0,1)$, by (38).

However, there is a consequence of the mean value theorem which, for purposes of applications, is almost as useful as Theorem 5.10, and which remains true for vector-valued functions: From Theorem $5.10$ it follows that

$$
|f(b)-f(a)| \leq(b-a) \sup _{a<x<b}\left|f^{\prime}(x)\right| .
$$

**5.19 Theorem** Suppose $\mathrm{f}$ is a continuous mapping of $[a, b]$ into $R^{k}$ and $\mathrm{f}$ is differentiable in $(a, b)$. Then there exists $x \in(a, b)$ such that
$$
|\mathbf{f}(b)-\mathbf{f}(a)| \leq(b-a)\left|\mathbf{f}^{\prime}(x)\right| .
$$

Proof $^{1} \quad$ Put $\mathbf{z}=\mathbf{f}(b)-\mathbf{f}(a)$, and define

$$
\varphi(t)=\mathbf{z} \cdot \mathbf{f}(t) \quad(a \leq t \leq b) .
$$

Then $\varphi$ is a real-valued continuous function on $[a, b]$ which is differentiable in $(a, b)$. The mean value theorem shows therefore that

$$
\varphi(b)-\varphi(a)=(b-a) \varphi^{\prime}(x)=(b-a) \mathbf{z} \cdot \mathbf{f}^{\prime}(x)
$$

for some $x \in(a, b)$. On the other hand,
$$
\varphi(b)-\varphi(a)=\mathbf{z} \cdot \mathbf{f}(b)-\mathbf{z} \cdot \mathbf{f}(a)=\mathbf{z} \cdot \mathbf{z}=|\mathbf{z}|^{2} .
$$

The Schwarz inequality now gives

$$
|\mathbf{z}|^{2}=(b-a)\left|\mathbf{z} \cdot \mathbf{f}^{\prime}(x)\right| \leq(b-a)|\mathbf{z}|\left|\mathbf{f}^{\prime}(x)\right| \text {. }
$$

Hence $|\mathbf{z}| \leq(b-a)\left|\mathbf{f}^{\prime}(x)\right|$, which is the desired conclusion.
