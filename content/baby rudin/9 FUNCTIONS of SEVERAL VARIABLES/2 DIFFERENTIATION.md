---
title: 2 DIFFERENTIATION
date: 2022-08-12
---

**9.10 Preliminaries** In order to arrive at a definition of the derivative of a function whose domain is $R^{n}$ (or an open subset of $R^{n}$ ), let us take another look at the familiar case $n=1$, and let us see how to interpret the derivative in that case in a way which will naturally extend to $n>1$.

If $f$ is a real function with domain $(a, b) \subset R^{1}$ and if $x \in(a, b)$, then $f^{\prime}(x)$ is usually defined to be the real number
$$
\lim _{h \rightarrow 0} \frac{f(x+h)-f(x)}{h}
$$
provided, of course, that this limit exists. Thus
$$
f(x+h)-f(x)=f^{\prime}(x) h+r(h)
$$
where the "remainder" $r(h)$ is small, in the sense that
$$
\lim _{h \rightarrow 0} \frac{r(h)}{h}=0
$$

Note that (8) expresses the difference $f(x+h)-f(x)$ as the sum of the linear function that takes $h$ to $f^{\prime}(x) h$, plus a small remainder.

We can therefore regard the derivative of $f$ at $x$, not as a real number, but as the linear operator on $R^{1}$ that takes $h$ to $f^{\prime}(x) h$.

[Observe that every real number $\alpha$ gives rise to a linear operator on $R^{1}$; the operator in question is simply multiplication by $\alpha$. Conversely, every linear function that carries $R^{1}$ to $R^{1}$ is multiplication by some real number. It is this natural 1-1 correspondence between $R^{1}$ and $L\left(R^{1}\right)$ which motivates the preceding statements.]

Let us next consider a function $\mathrm{f}$ that maps $(a, b) \subset R^{1}$ into $R^{m}$. In that case, $\mathrm{f}^{\prime}(x)$ was defined to be that vector $\mathrm{y} \in R^{m}$ (if there is one) for which

$$
\lim _{h \rightarrow 0}\left\{\frac{\mathbf{f}(x+h)-\mathbf{f}(x)}{h}-\mathbf{y}\right\}=\mathbf{0} .
$$

We can again rewrite this in the form

$$
\mathbf{f}(x+h)-\mathbf{f}(x)=h \mathbf{y}+\mathbf{r}(h),
$$

where $\mathbf{r}(h) / h \rightarrow \mathbf{0}$ as $h \rightarrow 0$. The main term on the right side of (11) is again a linear function of $h$. Every $\mathbf{y} \in R^{m}$ induces a linear transformation of $R^{1}$ into $R^{m}$, by associating to each $h \in R^{1}$ the vector $h y \in R^{m}$. This identification of $R^{m}$ with $L\left(R^{1}, R^{m}\right)$ allows us to regard $f^{\prime}(x)$ as a member of $L\left(R^{1}, R^{m}\right)$.

Thus, if $\mathrm{f}$ is a differentiable mapping of $(a, b) \subset R^{1}$ into $R^{m}$, and if $x \in(a, b)$, then $\mathbf{f}^{\prime}(x)$ is the linear transformation of $R^{1}$ into $R^{m}$ that satisfies

$$
\lim _{h \rightarrow 0} \frac{\mathbf{f}(x+h)-\mathbf{f}(x)-\mathbf{f}^{\prime}(x) h}{h}=\mathbf{0},
$$

or, equivalently,

$$
\lim _{h \rightarrow 0} \frac{\left|\mathbf{f}(x+h)-\mathbf{f}(x)-\mathbf{f}^{\prime}(x) h\right|}{|h|}=0 .
$$

We are now ready for the case $n>1$.

**9.11 Definition** Suppose $E$ is an open set in $R^{n}, f$ maps $E$ into $R^{m}$, and $\mathbf{x} \in E$. If there exists a linear transformation $A$ of $R^{n}$ into $R^{m}$ such that
$$
\lim _{\mathbf{h} \rightarrow 0} \frac{|\mathbf{f}(\mathbf{x}+\mathbf{h})-\mathbf{f}(\mathbf{x})-A \mathbf{h}|}{|\mathbf{h}|}=0,
$$
then we say that $\mathbf{f}$ is differentiable at $\mathbf{x}$, and we write
$$
\mathbf{f}^{\prime}(\mathbf{x})=A .
$$
If $\mathbf{f}$ is differentiable at every $\mathbf{x} \in E$, we say that $\mathrm{f}$ is differentiable in $E$.


It is of course understood in (14) that $\mathbf{h} \in R^{n}$. If $|\mathbf{h}|$ is small enough, then $\mathbf{x}+\mathbf{h} \in E$, since $E$ is open. Thus $\mathbf{f}(\mathbf{x}+\mathbf{h})$ is defined, $\mathbf{f}(\mathbf{x}+\mathbf{h}) \in R^{m}$, and since $A \in L\left(R^{n}, R^{m}\right), A \mathbf{h} \in R^{m}$. Thus

$$
\mathbf{f}(\mathbf{x}+\mathbf{h})-\mathbf{f}(\mathbf{x})-A \mathbf{h} \in R^{m} .
$$

The norm in the numerator of (14) is that of $R^{m}$. In the denominator we have the $R^{n}$-norm of $\mathbf{h}$.

There is an obvious uniqueness problem which has to be settled before we go any further.

**9.12 Theorem** Suppose $E$ and $\mathbf{f}$ are as in Definition 9.11, $\mathbf{x} \in E$, and (14) holds with $A=A_{1}$ and with $A=A_{2}$. Then $A_{1}=A_{2}$.

**Proof** If $B=A_{1}-A_{2}$, the inequality

$$
|B \mathbf{h}| \leq\left|\mathbf{f}(\mathbf{x}+\mathbf{h})-\mathbf{f}(\mathbf{x})-A_{1} \mathbf{h}\right|+\left|\mathbf{f}(\mathbf{x}+\mathbf{h})-\mathbf{f}(\mathbf{x})-A_{2} \mathbf{h}\right|
$$

shows that $|B \mathbf{h}| /|\mathbf{h}| \rightarrow 0$ as $\mathbf{h} \rightarrow \mathbf{0}$. For fixed $\mathbf{h} \neq \mathbf{0}$, it follows that

$$
\frac{\mid B(t \mathbf{h})}{|t h|} \rightarrow 0 \quad \text { as } \quad t \rightarrow 0 .
$$

The linearity of $B$ shows that the left side of (16) is independent of $t$. Thus $B \mathbf{h}=0$ for every $\mathbf{h} \in R^{n}$. Hence $B=0$.

**9.13 Remarks**

(a) The relation (14) can be rewritten in the form

$$
\mathbf{f}(\mathbf{x}+\mathbf{h})-\mathbf{f}(\mathbf{x})=\mathbf{f}^{\prime}(\mathbf{x}) \mathbf{h}+\mathbf{r}(\mathbf{h})
$$

where the remainder $\mathbf{r}(\mathbf{h})$ satisfies

$$
\lim _{\mathbf{h} \rightarrow \mathbf{0}} \frac{|\mathbf{r}(\mathbf{h})|}{|\mathbf{h}|}=0 .
$$

We may interpret (17), as in Sec. 9.10, by saying that for fixed $\mathbf{x}$ and small $\mathbf{h}$, the left side of (17) is approximately equal to $\mathbf{f}^{\prime}(\mathbf{x}) \mathbf{h}$, that is, to the value of a linear transformation applied to $h$.

(b) Suppose $f$ and $E$ are as in Definition 9.11, and $f$ is differentiable in $E$. For every $\mathbf{x} \in E, \mathbf{f}^{\prime}(\mathbf{x})$ is then a function, namely, a linear transformation of $R^{n}$ into $R^{m}$. But $\mathrm{f}^{\prime}$ is also a function: $\mathbf{f}^{\prime}$ maps $E$ into $L\left(R^{n}, R^{m}\right)$.

(c) A glance at (17) shows that $f$ is continuous at any point at which $f$ is differentiable.

(d) The derivative defined by (14) or (17) is often called the differential of $f$ at $\mathbf{x}$, or the total derivative of $f$ at $\mathbf{x}$, to distinguish it from the partial derivatives that will occur later.

**9.14 Example** We have defined derivatives of functions carrying $R^{n}$ to $R^{m}$ to be linear transformations of $R^{n}$ into $R^{m}$. What is the derivative of such a linear transformation? The answer is very simple.

If $A \in L\left(R^{n}, R^{m}\right)$ and if $\mathbf{x} \in R^{n}$, then

$$
A^{\prime}(\mathbf{x})=A \text {. }
$$

Note that $\mathbf{x}$ appears on the left side of (19), but not on the right. Both sides of (19) are members of $L\left(R^{n}, R^{m}\right)$, whereas $A \mathbf{x} \in R^{m}$.

The proof of (19) is a triviality, since

$$
A(\mathbf{x}+\mathbf{h})-A \mathbf{x}=A \mathbf{h}
$$

by the linearity of $A$. With $\mathbf{f}(\mathbf{x})=A \mathbf{x}$, the numerator in (14) is thus 0 for every $\mathbf{h} \in R^{n} .$ In (17), $\mathbf{r}(\mathbf{h})=\mathbf{0}$.

We now extend the chain rule (Theorem 5.5) to the present situation.



**9.15 Theorem** Suppose $E$ is an open set in $R^{n}, \mathrm{f}$ maps $E$ into $R^{m}$, f is differentiable at $\mathbf{x}_{0} \in E, g$ maps an open set containing $\mathbf{f}(E)$ into $R^{k}$, and $g$ is differentiable at $\mathbf{f}\left(\mathbf{x}_{0}\right)$. Then the mapping $\mathbf{F}$ of $E$ into $R^{k}$ defined by

$$
\mathbf{F}(\mathbf{x})=\mathbf{g}(\mathbf{f}(\mathbf{x}))
$$

is differentiable at $\mathbf{x}_{0}$, and

$$
\mathbf{F}^{\prime}\left(\mathbf{x}_{0}\right)=\mathbf{g}^{\prime}\left(\mathbf{f}\left(\mathbf{x}_{0}\right)\right) \mathbf{f}^{\prime}\left(\mathbf{x}_{0}\right) .
$$

On the right side of $(21)$, we have the product of two linear transformations, as defined in Sec. 9.6.

Proof Put $\mathbf{y}_{0}=\mathbf{f}\left(\mathbf{x}_{0}\right), A=\mathbf{f}^{\prime}\left(\mathbf{x}_{0}\right), B=\mathbf{g}^{\prime}\left(\mathbf{y}_{0}\right)$, and define

$$
\begin{aligned}
&\mathbf{u}(\mathbf{h})=\mathbf{f}\left(\mathbf{x}_{0}+\mathbf{h}\right)-\mathbf{f}\left(\mathbf{x}_{0}\right)-A \mathbf{h}, \\
&\mathbf{v}(\mathbf{k})=\mathbf{g}\left(\mathbf{y}_{0}+\mathbf{k}\right)-\mathbf{g}\left(\mathbf{y}_{0}\right)-B \mathbf{k},
\end{aligned}
$$

for all $\mathbf{h} \in R^{n}$ and $\mathbf{k} \in R^{m}$ for which $\mathbf{f}\left(\mathbf{x}_{0}+\mathbf{h}\right)$ and $\mathbf{g}\left(\mathbf{y}_{0}+\mathbf{k}\right)$ are defined. Then

$$
|\mathbf{u}(\mathbf{h})|=\varepsilon(\mathbf{h})|\mathbf{h}|, \quad|\mathbf{v}(\mathbf{k})|=\eta(\mathbf{k})|\mathbf{k}|,
$$

where $\varepsilon(\mathbf{h}) \rightarrow 0$ as $\mathbf{h} \rightarrow \mathbf{0}$ and $\eta(\mathbf{k}) \rightarrow 0$ as $\mathbf{k} \rightarrow \mathbf{0}$.

Given h, put $\mathbf{k}=\mathbf{f}\left(\mathbf{x}_{0}+\mathbf{h}\right)-\mathbf{f}\left(\mathbf{x}_{0}\right)$. Then

$$
|\mathbf{k}|=|A \mathbf{h}+\mathbf{u}(\mathbf{h})| \leq[\|A\|+\varepsilon(\mathbf{h})]|\mathbf{h}| \text {, }
$$

and

$$
\begin{aligned}
\mathbf{F}\left(\mathbf{x}_{0}+\mathbf{h}\right)-\mathbf{F}\left(\mathbf{x}_{0}\right)-B A \mathbf{h} &=\mathbf{g}\left(\mathbf{y}_{0}+\mathbf{k}\right)-\mathbf{g}\left(\mathbf{y}_{0}\right)-B A \mathbf{h} \\
&=B(\mathbf{k}-A \mathbf{h})+\mathbf{v}(\mathbf{k}) \\
&=B \mathbf{u}(\mathbf{h})+\mathbf{v}(\mathbf{k})
\end{aligned}
$$

Hence (22) and (23) imply, for $h \neq 0$, that

$$
\frac{\left|\mathbf{F}\left(\mathbf{x}_{0}+\mathbf{h}\right)-\mathbf{F}\left(\mathbf{x}_{0}\right)-B A \mathbf{h}\right|}{|\mathbf{h}|} \leq\|B\| \varepsilon(\mathbf{h})+[\|A\|+\varepsilon(\mathbf{h})] \eta(\mathbf{k}) .
$$

Let $\mathbf{h} \rightarrow \mathbf{0}$. Then $\varepsilon(\mathbf{h}) \rightarrow 0$. Also, $\mathbf{k} \rightarrow \mathbf{0}$, by (23), so that $\eta(\mathbf{k}) \rightarrow 0$. It follows that $\mathbf{F}^{\prime}\left(\mathbf{x}_{0}\right)=B A$, which is what (21) asserts.

**9.16 Partial derivatives** We again consider a function $f$ that maps an open set $E \subset R^{n}$ into $R^{m}$. Let $\left\{\mathbf{e}_{1}, \ldots, \mathbf{e}_{n}\right\}$ and $\left\{\mathbf{u}_{1}, \ldots, \mathbf{u}_{m}\right\}$ be the standard bases of $R^{n}$ and $R^{m}$. The components of $\mathrm{f}$ are the real functions $f_{1}, \ldots, f_{m}$ defined by

$$
\mathbf{f}(\mathbf{x})=\sum_{i=1}^{m} f_{i}(\mathbf{x}) \mathbf{u}_{i} \quad(\mathbf{x} \in E) \text {, }
$$

or, equivalently, by $f_{i}(\mathbf{x})=\mathbf{f}(\mathbf{x}) \cdot \mathbf{u}_{i}, 1 \leq i \leq m$.

For $\mathrm{x} \in E, 1 \leq i \leq m, 1 \leq j \leq n$, we define

$$
\left(D_{j} f_{i}\right)(\mathbf{x})=\lim _{t \rightarrow 0} \frac{f_{i}\left(\mathbf{x}+t \mathbf{e}_{j}\right)-f_{i}(\mathbf{x})}{t},
$$

provided the limit exists. Writing $f_{i}\left(x_{1}, \ldots, x_{n}\right)$ in place of $f_{l}(\mathbf{x})$, we see that $D_{j} f_{i}$ is the derivative of $f_{i}$ with respect to $x_{j}$, keeping the other variables fixed. The notation

$$
\frac{\partial f_{i}}{\partial x_{j}}
$$

is therefore often used in place of $D_{j} f_{i}$, and $D_{j} f_{i}$ is called a partial derivative.

In many cases where the existence of a derivative is sufficient when dealing with functions of one variable, continuity or at least boundedness of the partial derivatives is needed for functions of several variables. For example, the functions $f$ and $g$ described in Exercise 7, Chap. 4, are not continuous, although their partial derivatives exist at every point of $R^{2}$. Even for continuous functions. the existence of all partial derivatives does not imply differentiability in the sense of Definition 9.11; see Exercises 6 and 14, and Theorem 9.21.

However, if $\mathbf{f}$ is known to be differentiable at a point $\mathbf{x}$, then its partial derivatives exist at $\mathbf{x}$, and they determine the linear transformation $\mathbf{f}^{\prime}(\mathbf{x})$ completely:


**9.17 Theorem** Suppose $\mathrm{f}$ maps an open set $E \subset R^{n}$ into $R^{m}$, and $\mathrm{f}$ is differentiable at a point $\mathbf{x} \in E$. Then the partial derivatives $\left(D_{j} f_{i}\right)(\mathbf{x})$ exist, and

$$
\mathbf{f}^{\prime}(\mathbf{x}) \mathbf{e}_{j}=\sum_{i=1}^{m}\left(D_{j} f_{i}\right)(\mathbf{x}) \mathbf{u}_{i} \quad(1 \leq j \leq n)
$$

Here, as in Sec. $9.16,\left\{\mathbf{e}_{1}, \ldots, \mathbf{e}_{n}\right\}$ and $\left\{\mathbf{u}_{1}, \ldots, \mathbf{u}_{m}\right\}$ are the standard bases of $R^{n}$ and $R^{m}$

Proof Fix $j$. Since $f$ is differentiable at $\mathbf{x}$,

$$
\mathbf{f}\left(\mathbf{x}+t \mathbf{e}_{j}\right)-\mathbf{f}(\mathbf{x})=\mathbf{f}^{\prime}(\mathbf{x})\left(t \mathrm{e}_{j}\right)+\mathbf{r}\left(t \mathrm{e}_{j}\right)
$$

where $\left|\mathbf{r}\left(t \mathbf{e}_{j}\right)\right| / t \rightarrow 0$ as $t \rightarrow 0$. The linearity of $\mathbf{f}^{\prime}(\mathbf{x})$ shows therefore that

$$
\lim _{t \rightarrow 0} \frac{\mathbf{f}\left(\mathbf{x}+t \mathbf{e}_{j}\right)-\mathbf{f}(\mathbf{x})}{t}=\mathbf{f}^{\prime}(\mathbf{x}) \mathbf{e}_{j}
$$

If we now represent $f$ in terms of its components, as in (24), then (28) becomes

$$
\lim _{t \rightarrow 0} \sum_{i=1}^{m} \frac{f_{i}\left(\mathbf{x}+t \mathbf{e}_{j}\right)-f_{i}(\mathbf{x})}{t} \mathbf{u}_{i}=\mathbf{f}^{\prime}(\mathbf{x}) \mathbf{e}_{j}
$$

It follows that each quotient in this sum has a limit, as $t \rightarrow 0$ (see Theorem 4.10), so that each $\left(D_{j} f_{i}\right)(\mathbf{x})$ exists, and then (27) follows from (29).

Here are some consequences of Theorem 9.17:

Let $\left[\mathbf{f}^{\prime}(\mathbf{x})\right]$ be the matrix that represents $\mathbf{f}^{\prime}(\mathbf{x})$ with respect to our standard bases, as in Sec. 9.9.

Then $\mathbf{f}^{\prime}(\mathbf{x}) \mathbf{e}_{j}$ is the $j$ th column vector of $\left[\mathbf{f}^{\prime}(\mathbf{x})\right]$, and (27) shows therefore that the number $\left(D_{j} f_{i}\right)(\mathbf{x})$ occupies the spot in the $i$ th row and $j$ th column of $\left[\mathbf{f}^{\prime}(\mathbf{x})\right]$. Thus

$$
\left[f^{\prime}(\mathbf{x})\right]=\left[\begin{array}{lll}
\left(D_{1} f_{1}\right)(\mathbf{x}) & \cdots & \left(D_{n} f_{1}\right)(\mathbf{x}) \\
\cdots \cdots \cdots \cdots & \cdots & \cdots \\
\left(D_{1} f_{m}\right)(\mathbf{x}) & \cdots & \left(D_{n} f_{m}\right)(\mathbf{x})
\end{array}\right]
$$

If $\mathbf{h}=\Sigma h_{j} \mathbf{e}_{j}$ is any vector in $R^{n}$, then (27) implies that

$$
\mathbf{f}^{\prime}(\mathbf{x}) \mathbf{h}=\sum_{i=1}^{m}\left\{\sum_{j=1}^{n}\left(D_{j} f_{i}\right)(\mathbf{x}) h_{j}\right\} \mathbf{u}_{i} .
$$

9.17 Theorem Suppose $\mathrm{f}$ maps an open set $E \subset R^{n}$ into $R^{m}$, and $\mathrm{f}$ is differentiable at a point $\mathbf{x} \in E$. Then the partial derivatives $\left(D_{j} f_{i}\right)(\mathbf{x})$ exist, and

$$
\mathbf{f}^{\prime}(\mathbf{x}) \mathbf{e}_{j}=\sum_{i=1}^{m}\left(D_{j} f_{i}\right)(\mathbf{x}) \mathbf{u}_{i} \quad(1 \leq j \leq n)
$$

Here, as in Sec. $9.16,\left\{\mathbf{e}_{1}, \ldots, \mathbf{e}_{n}\right\}$ and $\left\{\mathbf{u}_{1}, \ldots, \mathbf{u}_{m}\right\}$ are the standard bases of $R^{n}$ and $R^{m}$

Proof Fix $j$. Since $f$ is differentiable at $\mathbf{x}$,

$$
\mathbf{f}\left(\mathbf{x}+t \mathbf{e}_{j}\right)-\mathbf{f}(\mathbf{x})=\mathbf{f}^{\prime}(\mathbf{x})\left(t \mathrm{e}_{j}\right)+\mathbf{r}\left(t \mathrm{e}_{j}\right)
$$

where $\left|\mathbf{r}\left(t \mathbf{e}_{j}\right)\right| / t \rightarrow 0$ as $t \rightarrow 0$. The linearity of $\mathbf{f}^{\prime}(\mathbf{x})$ shows therefore that

$$
\lim _{t \rightarrow 0} \frac{\mathbf{f}\left(\mathbf{x}+t \mathbf{e}_{j}\right)-\mathbf{f}(\mathbf{x})}{t}=\mathbf{f}^{\prime}(\mathbf{x}) \mathbf{e}_{j}
$$

If we now represent $f$ in terms of its components, as in (24), then (28) becomes

$$
\lim _{t \rightarrow 0} \sum_{i=1}^{m} \frac{f_{i}\left(\mathbf{x}+t \mathbf{e}_{j}\right)-f_{i}(\mathbf{x})}{t} \mathbf{u}_{i}=\mathbf{f}^{\prime}(\mathbf{x}) \mathbf{e}_{j}
$$

It follows that each quotient in this sum has a limit, as $t \rightarrow 0$ (see Theorem 4.10), so that each $\left(D_{j} f_{i}\right)(\mathbf{x})$ exists, and then (27) follows from (29).

Here are some consequences of Theorem 9.17:

Let $\left[\mathbf{f}^{\prime}(\mathbf{x})\right]$ be the matrix that represents $\mathbf{f}^{\prime}(\mathbf{x})$ with respect to our standard bases, as in Sec. 9.9.

Then $\mathbf{f}^{\prime}(\mathbf{x}) \mathbf{e}_{j}$ is the $j$ th column vector of $\left[\mathbf{f}^{\prime}(\mathbf{x})\right]$, and (27) shows therefore that the number $\left(D_{j} f_{i}\right)(\mathbf{x})$ occupies the spot in the $i$ th row and $j$ th column of $\left[\mathbf{f}^{\prime}(\mathbf{x})\right]$. Thus

$$
\left[f^{\prime}(\mathbf{x})\right]=\left[\begin{array}{lll}
\left(D_{1} f_{1}\right)(\mathbf{x}) & \cdots & \left(D_{n} f_{1}\right)(\mathbf{x}) \\
\cdots \cdots \cdots \cdots & \cdots & \cdots \\
\left(D_{1} f_{m}\right)(\mathbf{x}) & \cdots & \left(D_{n} f_{m}\right)(\mathbf{x})
\end{array}\right]
$$

If $\mathbf{h}=\Sigma h_{j} \mathbf{e}_{j}$ is any vector in $R^{n}$, then (27) implies that

$$
\mathbf{f}^{\prime}(\mathbf{x}) \mathbf{h}=\sum_{i=1}^{m}\left\{\sum_{j=1}^{n}\left(D_{j} f_{i}\right)(\mathbf{x}) h_{j}\right\} \mathbf{u}_{i} .
$$

**9.18 Example** Let $\gamma$ be a differentiable mapping of the segment $(a, b) \subset R^{1}$ into an open set $E \subset R^{n}$, in other words, $\gamma$ is a differentiable curve in $E$. Let $f$ be a real-valued differentiable function with domain $E$. Thus $f$ is a differentiable mapping of $E$ into $R^{1}$. Define

$$
g(t)=f(\gamma(t)) \quad(a<t<b) .
$$

The chain rule asserts then that

$$
g^{\prime}(t)=f^{\prime}(\gamma(t)) \gamma^{\prime}(t) \quad(a<t<b) .
$$

Since $\gamma^{\prime}(t) \in L\left(R^{1}, R^{n}\right)$ and $f^{\prime}(\gamma(t)) \in L\left(R^{n}, R^{1}\right)$, (32) defines $g^{\prime}(t)$ as a linear operator on $R^{1}$. This agrees with the fact that $g$ maps $(a, b)$ into $R^{1}$. However, $g^{\prime}(t)$ can also be regarded as a real number. (This was discussed in Sec. 9.10.) This number can be computed in terms of the partial derivatives of $f$ and the derivatives of the components of $\gamma$, as we shall now see.

With respect to the standard basis $\left\{\mathbf{e}_{1}, \ldots, \mathbf{e}_{n}\right\}$ of $R^{n},\left[\gamma^{\prime}(t)\right]$ is the $n$ by 1 matrix (a "column matrix") which has $\gamma_{i}^{\prime}(t)$ in the ith row, where $\gamma_{1}, \ldots, \gamma_{n}$ are the components of $\gamma$. For every $\mathbf{x} \in E,\left[f^{\prime}(\mathbf{x})\right]$ is the 1 by $n$ matrix (a "row matrix") which has $\left(D_{j} f\right)(\mathbf{x})$ in the $j$ th column. Hence $\left[g^{\prime}(t)\right]$ is the 1 by 1 matrix whose only entry is the real number

$$
g^{\prime}(t)=\sum_{i=1}^{n}\left(D_{i} f\right)(\gamma(t)) \gamma_{i}^{\prime}(t)
$$

This is a frequently encountered special case of the chain rule. It can be rephrased in the following manner.

Associate with each $\mathbf{x} \in E$ a vector, the so-called "grarient" of $f$ at $\mathbf{x}$, defined by

$$
(\nabla f)(\mathbf{x})=\sum_{i=1}^{n}\left(D_{i} f\right)(\mathbf{x}) \mathrm{e}_{i}
$$

Since

$$
\gamma^{\prime}(t)=\sum_{i=1}^{n} \gamma_{i}^{\prime}(t) \mathbf{e}_{i},
$$

(33) can be written in the form

$$
g^{\prime}(t)=(\nabla f)(\gamma(t)) \cdot \gamma^{\prime}(t),
$$

the scalar product of the vectors $(\nabla f)(\gamma(t))$ and $\gamma^{\prime}(t)$.

Let us now fix an $\mathbf{x} \in E$, let $\mathbf{u} \in R^{n}$ be a unit vector (that is, $|\mathbf{u}|=1$ ), and specialize $\gamma$ so that

$$
\gamma(t)=\mathbf{x}+t \mathbf{u} \quad(-\infty<t<\infty) .
$$

Then $\gamma^{\prime}(t)=\mathbf{u}$ for every $t$. Hence (36) shows that

$$
g^{\prime}(0)=(\nabla f)(\mathbf{x}) \cdot \mathbf{u} .
$$

On the other hand, (37) shows that

$$
g(t)-g(0)=f(\mathbf{x}+t \mathbf{u})-f(\mathbf{x}) .
$$

Hence (38) gives

$$
\lim _{t \rightarrow 0} \frac{f(\mathbf{x}+t \mathbf{u})-f(\mathbf{x})}{t}=(\nabla f)(\mathbf{x}) \cdot \mathbf{u}
$$

The limit in (39) is usually called the directional derivative of $f$ at $\mathbf{x}$, in the direction of the unit vector $\mathbf{u}$, and may be denoted by $\left(D_{\mathbf{n}} f\right)(\mathbf{x})$.

If $f$ and $\mathbf{x}$ are fixed, but $\mathbf{u}$ varies, then (39) shows that $\left(D_{\mathbf{u}} f\right)(\mathbf{x})$ attains its maximum when $\mathbf{u}$ is a positive scalar multiple of $(\nabla f)(\mathbf{x})$. [The case $(\nabla f)(\mathbf{x})=\mathbf{0}$ should be excluded here.]

If $\mathbf{u}=\Sigma u_{i} \mathbf{e}_{i}$, then (39) shows that $\left(D_{\mathbf{n}} f\right)(\mathbf{x})$ can be expressed in terms of the partial derivatives of $f$ at $\mathbf{x}$ by the formula

$$
\left(D_{\mathrm{u}} f\right)(\mathbf{x})=\sum_{i=1}^{n}\left(D_{i} f\right)(\mathbf{x}) u_{i}
$$

Some of these ideas will play a role in the following theorem.




**9.19 Theorem** Suppose f maps a convex open set $E \subset R^{n}$ into $R^{m}$, f is differentiable in $E$, and there is a real number $M$ such that

$$
\left\|\mathbf{f}^{\prime}(\mathbf{x})\right\| \leq M
$$

for every $\mathrm{x} \in E$. Then

$$
|\mathbf{f}(\mathbf{b})-\mathrm{f}(\mathbf{a})| \leq M|\mathbf{b}-\mathbf{a}|
$$

for all $\mathbf{a} \in E, \mathbf{b} \in E$.

Proof Fix $\mathbf{a} \in E, \mathbf{b} \in E$. Define

$$
\gamma(t)=(1-t) \mathbf{a}+t \mathbf{b}
$$

for all $t \in R^{1}$ such that $\gamma(t) \in E$. Since $E$ is convex, $\gamma(t) \in E$ if $0 \leq t \leq 1$. Put

$$
\mathbf{g}(t)=\mathbf{f}(\gamma(t))
$$

Then

$$
\mathbf{g}^{\prime}(t)=\mathbf{f}^{\prime}(\gamma(t)) \gamma^{\prime}(t)=\mathbf{f}^{\prime}(\gamma(t))(\mathbf{b}-\mathbf{a})
$$

so that

$$
\left|\mathbf{g}^{\prime}(t)\right| \leq\left\|\mathbf{f}^{\prime}(\gamma(t))\right\||\mathbf{b}-\mathbf{a}| \leq M|\mathbf{b}-\mathbf{a}|
$$

for all $t \in[0,1]$. By Theorem $5.19$,

$$
|\mathbf{g}(1)-\mathbf{g}(0)| \leq M|\mathbf{b}-\mathbf{a}| \text {. }
$$

But $\mathbf{g}(0)=\mathbf{f}(\mathbf{a})$ and $\mathbf{g}(1)=\mathbf{f}(\mathbf{b})$. This completes the proof.

Corollary If, in addition, $\mathbf{f}^{\prime}(\mathbf{x})=\mathbf{0}$ for all $\mathbf{x} \in E$, then $\mathbf{f}$ is constant.

**Proof** To prove this, note that the hypotheses of the theorem hold now with $M=0$.


**9.20 Definition** A differentiable mapping $f$ of an open set $E \subset R^{n}$ into $R^{m}$ is said to be continuously differentiable in $E$ if $\mathrm{f}^{\prime}$ is a continuous mapping of $E$ into $L\left(R^{n}, R^{m}\right)$.

More explicitly, it is required that to every $\mathbf{x} \in E$ and to every $\varepsilon>0$ corresponds a $\delta>0$ such that

$$
\left\|\mathbf{f}^{\prime}(\mathbf{y})-\mathbf{f}^{\prime}(\mathbf{x})\right\|<\varepsilon
$$

if $\mathbf{y} \in E$ and $|\mathbf{x}-\mathbf{y}|<\delta$.

If this is so, we also say that $f$ is a $\mathscr{C}^{\prime}$-mapping, or that $f \in \mathscr{C}^{\prime}(E)$.

**9.21 Theorem** Suppose $\mathrm{f}$ maps an open set $E \subset R^{n}$ into $R^{m}$. Then $\mathrm{f} \in \mathscr{C}^{\prime}(E)$ if and only if the partial derivatives $D_{j} f_{i}$ exist and are continuous on $E$ for $1 \leq i \leq m$, $1 \leq j \leq n$.

Proof Assume first that $f \in \mathscr{C}^{\prime}(E)$. By (27),

$$
\left(D_{j} f_{i}\right)(\mathbf{x})=\left(\mathbf{f}^{\prime}(\mathbf{x}) \mathbf{e}_{j}\right) \cdot \mathbf{u}_{i}
$$

for all $i, j$, and for all $\mathbf{x} \in E$. Hence

$$
\left(D_{j} f_{i}\right)(\mathbf{y})-\left(D_{j} f_{i}\right)(\mathbf{x})=\left\{\left[\mathbf{f}^{\prime}(\mathbf{y})-\mathbf{f}^{\prime}(\mathbf{x})\right] \mathbf{e}_{j}\right\} \cdot \mathbf{u}_{i}
$$

and since $\left|\mathbf{u}_{i}\right|=\left|\mathbf{e}_{j}\right|=1$, it follows that

$$
\begin{aligned}
\left|\left(D_{j} f_{i}\right)(\mathbf{y})-\left(D_{j} f_{i}\right)(\mathbf{x})\right| & \leq\left|\left[\mathbf{f}^{\prime}(\mathbf{y})-\mathbf{f}^{\prime}(\mathbf{x})\right] \mathbf{e}_{j}\right| \\
& \leq\left\|\mathbf{f}^{\prime}(\mathbf{y})-\mathbf{f}^{\prime}(\mathbf{x})\right\|
\end{aligned}
$$

Hence $D_{j} f_{i}$ is continuous.

For the converse, it suffices to consider the case $m=1$. (Why?) Fix $\mathrm{x} \in E$ and $\varepsilon>0$. Since $E$ is open, there is an open ball $S \subset E$, with center at $\mathbf{x}$ and radius $r$, and the continuity of the functions $D_{j} f$ shows that $r$ can be chosen so that

$$
\left|\left(D_{j} f\right)(\mathbf{y})-\left(D_{j} f\right)(\mathbf{x})\right|<\frac{\varepsilon}{n} \quad(\mathbf{y} \in S, 1 \leq j \leq n) .
$$

Suppose $\mathbf{h}=\Sigma h_{j} \mathbf{e}_{j},|\mathbf{h}|<r$, put $\mathbf{v}_{0}=\mathbf{0}$, and $\mathbf{v}_{k}=h_{1} \mathbf{e}_{1}+\cdots+h_{k} \mathbf{e}_{k}$, for $1 \leq k \leq n$. Then

$$
f(\mathbf{x}+\mathbf{h})-f(\mathbf{x})=\sum_{j=1}^{n}\left[f\left(\mathbf{x}+\mathbf{v}_{j}\right)-f\left(\mathbf{x}+\mathbf{v}_{j-1}\right)\right] .
$$

Since $\left|\mathbf{v}_{k}\right|<r$ for $1 \leq k \leq n$ and since $S$ is convex, the segments with end points $\mathbf{x}+\mathbf{v}_{j-1}$ and $\mathbf{x}+\mathbf{v}_{j}$ lie in $S$. Since $\mathbf{v}_{j}=\mathbf{v}_{j-1}+h_{j} \mathbf{e}_{j}$, the mean value theorem (5.10) shows that the $j$ th summand in (42) is equal to

$$
h_{j}\left(D_{j} f\right)\left(\mathbf{x}+\mathbf{v}_{j-1}+\theta_{j} h_{j} \mathbf{e}_{j}\right)
$$

for some $\theta_{j} \in(0,1)$, and this differs from $h_{j}\left(D_{j} f\right)(\mathbf{x})$ by less than $\left|h_{j}\right| \varepsilon / n$, using (41). By (42), it follows that

$$
\left|f(\mathbf{x}+\mathbf{h})-f(\mathbf{x})-\sum_{j=1}^{n} h_{j}\left(D_{j} f\right)(\mathbf{x})\right| \leq \frac{1}{n} \sum_{j=1}^{n}\left|h_{j}\right| \varepsilon \leq|\mathbf{h}| \varepsilon
$$

for all $\mathbf{h}$ such that $|\mathbf{h}|<r$.

This says that $f$ is differentiable at $\mathbf{x}$ and that $f^{\prime}(\mathbf{x})$ is the linear function which assigns the number $\Sigma h_{j}\left(D_{j} f\right)(\mathbf{x})$ to the vector $\mathbf{h}=\Sigma h_{j} \mathbf{e}_{j}$. The matrix $\left[f^{\prime}(\mathbf{x})\right]$ consists of the row $\left(D_{1} f\right)(\mathbf{x}), \ldots,\left(D_{n} f\right)(\mathbf{x})$; and since $D_{1} f, \ldots, D_{n} f$ are continuous functions on $E$, the concluding remarks of Sec. $9.9$ show that $f \in \mathscr{C}^{\prime}(E)$.