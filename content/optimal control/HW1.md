---
title: Optimal Control HW1
date: 2022-09-27
---

### Problem 1

Let $t_1 = (x_3 - x_1)^2 + (y_3 - y_1)^2$, $t_2 = (x_3 - x_2)^2 + (y_3 - y_2)^2$, 
then $d_1 = \sqrt{t_1}$, $d_2 = \sqrt{t_2}$.

The problem formula as follow:

$$
\begin{equation}
\begin{aligned}
\min &  d_1 \\
\textrm{s.t.} & \quad d_1 = d_2
\end{aligned}
\end{equation}
$$

Since $t_1, t_2 > 0$, so we can solve (2) problem instead (1).


$$
\begin{equation}
\begin{aligned}
\min & \quad t_1 \\
\textrm{s.t.}  & \quad t_1 = t_2
\end{aligned}
\end{equation}
$$

Define Hamiltonian function

$$
H = t_1 + λ(t_1 - t_2)
$$

Necessary condition for optimization problem

$$
\begin{equation}
\begin{aligned}
\frac{ ∂ H}{∂ λ}  & =t_1 - t_2 = 0\\
\frac{ ∂ H}{∂ x_3} & = 2(x_3 - x_1) + 2 λ(x_3 - x_1) - 2 λ (x_3 - x_2) = 0 \\
\frac{ ∂ H}{∂ y_3} & = 2(y_3 - x_1) + 2 λ(y_3 - x_1) - 2 λ (y_3 - y_2) = 0 \\
\end{aligned}
\end{equation}
$$

Solving the equations, we get

$$
\begin{equation}
\begin{aligned}
λ = -\frac{1}{2} \\
x_3 = (x_1 + x_2) / 2 \\ 
y_3 = (y_1 + y_2) / 2 \\
\end{aligned}
\end{equation}
$$

So $P3 = (\frac{x_1 + x_2}{2}, \frac{y_1 + y_2}{2})$


### Problem 2

Formulation problems

$$
\begin{equation}
\begin{aligned}
\min & \quad 
 L=\frac{1}{2} x^{\mathrm{T}}\left[\begin{array}{ll}
1 & 0 \\
0 & 2
\end{array}\right] x+\frac{1}{2} u^{\mathrm{T}}\left[\begin{array}{ll}
2 & 1 \\
1 & 1
\end{array}\right] u \\
\textrm {s.t.} & \quad 
x=\left[\begin{array}{l}
1 \\
3
\end{array}\right]+\left[\begin{array}{ll}
2 & 2 \\
1 & 0
\end{array}\right] u
\end{aligned}
\end{equation}
$$

Define Hamiltonian function

$$
H = \frac{1}{2} x^{\mathrm{T}}\left[\begin{array}{ll}
1 & 0 \\
0 & 2
\end{array}\right] x+\frac{1}{2} u^{\mathrm{T}}\left[\begin{array}{ll}
2 & 1 \\
1 & 1
\end{array}\right] u + λ^T (x - \left[\begin{array}{l}
1 \\
3
\end{array}\right]+\left[\begin{array}{ll}
2 & 2 \\
1 & 0
\end{array}\right] u)
$$

Necessary conditions

$$
\begin{equation}
\begin{array}{l}
\frac{ ∂ H}{∂ λ}=x-\left[\begin{array}{l}
1 \\
3
\end{array}\right]- \left[\begin{array}{ll}
2 & 2 \\
1 & 0
\end{array}\right] u=0 \\
\frac{ ∂ H}{∂ x}=\left[\begin{array}{ll}
1 & 0 \\
0 & 2
\end{array}\right] x+λ=0 \\
\frac{ ∂ H}{∂ u}=\left[\begin{array}{ll}
4 & 2 \\
2 & 2
\end{array}\right] u +\left[\begin{array}{ll}
2 & 1 \\
2 & 0
\end{array}\right] λ=0
\end{array}
\label{2_nec}
\end{equation}
$$

Solve $(\ref{2_nec})$ we get 

$$
u=\left[\begin{array}{c}
-2 \\
\frac{8}{5}
\end{array}\right]
$$

$$
x=\left[\begin{array}{r}
-\frac{1}{5} \\
1
\end{array}\right]
$$

$$
\lambda=\left[\begin{array}{l}
\frac{1}{5} \\
2
\end{array}\right]
$$

$$
L = 1.02 + 2.08 = 3.1
$$



### Problem 3

Formulation problem
$$
\begin{array}{ll}
\min & J=\frac{1}{2} \sum_{k=0}^{N-1} u_{k}{ }^{2} \\
\text { s.t. } & x_{k + 1}=x_{k} u_{k}+1
\end{array}
$$

Where $N = 2$, $x_2 = 0$ and $x_0$ is given.

Define Hamiltonian function

$$
\begin{equation}
H=\frac{1}{2} \sum_{k=0}^{N-1} u_{k}^{2}+ \sum_{k=0}^{N-1} λ_{k+1} \left(x_{k+1}-x_{k} u_{k}-1\right)
\end{equation}
$$

Necessary conditions

$$
\frac{ ∂ H}{∂ λ_{k+1}}=x_{k+1}-x_{k} u_{k}-1=0 \quad(k=0,1)
$$

$$
\frac{ ∂ H}{∂ x_{k}}=λ_{k}-λ_{k+1} u_{k}=0 \quad(k=1)
$$
and define $λ_{0} = 0$ for convenient

$$
\frac{ ∂ H}{ ∂ u_{k}}=u_{k}-λ_{k+1} x_{k}=0 \quad(k=0,1)
$$


From necessary conditions we get state and costate equations

$$
λ_k  = λ_{k+1}^2 x_k \quad (k = 1)
$$

$$
x_{k+1} = λ_{k+1} x_k^2  + 1   k = (0, 1)
$$

from state and costate function we get

$$
\begin{aligned}
λ_1 = λ_2^2 x_1 \\ 
x_2 = λ_2 x_1^2 + 1 \\ 
x_1 = λ_1 x_0^2 + 1
\end{aligned}
$$

Then we can $λ_1$


$$
\begin{aligned}
λ_1 = \frac{ λ_2^2 } {1-λ_2^2 x_0^2 } \\
x_1 = \frac{λ_1}{λ_2^2} = \frac{1} {(1-λ_2^2 x_0 ^2) } \\
\end{aligned}
$$

Then we find  $x_2 = \frac{ λ_2  } {(1-λ_2^2 x_0 ^2)^2 } + 1$ and we have equation $\frac{ λ_2  } {(1-λ_2^2 x_0 ^2)^2 } + 1 = 0$ 

If $x_0 = 1$, we have following equations: 



$λ_2 ≈ -1.49021$ or $λ_2 ≈ -0.52488$, 
$λ_1 = λ_2^2 / (1 - λ_2^2) = -1.819$ or $0.380$
$x_1 = (-1.819) / (-1.49021) / (-1.49021) = -0.81910$
or 
$x_1 = 0.380 / -0.52488 / -0.52488 = 1.379$

$u_0 = λ_1 = -1.819$ or $0.380$
$u_1 = λ_2 * x_1 = -1.49021 * -0.81910 = 1.2206$  or $ -0.52488 * 1.379 = -0.72380$

We have $L = 4.79862$ or $0.6682$ 

0.6682 is the solution for the optimization problem.





