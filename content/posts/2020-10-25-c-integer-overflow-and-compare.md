---
title: C Integer Overflow And Compare
author: zong
date: 2020-10-25
categories: [Program]
tags: [C, Programming]
math: true
---

**notice: this post used gcc, clang, pelle C, to test code.**
**including C99, C17 standard**

**I didn't change integer length in printf function except long long(64 bits)**

### Conclusion

Do not trust C when doing compare using integer with overflow case. It is very stupid.

### Expression
C use complement to store numbers [wikipedia](https://en.wikipedia.org/wiki/Two%27s_complement)

use following code will easy to find out how numbers store in C.
```
printf("%x\n",1); // 1
printf("%x\n",2); // 2
printf("%x\n",-1); // ffffffff
printf("%x\n",-2); // fffffffe
printf("%x\n",0); // 0
printf("%x\n",-0); // 0
printf("%d\n",0x80000000); // the minium value  -2147483648
printf("%d\n",0xffffffff); // -1
printf("%d\n",0x7fffffff); // largest value 2147483647
```
examination: why `0x8000 0000` is minimum value
the first one means this number is negative value. Use complement number low, negative value should be computer as `~0x8000 0000 +1` so it is `0x8000 0000 = 2147483648`.
So in C the integer from -2147483648 ~ 2147483647

### Overflow
Will show what happen when plus overflow in expression with cast and without cast.

#### Plus Overflow

##### uint8_t
use following code to see what will happen if overflow

```c
uint8_t a, b;
a = 2;
b = 0xff;
printf("a = 0x%x, b = 0x%x, a+b = 0x%x\n",a, b, a+b);
printf("a = %u, b = %u, a+b = %u\n",a, b, a+b);
printf("a = 0x%x, b = 0x%x, a+b = 0x%x\n",a, b, (uint8_t)(a+b));
printf("a = %u, b = %u, a+b = %u\n",a, b, (uint8_t)(a+b));

printf("a = %u, b = %u, a + b > b : %d\n", a, b, a + b > b);
printf("a = %u, b = %u, a + b > b : %d\n", a, b, (uint8_t)(a + b) > b);
```

result

```c
a = 0x2, b = 0xff, a+b = 0x101
a = 2, b = 255, a+b = 257
a = 0x2, b = 0xff, a+b = 0x1
a = 2, b = 255, a+b = 1
a = 2, b = 255, a + b > b : 1
a = 2, b = 255, a + b > b : 0
```

**notice: result will be different in this case**

from the code and result, Overflows generated during the calculation process will be convert to 32 bits. If cast it to uint8_t then it will retain last 8 bits. 

##### uint32_t
next, that we see what will happen when overflow happen in uint32_t. Because machine always 32 bits or 64 bits. So this may be a little different.

```c
uint32_t a, b;
a = 2;
b = 0xffffffff;
printf("a = 0x%x, b = 0x%x, a+b = 0x%x\n",a, b, a+b);
printf("a = %u, b = %u, a+b = %u\n",a, b, a+b);
printf("a = 0x%x, b = 0x%x, a+b = 0x%x\n",a, b, (uint32_t)(a+b));
printf("a = %u, b = %u, a+b = %u\n",a, b, (uint32_t)(a+b));
printf("a = %u, b = %u, a + b > b : %d\n", a, b, a + b > b);
printf("a = %u, b = %u, a + b > b : %d\n", a, b, (uint32_t)(a + b) > b);
```

result

```c
a = 0x2, b = 0xffffffff, a+b = 0x1
a = 2, b = 4294967295, a+b = 1
a = 0x2, b = 0xffffffff, a+b = 0x1
a = 2, b = 4294967295, a+b = 1
a = 2, b = 4294967295, a + b > b : 0
a = 2, b = 4294967295, a + b > b : 0
```

Automatically cast to 32 bits. 

##### uint64_t

```c
uint64_t a, b;
a = 2;
b = 0xffffffffffffffff;
printf("a = 0x%llx, b = 0x%llx, a+b = 0x%llx\n",a, b, a+b);
printf("a = %llu, b = %llu, a+b = %llu\n",a, b, a+b);
printf("a = 0x%llx, b = 0x%llx, a+b = 0x%llx\n",a, b, (uint64_t)(a+b));
printf("a = %llu, b = %llu, a+b = %llu\n",a, b, (uint64_t)(a+b));
printf("a = %llu, b = %llu, a - b > b : %d\n", a, b, a + b > b);
printf("a = %llu, b = %llu, a - b > b : %d\n", a, b, (uint64_t)(a + b) > b);
```

result

```c
a = 0x2, b = 0xffffffffffffffff, a+b = 0x1
a = 2, b = 18446744073709551615, a+b = 1
a = 0x2, b = 0xffffffffffffffff, a+b = 0x1
a = 2, b = 18446744073709551615, a+b = 1
a = 2, b = 18446744073709551615, a - b > b : 0
a = 2, b = 18446744073709551615, a - b > b : 0
```

Automatically cast to 64 bits. 


#### Minus Overflow

##### uint8_t 

```c
uint8_t a, b;
a = 2;
b = 0xff;
printf("a = 0x%x, b = 0x%x, a+b = 0x%x\n",a, b, a-b);
printf("a = %u, b = %u, a+b = %u\n",a, b, a-b);
printf("a = 0x%x, b = 0x%x, a+b = 0x%x\n",a, b, (uint8_t)(a-b));
printf("a = %u, b = %u, a+b = %u\n",a, b, (uint8_t)(a-b));
printf("a = %u, b = %u, a - b > 0 : %d\n", a, b, a - b > 0);
printf("a = %u, b = %u, a - b > 0 : %d\n", a, b, (uint8_t)(a - b) > 0);
```

result

```c
a = 0x2, b = 0xff, a+b = 0xffffff03
a = 2, b = 255, a+b = 4294967043
a = 0x2, b = 0xff, a+b = 0x3
a = 2, b = 255, a+b = 3
a = 2, b = 255, a - b > 0 : 0
a = 2, b = 255, a - b > 0 : 1
```

**notice: different in last two expression**

##### uint32_t

```c
uint32_t a, b;
a = 2;
b = 0xff;
printf("a = 0x%x, b = 0x%x, a+b = 0x%x\n",a, b, a-b);
printf("a = %u, b = %u, a+b = %u\n",a, b, a-b);
printf("a = 0x%x, b = 0x%x, a+b = 0x%x\n",a, b, (uint32_t)(a-b));
printf("a = %u, b = %u, a+b = %u\n",a, b, (uint32_t)(a-b));
printf("a = %u, b = %u, a - b > 0 : %d\n", a, b, a - b > 0);
printf("a = %u, b = %u, a - b > 0 : %d\n", a, b, (uint32_t)(a - b) > 0);
```

result

```c
a = 0x2, b = 0xff, a+b = 0xffffff03
a = 2, b = 255, a+b = 4294967043
a = 0x2, b = 0xff, a+b = 0xffffff03
a = 2, b = 255, a+b = 4294967043
a = 2, b = 255, a - b > 0 : 1
a = 2, b = 255, a - b > 0 : 1
```
