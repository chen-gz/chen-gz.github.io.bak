---
title: 5 Continuity Properties of Measurable Functions
date: 2022-10-27
---

Since the continuous functions played such a prominent role in our construction of Borel measures, and of Lebesgue measure in particular, it seems reasonable to expect that there are some interesting relations between continuous functions and measurable functions. In this section we shall give two theorems of this kind.

We shall assume, in both of them, *that $\mu$ is a measure on a locally compact Hausdorff space $X$ which has the properties stated in Theorem 2.14*. In particular, $\mu$ could be Lebesgue measure on some $R^k$.



### 2.24 Lusin's Theorem 

Suppose $f$ is a complex measurable function on $X$, $\mu(A)<\infty, f(x)=0$ if $x \notin A$, and $\epsilon>0$. Then there exists a $g \in C_c(X)$ such that

$$
\mu(\{x: f(x) \neq g(x)\})<\epsilon .
$$

Furthermore, we may arrange it so that

$$
\sup _{x \in X}|g(x)| \leq \sup _{x \in X}|f(x)| .
$$

Proof Assume first that $0 \leq f<1$ and that $A$ is compact. Attach a sequence $\left\{s_n\right\}$ to $f$, as in the proof of Theorem 1.17, and put $t_1=s_1$ and $t_n=s_n-s_{n-1}$ for $n=2,3,4, \ldots$. Then $2^n t_n$ is the characteristic function of a set $T_n \subset A$, and

$$
f(x)=\sum_{n=1}^{\infty} t_n(x) \quad(x \in X) .
$$

Fix an open set $V$ such that $A \subset V$ and $\bar{V}$ is compact. There are compact sets $K_n$ and open sets $V_n$ such that $K_n \subset T_n \subset V_n \subset V$ and $\mu\left(V_n-K_n\right)<2^{-n} \epsilon$. By Urysohn's lemma, there are functions $h_n$ such that $K_n \prec h_n \prec V_n$. Define

$$
g(x)=\sum_{n=1}^{\infty} 2^{-n} h_n(x) \quad(x \in X) .
$$

This series converges uniformly on $X$, so $g$ is continuous. Also, the support of $g$ lies in $\bar{V}$. Since $2^{-n} h_n(x)=t_n(x)$ except in $V_n-K_n$, we have $g(x)=f(x)$ except in $\bigcup\left(V_n-K_n\right)$, and this latter set has measure less than $\epsilon$. Thus (1) holds if $A$ is compact and $0 \leq f \leq 1$.

It follows that (1) holds if $A$ is compact and $f$ is a bounded measurable function. The compactness of $A$ is easily removed, for if $\mu(A)<\infty$ then $A$ contains a compact set $K$ with $\mu(A-K)$ smaller than any preassigned positive number. Next, if $f$ is a complex measurable function and if $B_n=$ $\{x:|f(x)|>n\}$, then $\bigcap B_n=\varnothing$, so $\mu\left(B_n\right) \rightarrow 0$, by Theorem 1.19(e). Since $f$ coincides with the bounded function $\left(1-\chi_{B_n}\right) \cdot f$ except on $B_n,(1)$ follows in the general case.

Finally, let $R=\sup \{|f(x)|: x \in X\}$, and define $\varphi(z)=z$ if $|z| \leq R$, $\varphi(z)=R z /|z|$ if $|z|>R$. Then $\varphi$ is a continuous mapping of the complex plane onto the disc of radius $R$. If $g$ satisfies (1) and $g_1=\varphi \circ g$, then $g_1$ satisfies (1) and (2).

Corollary Assume that the hypotheses of Lusin's theorem are satisfied and that $|f| \leq 1$. Then there is a sequence $\left\{g_n\right\}$ such that $g_n \in C_c(X),\left|g_n\right| \leq 1$, and

$$
f(x)=\lim _{n \rightarrow \infty} g_n(x) \quad \text { a.e. }
$$

Proof The theorem implies that to each $n$ there corresponds a $g_n \in C_c(X)$, with $\left|g_n\right| \leq 1$, such that $\mu\left(E_n\right) \leq 2^{-n}$, where $E_n$ is the set of all $x$ at which $f(x) \neq g_n(x)$. For almost every $x$ it is then true that $x$ lies in at most finitely many of the sets $E_n$ (Theorem 1.41). For any such $x$, it follows that $f(x)=$ $g_n(x)$ for all large enough $n$. This gives (5).

### 2.25 The Vitali-Carathéodory Theorem 

Suppose $f \in L^1(\mu), f$ is real-valued, and $\epsilon>0$. Then there exist functions $u$ and $v$ on $X$ such that $u \leq f \leq v, u$ is upper semicontinuous and bounded above, $v$ is lower semicontinuous and bounded below, and

$$
\int_X(v-u) d \mu<\epsilon
$$

Proof Assume first that $f \geq 0$ and that $f$ is not identically 0 . Since $f$ is the pointwise limit of an increasing sequence of simple functions $s_n, f$ is the sum of the simple functions $t_n=s_n-s_{n-1}$ (taking $s_0=0$ ), and since $t_n$ is a linear combination of characteristic functions, we see that there are measurable sets $E_i$ (not necessarily disjoint) and constants $c_i>0$ such that

$$
f(x)=\sum_{i=1}^{\infty} c_i \chi_{E_i}(x) \quad(x \in X)
$$

Since

$$
\int_X f d \mu=\sum_{i=1}^{\infty} c_i \mu\left(E_i\right),
$$

the series in (3) converges. There are compact sets $K_i$ and open sets $V_i$ such that $K_i \subset E_i \subset V_i$ and

$$
c_i \mu\left(V_i-K_i\right)<2^{-i-1} \epsilon \quad(i=1,2,3, \ldots) .
$$

Put

$$
v=\sum_{i=1}^{\infty} c_i \chi_{V_i}, \quad u=\sum_{i=1}^N c_i \chi_{K_i},
$$

where $N$ is chosen so that

$$
\sum_{N+1}^{\infty} c_i \mu\left(E_i\right)<\frac{\epsilon}{2} .
$$

Then $v$ is lower semicontinuous, $u$ is upper semicontinuous, $u \leq f \leq v$, and

$$
\begin{aligned}
v-u &=\sum_{i=1}^N c_i\left(\chi_{V_i}-\chi_{K_i}\right)+\sum_{N+1}^{\infty} c_i \chi_{V_i} \\
& \leq \sum_{i=1}^{\infty} c_i\left(\chi_{V_i}-\chi_{K_i}\right)+\sum_{N+1}^{\infty} c_i \chi_{E_i}
\end{aligned}
$$

so that (4) and (6) imply (1).

In the general case, write $f=f^{+}-f^{-}$, attach $u_1$ and $v_1$ to $f^{+}$, attach $u_2$ and $v_2$ to $f^{-}$, as above, and put $u=u_1-v_2, v=v_1-u_2$. Since $-v_2$ is upper semicontinuous and since the sum of two upper semicontinuous functions is upper semicontinuous (similarly for lower semicontinuous; we leave the proof of this as an exercise), $u$ and $v$ have the desired properties.

