---
title: constrain optimization 
author: zong
date: 2020-11-07
categories: [Math]
tags: [Math, Linear Programming]
math: true
---

#### TANGENT PLANE

**Definition**. A point $x^{*}$ satisfying the constraint $\mathbf{h}\left(\mathbf{x}^{*}\right)=\mathbf{0}$ is said to be a regular point of the constraint if the gradient vectors $\nabla h_{1}\left(\mathbf{x}^{*}\right), \nabla h_{2}\left(\mathbf{x}^{*}\right), \ldots, \nabla h_{m}\left(\mathbf{x}^{*}\right)$ are linearly independent.

**Theorem**. At a regular point $\mathbf{x}^{*}$ of the surface $S$ defined by $\mathbf{h}(x)=0$ the tangent plane is equal to
$$
M=\left\{y: \nabla h\left(x^{*}\right) y=0\right\}
$$

#### FIRST-ORDER NECESSARY CONDITIONS (EQUALITY CONSTRAINTS)

**Lemma**. Let $\mathbf{x}^{*}$ be a regular point of the constraints $\mathbf{h}(\boldsymbol{x})=\boldsymbol{0}$ and a local extreme point ( $a$ minimum or maximum) of $f$ subject to these constraints.
Then all $\mathbf{y} \in \mathbf{E}^{n}$ satisfying
$$
\nabla \mathbf{h}\left(\mathbf{x}^{*}\right) \mathbf{y}=\mathbf{0}
$$
must also satisfy
$$
\nabla f\left(\mathbf{x}^{*}\right) \mathbf{y}=0
$$
**Theorem**. Let $\mathbf{x}^{*}$ be a local extreme point of $f$ subject to the constraints $\mathbf{h}(x)=0 .$ Assume further that $\mathbf{x}^{*}$ is a regular point of these constraints. Then there is $a \lambda \in E^{m}$ such that
$$
\nabla f\left(x^{*}\right)+\lambda^{T} \nabla h\left(x^{*}\right)=0
$$

#### SECOND-ORDER CONDITIONS

**Second-Order Necessary Conditions.** Suppose that $\mathbf{x}^{*}$ is a local minimum of $f$ subject to $\mathbf{h}(\mathbf{x})=0$ and that $\mathbf{x}^{*}$ is a regular point of these constraints. Then there is $a \lambda \in E^{\prime \prime \prime}$ such that
$$
\nabla f\left(\mathbf{x}^{*}\right)+\lambda^{T} \nabla h\left(\mathbf{x}^{*}\right)=\mathbf{0}
$$
If we denote by $M$ the tangent plane $M=\left\{\mathbf{y}: \nabla \mathbf{h}\left(\mathbf{x}^{*}\right) \mathbf{y}=\mathbf{0}\right\},$ then the matrix
$$
\mathbf{L}\left(\mathbf{x}^{*}\right)=\mathbf{F}\left(\mathbf{x}^{*}\right)+\lambda^{T} \mathbf{H}\left(\mathbf{x}^{*}\right)
$$
is positive semidefinite on $M,$ that is, $\mathbf{y}^{T} \mathbf{L}\left(\mathbf{x}^{*}\right) \mathbf{y} \geqslant \mathbf{0}$ for all $\mathbf{y} \in M$

**Second-Order Sufficiency Conditions.** Suppose there is a point $\mathbf{x}^{*}$ satisfying $\mathbf{h}\left(\mathbf{x}^{*}\right)=\mathbf{0},$ and $a \lambda \in E^{m}$ such that
$$
\nabla f\left(\mathbf{x}^{*}\right)+\lambda^{T} \nabla h\left(\mathbf{x}^{*}\right)=\mathbf{0}
$$
Suppose also that the matrix $\mathbf{L}\left(\mathbf{x}^{*}\right)=\mathbf{F}\left(\mathbf{x}^{*}\right)+\lambda^{T} \mathbf{H}\left(\mathbf{x}^{*}\right)$ is positive definite on $M=\{\mathbf{y}:
\left.\nabla \mathbf{h}\left(\mathbf{x}^{*}\right) \mathbf{y}=\mathbf{0}\right\},$ that is for $\mathbf{y} \in M, \mathbf{y} \neq \mathbf{0}$ there holds $\mathbf{y}^{T} \mathbf{L}\left(\mathbf{x}^{*}\right) \mathbf{y}>\mathbf{0} .$ Then $\mathbf{x}^{*}$ is a strict local
minimum of $f$ subject to $\mathbf{h}(\mathbf{x})=\mathbf{0} .$





#### Inequality constraints 

Definition. Let $\mathbf{x}^{*}$ be a point satisfying the constraints
$$
\mathbf{h}\left(\mathbf{x}^{*}\right)=\mathbf{0}, \mathbf{g}\left(\mathbf{x}^{*}\right) \leqslant \mathbf{0}
$$
and let $J$ be the set of indices $j$ for which $g_{j}\left(\mathbf{x}^{*}\right)=0 .$ Then $\mathbf{x}^{*}$ is said to be a regular point of the constraints ( 33 ) if the gradient vectors $\nabla h_{i}\left(\mathbf{x}^{*}\right), \nabla g_{i}\left(\mathbf{x}^{*}\right), 1 \leqslant i \leqslant m, j \in J$ are linearly independent.

**Karush-Kuhn-Tucker Conditions**

Let $\mathbf{x}^{*}$ be a relative minimum point for the problem
$$
\begin{array}{ll}
\operatorname{minimize} & f(\mathbf{x}) \\
\text { subject to } & \mathbf{h}(\mathbf{x})=\mathbf{0}, \mathbf{g}(\mathbf{x}) \leqslant \mathbf{0}
\end{array}
$$
and suppose $\mathbf{x}^{*}$ is a regular point for the constraints. Then there is a vector $\lambda \in E^{m}$ and $a$ vector $\mu \in E^{p}$ with $\mu \geqslant 0$ such that
$$
\begin{aligned}
\boldsymbol{\nabla} f\left(\mathbf{x}^{*}\right)+\lambda^{T} \nabla \mathbf{h}\left(\mathbf{x}^{*}\right)+\boldsymbol{\mu}^{T} \nabla \mathbf{g}\left(\mathbf{x}^{*}\right) &=\mathbf{0} \\
\boldsymbol{\mu}^{T} \mathbf{g}\left(\mathbf{x}^{*}\right) &=0
\end{aligned}
$$
