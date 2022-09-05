---
author: Corgi
date: 2019-02-15
title: Greatest Common Divisor
category: Algorithm
---



``` c++
int gcd(int a, int b){
	if (b == 0) return a;
	return gcd(b, a%b);
}
```
