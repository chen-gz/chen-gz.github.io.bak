---
title: Convex And Concave Functions
author: zong
date: 2020-10-24
categories: [Math]
tags: [Math, Linear Programming]
math: true
---


### Convex definition

Definition. A function $f$ defined on a convex set $\Omega$ is said to be convex if, for every $\mathbf{x}_{1}, \mathbf{x}_{2} \in$ $\Omega$ and every $\alpha, 0 \leqslant \alpha \leqslant 1,$ there holds

$$
\begin{equation}
f\left(\alpha \mathbf{x}_{1}+(1-\alpha) \mathbf{x}_{2}\right) \leqslant \alpha f\left(\mathbf{x}_{1}\right)+(1-\alpha) f\left(\mathbf{x}_{2}\right)
\end{equation}
$$

If, for every $\alpha, 0<\alpha<1,$ and $\mathbf{x}_{1} \neq \mathbf{x}_{2},$ there holds

$$
\begin{equation}
f\left(\alpha \mathbf{x}_{1}+(1-\alpha) \mathbf{x}_{2}\right)<\alpha f\left(\mathbf{x}_{1}\right)+(1-\alpha) f\left(\mathbf{x}_{2}\right)
\end{equation}
$$

then $f$ is said to be strictly convex.

### Concave definition

Definition. A function $g$ defined on a convex set $\Omega$ is said to be concave if the function $f=-g$ is convex. The function $g$ is strictly concave if $-g$ is strictly convex.

### Combinations of Convex Functions


* Proposition 1. Let $f_{1}$ and $f_{2}$ be convex functions on the convex set $\Omega .$ Then the function $f_{1}+f_{2}$ is convex on $\Omega$

* Proposition 2. Let $f$ be a convex function over the convex set $\Omega .$ Then the function af is convex for any $a \geqslant 0 .$

* Proposition $3 .$ Let $f$ be a convex function on a convex set $\Omega$. The set $\Gamma_{c}=\{\mathbf{x}: \mathbf{x} \in$
  $\Omega, f(\mathbf{x}) \leqslant c\}$ is convex for every real number $c .$

* Proposition 4. Let $f \in C^{1} .$ Then $f$ is convex over a convex set $\Omega$ if and only if
  $$
  f(\mathbf{y}) \geqslant f(\mathbf{x})+\mathbf{\nabla} f(\mathbf{x})(\mathbf{y}-\mathbf{x})
  $$
  for all  $\mathbf{x}, \mathbf{y} \in \mathbf{\Omega}$


* **Proposition $5 .$ Let $f \in C^{2} .$ Then $f$ is convex over a convex set $\Omega$ containing an interior point if and only if the Hessian matrix $\mathbf{F}$ of $f$ is positive semidefinite throughout $\Omega$.** 

* **Theorem 1. Let $f$ be a convex function defined on the convex set $\Omega$. Then the set $\Gamma$ where $f$ achieves its minimum is convex, and any relative minimum of $f$ is a global minimum.**
