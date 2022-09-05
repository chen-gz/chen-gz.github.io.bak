---
author: Corgi
date: 2019-02-17
title: package question
category: Algorithm
---

### 问题描述 ###

有$m$种物品，第$i$种物品有$x_i$个,重量为$w_i$,背包大小为$n$. 问有多少种装满背包的方法。

### 动态规划 ###

对于每种物体有$x_i$种策略
$dp[j] = dp[j-w_i] + dp[j-2*w_i]+...$

```python
cnt = [3, 2, 1, 0, 0]  # 个数
w = [1, 2, 3, 4, 5]  # 重量

dp = [0 for i in range(int(20))]
dp[0] = 1  # dp[i] 代表背包大小为i时有多少种取法

for i in range(len(cnt)):
    for j in range(len(dp) - 1, w[i] - 1, -1):
        k = 1
        while k <= cnt[i]:
            if j >= k * w[i]:
                dp[j] += dp[j - k * w[i]]
            k += 1
```
