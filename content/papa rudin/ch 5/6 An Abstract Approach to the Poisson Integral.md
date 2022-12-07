---
title: An Abstract Approach to the Poisson Integral
date: 2022-11-19
---

### 5.22

Successful applications of the Hahn-Banach theorem to concrete problems depend of course on a knowledge of the bounded linear functionals on the normed linear space under consideration. So far we have only determined the bounded linear functionals on a Hilbert space (where a much simpler proof of the Hahn-Banach theorem exists; see Exercise 6), and we know the positive linear functionals on $C_c(X)$.

We shall now describe a general situation in which the last-mentioned functionals occur naturally.

Let $K$ be a compact Hausdorff space, let $H$ be a compact subset of $K$, and let $A$ be a subspace of $C(K)$ such that $1 \in A$ (1 denotes the function which assigns the number 1 to each $x \in K)$ and such that
$$
\|f\|_K=\|f\|_H \quad(f \in A) .
$$
Here we used the notation
$$
\|f\|_E=\sup \{|f(x)|: x \in E\} .
$$
Because of the example discussed in Sec. 5.23, $H$ is sometimes called a boundary of $K$, corresponding to the space $A$.

If $f \in A$ and $x \in K$, (1) says that
$$
|f(x)| \leq\|f\|_H \text {. }
$$
In particular, if $f(y)=0$ for every $y \in H$, then $f(x)=0$ for all $x \in K$. Hence if $f_1$ and $f_2 \in A$ and $f_1(y)=f_2(y)$ for every $y \in H$, then $f_1=f_2$; to see this, put $f=$ $f_1-f_2$.

Let $M$ be the set of all functions on $H$ that are restrictions to $H$ of members of $A$. It is clear that $M$ is a subspace of $C(H)$. The preceding remark shows that each member of $M$ has a unique extension to a member of $A$. Thus we have a natural one-to-one correspondence between $M$ and $A$, which is also normpreserving, by (1). Hence it will cause no confusion if we use the same letter to designate a member of $A$ and its restriction to $H$.

Fix a point $x \in K$. The inequality (3) shows that the mapping $f \rightarrow f(x)$ is a bounded linear functional on $M$, of norm 1 [since equality holds in (3) if $f=1$ ]. By the Hahn-Banach theorem there is a linear functional $\Lambda$ on $C(H)$, of norm 1 , such that
$$
\Lambda f=f(x) \quad(f \in M) .
$$
We claim that the properties
$$
\Lambda 1=1, \quad\|\Lambda\|=1
$$
imply that $\Lambda$ is a positive linear functional on $C(H)$.

To prove this, suppose $f \in C(H), 0 \leq f \leq 1$, put $g=2 f-1$, and put $\Lambda g=\alpha+i \beta$, where $\alpha$ and $\beta$ are real. Note that $-1 \leq g \leq 1$, so that $|g+i r|^2 \leq 1+r^2$ for every real constant $r$. Hence (5) implies that

$$
(\beta+r)^2 \leq|\alpha+i(\beta+r)|^2=|\Lambda(g+i r)|^2 \leq 1+r^2 .
$$

Thus $\beta^2+2 r \beta \leq 1$ for every real $r$, which forces $\beta=0$. Since $\|g\|_H \leq 1$, we have $|\alpha| \leq 1$; hence
$$
\Lambda f=\frac{1}{2} \Lambda(1+g)=\frac{1}{2}(1+\alpha) \geq 0 .
$$
Now Theorem $2.14$ can be applied. It shows that there is a regular positive Borel measure $\mu_x$ on $H$ such that
$$
\Lambda f=\int_H f d \mu_x \quad(f \in C(H)) .
$$
In particular, we get the representation formula
$$
f(x)=\int_H f d \mu_x \quad(f \in A) .
$$
What we have proved is that to each $x \in K$ there corresponds a positive measure $\mu_x$ on the "boundary " $H$ which "represents" $x$ in the sense that (9) holds for every $f \in A$.

Note that $\Lambda$ determines $\mu_x$ uniquely; but there is no reason to expect the Hahn-Banach extension to be unique. Hence, in general, we cannot say much about the uniqueness of the representing measures. Under special circumstances we do get uniqueness, as we shall see presently.

### 5.23

To see an example of the preceding situation, let $U=\{z:|z|<1\}$ be the open unit disc in the complex plane, put $K=\bar{U}$ (the closed unit disc), and take for $H$ the boundary $T$ of $U$. We claim that every polynomial $f$, i.e., every function of the form

$$
f(z)=\sum_{n=0}^N a_n z^n
$$
where $a_0, \ldots, a_N$ are complex numbers, satisfies the relation
$$
\|f\|_U=\|f\|_T .
$$
(Note that the continuity of $f$ shows that the supremum of $|f|$ over $U$ is the same as that over $\bar{U}$.)

Since $\bar{U}$ is compact, there exists a $z_0 \in \bar{U}$ such that $\left|f\left(z_0\right)\right| \geq|f(z)|$ for all $z \in \bar{U}$. Assume $z_0 \in U$. Then
$$
f(z)=\sum_{n=0}^N b_n\left(z-z_0\right)^n
$$
and if $0<r<1-\left|z_0\right|$, we obtain
$$
\sum_{n=0}^N\left|b_n\right|^2 r^{2 n}=\frac{1}{2 \pi} \int_{-\pi}^\pi\left|f\left(z_0+r e^{i \theta}\right)\right|^2 d \theta \leq \frac{1}{2 \pi} \int_{-\pi}^\pi\left|f\left(z_0\right)\right|^2 d \theta=\left|b_0\right|^2
$$
so that $b_1=b_2=\cdots=b_N=0$; i.e., $f$ is constant. Thus $z_0 \in T$ for every nonconstant polynomial $f$, and this proves (2).

(We have just proved a special case of the maximum modulus theorem; we shall see later that this is an important property of all holomorphic functions.)

### 5.24 The Poisson Integral

Let $A$ be any subspace of $C(\bar{U})$ (where $\bar{U}$ is the closed unit disc, as above) such that $A$ contains all polynomials and such that
$$
\|f\|_U=\|f\|_T
$$
holds for every $f \in A$. We do not exclude the possibility that $A$ consists of precisely the polynomials, but $A$ might be larger.

The general result obtained in Sec. $5.22$ applies to $A$ and shows that to each $z \in U$ there corresponds a positive Borel measure $\mu_z$ on $T$ such that
$$
f(z)=\int_T f d \mu_z \quad(f \in A) .
$$
(This also holds for $z \in T$, but is then trivial: $\mu_z$ is simply the unit mass concentrated at the point $z$.)

We now fix $z \in U$ and write $z=r e^{i \theta}, 0 \leq r<1, \theta$ real.
If $u_n(w)=w^n$, then $u_n \in A$ for $n=0,1,2, \ldots$; hence ( 2 ) shows that
$$
r^n e^{i n \theta}=\int_T u_n d \mu_z \quad(n=0,1,2, \ldots)
$$
Since $u_{-n}=\bar{u}_n$ on $T,(3)$ leads to
$$
\int_T u_n d \mu_z=r^{|n|} e^{i n \theta} \quad(n=0, \pm 1, \pm 2, \ldots) .
$$
This suggests that we look at the real function
$$
P_r(\theta-t)=\sum_{n=-\infty}^{\infty} r^{|n|} e^{i n(\theta-t)} \quad(t \text { real })
$$
since
$$
\frac{1}{2 \pi} \int_{-\pi}^\pi P_r(\theta-t) e^{i n t} d t=r^{|n|} e^{i n \theta} \quad(n=0, \pm 1, \pm 2, \ldots)
$$
Note that the series (5) is dominated by the convergent geometric series $\sum r^{|n|}$, so that it is legitimate to insert the series into the integral (6) and to integrate term by term, which gives (6). Comparison of (4) and (6) gives
$$
\int_T f d \mu_z=\frac{1}{2 \pi} \int_{-\pi}^\pi f\left(e^{i t}\right) P_r(\theta-t) d t
$$
for $f=u_n$, hence for every trigonometric polynomial $f$, and Theorem $4.25$ now implies that (7) holds for every $f \in C(T)$. [This shows that $\mu_z$ was uniquely determined by (2). Why?]
In particular, (7) holds if $f \in A$, and then (2) gives the representation
$$
f(z)=\frac{1}{2 \pi} \int_{-\pi}^\pi f\left(e^{i t}\right) P_r(\theta-t) d t \quad(f \in A) .
$$
The series (5) can be summed explicitly, since it is the real part of
$$
1+2 \sum_1^{\infty}\left(z e^{-i t}\right)^n=\frac{e^{i t}+z}{e^{i t}-z}=\frac{1-r^2+2 i r \sin (\theta-t)}{\left|1-z e^{-i t}\right|^2}
$$
Thus
$$
P_r(\theta-t)=\frac{1-r^2}{1-2 r \cos (\theta-t)+r^2} .
$$
This is the so-called "Poisson kernel." Note that $P_r(\theta-t) \geq 0$ if $0 \leq r<1$. We now summarize what we have proved:

5.25 Theorem Suppose $A$ is a vector space of continuous complex functions on the closed unit disc $\bar{U}$. If $A$ contains all polynomials, and if
$$
\sup _{z \in U}|f(z)|=\sup _{z \in T}|f(z)|
$$
for every $f \in A$ (where $T$ is the unit circle, the boundary of $U$ ), then the Poisson integral representation
$$
f(z)=\frac{1}{2 \pi} \int_{-\pi}^\pi \frac{1-r^2}{1-2 r \cos (\theta-t)+r^2} f\left(e^{i t}\right) d t \quad\left(z=r e^{i \theta}\right)
$$
is valid for every $f \in A$ and every $z \in U$.

