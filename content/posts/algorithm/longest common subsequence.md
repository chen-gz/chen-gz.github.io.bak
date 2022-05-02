---
author: Guangzong Chen
date: 2019-02-16
title: Longest Common Subsequence
category: Algorithm
---

### 定义 ###
**子序列**  
 在数学中，某个序列的子序列是从最初序列通过去除某些元素但不破坏余下元素的相对位置（在前或在后）而形成的新序列。  
**最大公共子序列(LCS)**  
一个数列$S$，如果分别是两个或多个已知数列的子序列，且是所有符合此条件序列中最长的，则$S$称为已知序列的最长公共子序列。

### 动态规划 ###

$X = {x_1,x_2,...,x_m}$  
$Y = {y_1,y_2,...,y_n}$  
$Z = {z_1,z_2,...,z_k}$    

4
假设$Z$是$X,Y$的最大公共子序列.  
* 如果$x_m = y_n$, 则$z_k=x_m=y_n$,且$Z_k-1$ 是$X_m-1$和$Y_n-1$的$LCS$
* 如果$x_m \not= y_n$,则$Z$是$X_m-1$和$Y_n$的$LCS$或是$X_m$和$Y_n-1$的$LCS$  

$c[i][j]$表示$\{x_1,x_2,...,x_i\}$和$\{y1,y_2,...,y_j\}$的最大公共子序列的元素个数


$$
c[i,j]=
\left \{
\begin{array}{l}
0 & i=0\ or\ j=0 \\
c[i-1,j-1] + 1 & i,j>0\ and\ x_i = y_j \\
max(c[i,j-1],c[i-1,j]) & i,j>0\ and\ x_i \not= y_j \\
\end{array}
\right.
$$

```python
def lcs(a, b):
    c = [[0 for i in range(len(a)+1)] for i in range(len(b)+1)]
    for i in range(len(a)+1):
        for j in range(len(b)+1):
            if i == 0 or j == 0:
                c[i][j] = 0
            elif a[i-1] == b[j-1]:
                c[i][j] = c[i-1][j-1] + 1
            else:
                c[i][j] = max(c[i-1][j], c[i][j-1])
    return c[len(a)][len(b)]
```

```java
public static int lcs(String str1, String str2) {
    int len1 = str1.length();
    int len2 = str2.length();
    int c[][] = new int[len1+1][len2+1];
    for (int i = 0; i <= len1; i++) {
        for( int j = 0; j <= len2; j++) {
            if(i == 0 || j == 0) {
                c[i][j] = 0;
            } else if (str1.charAt(i-1) == str2.charAt(j-1)) {
                c[i][j] = c[i-1][j-1] + 1;
            } else {
                c[i][j] = max(c[i - 1][j], c[i][j - 1]);
            }
        }
    }
    return c[len1][len2];
}
```
