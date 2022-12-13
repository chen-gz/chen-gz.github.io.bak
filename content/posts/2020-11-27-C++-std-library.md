---
title: C++ std library
author: guangzong
date: 2020-11-27
categories: [Program]
tags: [C, Std]
---

#### unique

>  Removes all but the first element from every consecutive group of equivalent elements in the range `[first,last)`.
>
> return value: An iterator to the element that follows the last element not removed.
>

Example
```C++
int n;
vector<int> a; // suppose there are some value in a
n = unique(a.begin(), a.end()) - a.begin(); // n is the number the unique item.
a.resize(n); // remove repeated item. 
```

#### resize

> Resizes the container so that it contains *n* elements.
>
> If *n* is **smaller** than the current container [size](https://www.cplusplus.com/vector::size), the content is reduced to its first *n* elements, removing those beyond (and destroying them).
>
> If *n* is **greater** than the current container [size](https://www.cplusplus.com/vector::size), the content is expanded by inserting at the end as many elements as needed to reach a size of *n*. If *val* is specified, the new elements are initialized as copies of *val*, otherwise, they are value-initialized.
>
> If *n* is also greater than the current container [capacity](https://www.cplusplus.com/vector::capacity), an automatic reallocation of the allocated storage space takes place.
>
> Notice that this function changes the actual content of the container by **inserting or erasing** elements from it.
