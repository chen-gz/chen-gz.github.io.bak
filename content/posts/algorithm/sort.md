---
author: Corgi
date: 2019-07-14
title: sort
category: Algorithm
markup: pandoc
---

### bubble sort

Time Complex $O(n^2)$.

choose two value to compare each time.

'-' present small one 
'+' present large one

```
-+******
*-+*****
**-+****
...

```
The fellow code write using python
```python
a = [10, 203, 2, 5, 444, 333, 333, 666, 777]

for i in range(len(a)):
    for j in range(i,len(a)):
        if(a[i] > a[j]):
            tmp = a[j]
            a[j] = a[i]
            a[i] = tmp
print(a)
```

### choose sort

time complexity $O(n^2)$，
choose minumum value in the list each time.

```python
a = [10, 203, 2, 5, 444, 333, 333, 666, 777]

for i in range(len(a)):
    mina = i
    for j in range(i, len(a)):
        if a[j] < a[mina]:
            mina = j
    tmp = a[mina]
    a[mina] = a[i]
    a[i] = tmp
print(a)
```

### quick sort


快速排序二分的思想，随即的选出一个数，数字大的放右边，小的放左边，然后进行合并，就完成了排序的步骤。  
平均复杂度是$O(nlgn)$

```python
import random


def quick_sort(a):
    b, c = [], []
    rand_num = random.randint(0, len(a)-1)
    for i in a:
        if i > a[rand_num]:
            c.append(i)
        else:
            b.append(i)
    same_b, same_c = True, True
    for i in range(len(b)-1):
        if b[i] != b[i+1]:
            same_b = False
            break
    for i in range(len(c)-1):
        if c[i] != c[i+1]:
            same_c = False
            break
    if len(b) > 1 and not same_b:
        b = quick_sort(b)
    if len(c) > 1 and not same_c:
        c = quick_sort(c)
    return b+c


a = [10, 203, 2, 5, 444, 333, 333, 666, 777]
a = quick_sort(a)
print(a)
```

### 归并排序

分为两组，两组分别排序，然后合并，复杂度$O(nlgn)$

```python
def conbine(a, b):
    c = []
    cnt_a, cnt_b = 0, 0
    while len(c) < len(a) + len(b):
        if cnt_a == len(a):
            for i in range(cnt_b, len(b)):
                c.append(b[i])
            break
        if cnt_b == len(b):
            for i in range(cnt_a, len(a)):
                c.append(a[i])
            break
        if a[cnt_a] < b[cnt_b]:
            c.append(a[cnt_a])
            cnt_a += 1
        else:
            c.append(b[cnt_b])
            cnt_b += 1
    return c


def merge_sort(a):
    b, c = [], []
    if len(a) <= 1:
        return a
    i = 0
    while i < len(a) / 2:
        b.append(a[i])
        i += 1
    while i < len(a):
        c.append(a[i])
        i += 1
    return conbine(merge_sort(b), merge_sort(c))


a = [10, 203, 2, 5, 444, 333, 333, 666, 777]
a = merge_sort(a)
print(a)
```
