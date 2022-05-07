---
title: 787G Sorting Pancakes
Date: 2022-05-06
---

## Problem link

https://codeforces.com/contest/1675/problem/G

## Solution

We consider using dynamic programming to solve this problem since we don't have any other method related to this problem.  

we have $dp[i][last][sum]$, This stand for $i$ prefix element, the value of $last$ element in the array, the sum of $i$ prefix. $dp[i][last][sum]$ stand the number of action we need to construct $i$ prefix element with last element is $last$ and sum the array is $sum$.  At the begin we set all element to $\infin$. Let's consider some case to understand this dynamic programming process. First we set $dp[0][0][0]$ to 0, because it does not need any action. Then we can consider for $dp[1]$, $dp[1]$ means there have 1 element in the array. We can compute $dp[1][0][0] = a[1]$, because we need to remove all element from $a[1]$. We don't care where it move to, but we need remove all of it. So in this setting we can computer $dp[1][j][k]$ for $ j \in [0,m], k \in[0,m]$ by $dp[1][j][j] = abs(j - a[j])$ and $dp[1][j][k] = \infin$ when $j \neq k$.

Now let's start compute $dp[2][j][k]$. $dp[2][j][k]$ can transfer from $dp[1][j-l][k-j]$ the sum in the $dp[1]$ does not contain $j$ so the last element is $k-j$ and the last element $j$ should greater equal to $dp[1][last]$. So we put $j-l$ for all $l \in [0,m], j-l \geq 0$. 

Now the problem is how to update the states. 

Since we don't care about where it move to the first element or where it move to. But we can suppose there are $k-j$ element already finished. And now $i$ the prefix has $sum[i]$ element. There are $k-j$ element fill in $i-1$ prefix. Now we need to move $sum[i] - k +j$  elements to $i$ th position in the array. We also don't need to care about where it move from. Because the transfer function will take care about the cost.

This algorithm will take $O(nm^3)$ we will get`TLE` in the test. So we need to optimize this algorithm. This just need to look at the carefully.

The transfer function
$$
dp[i][last][sum] + sum[i+1] - (last-l) \rightarrow dp[i+1][last-l][sum-(last-l)], l \in[0, last]
$$
notice

$dp[i+1][m][sum+m]$ can only transfer from $dp[i][m][sum]$, because the last element need to grater than $m$ in $dp[i]$ . Let's consider for $dp[i+1][m-1][sum + m - 1]$. 

$dp[i+1][m-1][sum + m - 1]$ can transfer from $dp[i][m][sum]$ and $dp[i][m-1][sum]$. Now we notice we need minimum value for $dp[i][m][sum]$ and $dp[i][m-1][sum]$. Then we calculate the transfer process in one calculation. The transfer for $dp[i+1][m-1][sum + m - 1]$ is 
$$
dp[i][m-1][sum] + sum[i+1] - (m-1) \rightarrow  dp[i+1][m-1][sum+m-1] \\
dp[i][m][sum] + sum[i+1] - (m-1) \rightarrow  dp[i+1][m-1][sum+m-1]
$$


Thus we just need to maintain a min value for $dp[i+1][m-1][sum+m-1]$ is good enough to calculate the transfer function by 1 calculation. Now the time complexity become $O(nm^2)$ . This is good enough for pass the judgment.

