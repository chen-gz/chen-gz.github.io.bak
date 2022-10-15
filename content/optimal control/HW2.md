---
title: Optimal Control HW2
date: 2022-10-12
---

Guangzong Chen

### Problem 1

First we use equation

$$
G_{0, N} \equiv \sum_{i=0}^{N-1} A^{N-i-1} B R^{-1} B^{\mathrm{T}}\left(A^{\mathrm{T}}\right)^{N-i-1}
$$

get $G_{0, N} = 5.3281$. 
Then we use follwing equation to get optimal control

$$
u_k^*=-R^{-1} B^{\mathrm{T}} \lambda_{k+1}=R^{-1} B^{\mathrm{T}}\left(A^{\mathrm{T}}\right)^{N-k-1} G_{0, N}^{-1}\left(r_N-A^N x_0\right)
$$

The control value I have is
$u_0 = 0.1173$
$u_1 = 0.2346$
$u_2 = 0.4692$
$u_3 = 0.9384$
$u_4 = 1.8768$

### Problem 2

Use `c2d` to  discretized the system. Then we have following parameters for discrete system.


$$
\begin{aligned}
&A=\\
&\begin{array}{rrr} 
& x 1 & x 2 \\
x 1 & 1 & 0.5 \\
x 2 & 0 & 1
\end{array}\\
&B=\\
&\begin{array}{rr}
u 1 \\
x 1 & 0.125 \\
\text { x2 } & 0.5
\end{array}\\
&C=\\
&\begin{array}{rr}
x 1 & x 2 \\
1 & 0
\end{array}\\
&D=\\
&\text { u1 }\\
&\text { y1 } 0
\end{aligned}
$$

Then solve Riccati difference equation 
$$
S_k=A_k^{\mathrm{T}}\left[S_{k+1}-S_{k+1} B_k\left(B_k^{\mathrm{T}} S_{k+1} B_k+R_k\right)^{-1} B_k^{\mathrm{T}} S_{k+1}\right] A_k+Q_ks
$$

we get
s11: 
    4.0368    4.0435    4.0678    4.1417    4.3448    4.8755    6.2840    10.4679   26.4338   95.3311  100.0000
s22: 
    4.1499    4.1632    4.1976    4.2775    4.4464    4.7800    5.4147    6.6293    9.0036   11.2041  100.0000

b) use equation 

$$
K_k=\left(B_k^{\mathrm{T}} S_{k+1} B_k+R_k\right)^{-1} B_k^{\mathrm{T}} S_{k+1} A_k
$$

We get kalman gain
K: 
    0.6527    0.6566    0.6680    0.6972    0.7644    0.9085    1.2052    1.8094    2.8929    0.4535
    1.3169    1.3223    1.3359    1.3663    1.4276    1.5418    1.7409    2.0664    2.4838    2.0408


c) we use state equation and $u_k = -K_k * x_k$, we get $x$ and $u$


x1: 
   10.0000   12.5380   11.5599    9.2410    6.7202    4.5113    2.7813    1.5272    0.6841    0.1878    0.0126

x2: 
   10.0000   12.5380   11.5599    9.2410    6.7202    4.5113    2.7813    1.5272    0.6841    0.1878    0.0126

u_k: 
  -19.6958   -8.4336   -2.2920    0.6764    1.8188    2.0119    1.7964    1.4914    1.2829    1.2860         0

![hw2_01](/home/zong/MEGA/content/optimal control/hw2/hw2_01.png)

