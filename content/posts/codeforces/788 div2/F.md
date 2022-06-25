---
title: 788F  Jee, You See?
Date: 2022-05-07

---

## Problem link

https://codeforces.com/contest/1670/problem/F

This is two dimension dynamic problem.  There are three constrains in the original problem.
$$
\begin{align}
a_1 + a_2 + \dots + a_n \geq l\\
a_1 + a_2 + \dots + a_n \leq r \\
a_1 \oplus a_2 \oplus \dots \oplus a_n = z
\end{align}
$$
Let's consider only second condition from the beginning. 

We going start add bits one by one to satisfy the constrain since there is a constrains related to bitwise xor.

$dp[bit][num]$ stand for combination in $bit$ and $num$ bits total in $bit$

we will have following equation
$$
dp[bit][num] = {n \choose c} dp[bit+1][(num + c - current\_bit\_on)/2]
$$