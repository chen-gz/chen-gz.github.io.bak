---
title: A linear Programming Standard Form Problem
author: guangzong
date: 2020-08-29 17:43:00 -0400
categories: [Math]
tags: [Math, Linear Programming]
math: true
---

Problem from *"Linear and Nonlinear Programing"* problem 2.9

## Linear programming Standard Form

The standard from of linear programming is 

$$
\begin{equation}
\begin{array}{cl}
\operatorname{minimize} & \mathbf{c}_{1}^{T} \mathbf{x}\\
\text { subject to } &  \mathbf{Ax} = \mathbf{b} \\
& \mathbf{x} \geq 0
\end{array}
\end{equation}
$$

## Description of Problem

A class of piecewise linear functions can be represented as $f(x)=$ Maximum $(\mathbf{c}_{1}^{T} \mathbf{x}+ d_{1}, \mathbf{c}_{2}^{T} \mathbf{x}+d_{2}, \ldots, \mathbf{c}_{p}^{T} \mathbf{x}+d_{p}).$ For such a function $f$, consider the problem


$$
\begin{array}{cl}
\operatorname{minimize} & f(\mathbf{x})  \\
\operatorname{subject to} & \mathbf{A x}=\mathbf{b} \\ 
& \mathbf{x} \geq \mathbf{0}
\end{array}
$$


## Solution

This function $f$ should be expand to contains.

The simple idea is let $f$ be a value. Let $y = f$. Then we have following equations

$$
\mathbf{c_i}^T \mathbf{x} + d_i \leq y
$$

add slack variables, then we have stand form of linear programming problem.

$$
\begin{array}{cl}
\operatorname{minimize} & y \\
\text { subject to } & \mathbf{c}_{i}^{T} \mathbf{x}+d_{i}+r_{i}=y, i=1,2, \ldots, p \\
& \mathbf{Ax} = \mathbf{b} \\
& \mathbf{x} \geq 0, \mathbf{r} \geq 0
\end{array}
$$

But this form still not the stand form, because of $y$ do not have any constrain.

So convert to stand form we should eliminate symbol $y$. Using an of constrains.

$$
\begin{array}{cl}
\operatorname{minimize} & \mathbf{c}_{1}^{T} \mathbf{x} + d_1 + r_1 \\
\text { subject to } & \mathbf{c}_{i}^{T} \mathbf{x} - \mathbf{c}_{1}^{T} \mathbf{x} + r_{i} - r_{1} = d_1 - d_i, i=2,3 \ldots, p \\
& \mathbf{Ax} = \mathbf{b} \\
& \mathbf{x} \geq 0, \mathbf{r} \geq 0
\end{array}
$$
