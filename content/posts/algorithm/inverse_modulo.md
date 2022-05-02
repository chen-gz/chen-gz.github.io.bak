---
author: Corgi
date: 2019-02-18
title: inverse gcd
category: Algorithm
---

### Background

wikipedia
> 模反元素也称为模倒数，或者模逆元。



$ax \equiv 1 (\mod m)$
$x \equiv a^{-1} (\mod m)$
$a$ 与 $x$ 互为乘法逆元

### 计算方法 ###
####扩展欧几里得算法####
[欧几里得算法(GCD)](./gcd.html)

	$ax \equiv 1\ (mod m) \Rightarrow ax + my = 1$
	求出上述方程整数解即可,如果解出$x$为负数,$a(x+m) +m(y-a) = 1$也成立,即$x+m$同样满足方程的解
	
	用欧几里得算法(辗转相除法)计算$a,m$的最大公因素$(a,m)= 1$保留中间计算的过程.最后进行叠加.


	python
	```python
	def ext_euclid(a, b):
		if b == 0:
		return 1, 0, a
		else:
		x, y, q = ext_euclid(b, a % b) # q = gcd(a, b) = gcd(b, a%b)
		print(str(x)+" "+str(y)+" "+str(q))
		x, y = y, (x - (a // b) * y)
	return x, y, q
	 ext_euclid(3,7)
	 ```
	```
	 int gcdEx(int a, int b, int & x, int & y)
{
	if(b == 0){
		x = 1, y = 0;
		return a;
	}
	else{
		int r = gcdEx(b, a % b, x, y); /* r = GCD(a, b) = GCD(b, a%b) */
		int t = x;
		x = y;
		y = t - a / b * y;
		return r;
	}
}
```
