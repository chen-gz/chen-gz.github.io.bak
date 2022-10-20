---
author: Corgi
date: 2019-02-17
title: power
category: Algorithm
---

通过二分的思想快速求幂$x^{n}$   
将$n$分解成$2^{0},2^{1},2^{2},2^{3},...,2^{m}$的组合(相当于将$n$用二进制表示)   
说明:python库函数用的是快速幂  
```python
def mod_pow(x, n, mod):
    ans = 1
    while n != 0:
        if n & 1 != 0:
            ans = (ans * x) % mod
        x = x*x % mod
        n >>= 1
    return ans
```
C++
```
ll poww(ll base, ll exp, ll mod) {
	ll ans = 1;
	while (exp) {
		if (exp & 1)
			ans = ans * base % mod;
		base = base * base % mod;
		exp >>= 1;
	}
	return ans;
}
```
