---
title: Segment Tree
author: Guangzong Chen
categories: [Algorithm]
tags: [Algorithm]
---

## Background

In [computer science](https://en.wikipedia.org/wiki/Computer_science), a **segment tree,** also known as a statistic tree, is a [tree](https://en.wikipedia.org/wiki/Tree_(data_structure)) [data structure](https://en.wikipedia.org/wiki/Data_structure) used for storing information about [intervals](https://en.wikipedia.org/wiki/Interval_(mathematics)), or segments. It allows querying which of the stored segments contain a given point. It is, in principle, a static structure; that is, it's a structure that cannot be modified once it's built. A similar data structure is the [interval tree](https://en.wikipedia.org/wiki/Interval_tree).[^1]

Space Complexity:  $O(n\log n)$

Time Complexity: 

1. build the tree: $O(n \log n)$
2. query: $O(\log n)$
3. node update: $O(\log n)$

A segment tree is a binary tree, each node contains information for a segment of the original array. 
The value in the node segment tree is some attribute of the range. i.e. sum, min, max, gcd, etc.

An example of a segment tree. (attribute: sum)

``` mermaid
graph TD;
    A(10, 1-4) --> B(3, 1-2);
    A --> C(7, 3-4);
    B --> D(1, 1-1) ;
    B --> E(2, 2-2);
    C --> F(3, 3-3);
    C --> G(4, 4-4);
```

The root will contain the attribution for the whole array (range 1-4). The left and right subtrees contain the range(1-2) and range(3-4), and so on. The leaves are the original value of the array.

## The node of the tree

The node of the tree contains the attribute we want to maintain and the left bound and right bound of the node (segment). 

<script src="https://gist.github.com/chen-gz/3a78875ae4d41c126f8920a50983a42d.js"></script>

## Build the tree

I use the recursive method to build the tree. I build a segment tree from the root. The value in the root can get from the left subtree and right subtree. So before setting the value for the root node, we need to build the left and right subtree.  When build left subtree and right subtree with the same idea.

Following the code which builds the tree. The whole tree is stored in an array. Suppose the root is in index 1. Because a segment tree is a binary tree. So it has two subtrees. we can put the child of 1 in indexes 2 and 3.  Node 2 has 2 children so we need to put it in 4 and 5. Thus the children of node 3 will be in indexes 6 and 7. We can find the pattern, the index left tree of `node` is `node * 2  = node << 1`, the index of right tree of `node` is `node * 2 + 1 = node << 1 | 1`. When we build the tree, we also need the assign left bound and right bound to the node. The left bound and right bound can get from the parent segment. Because we are dividing the parent segment into two-part. So the bound of the left subtree is `l, mid`, the bound of the right subtree is `mid + 1, r` where the `l` and `r` are the bound of the current node and `mid = (l + r ) / 2 `.

Because we are using the recursive method to build the tree, there is a terminal condition. The terminal condition is we arrive at the leaves. The condition to judgment a leaf is the right boundary equals the left boundary ( `l == r` in the code). 

<script src="https://gist.github.com/chen-gz/652ec9049188a0b0eedc83f6168bc5fa.js"></script>

## Update (node)

Update a node in the segment tree. We are using the recursive method to update the value. The root node definitely will affect the new node, because it needs information from the whole array. Since two subtree does not have an intersection, so only one subtree will affect by the new node. Thus we only update one of the subtree.

<script src="https://gist.github.com/chen-gz/d01572339af98015dc7e7b4c6fc9bf46.js"></script>

## Update (segment with lazy)

> Pending

## Query

The query aims to get information from the segment tree. A query segment can be composed of many segments in the segment tree. Still using the recursive method, when the inquiry range is larger than the tree node range we directly return the value, otherwise, we go to the subtree to find the value.

<script src="https://gist.github.com/chen-gz/31c689828fed95f7c50a5294a2a73ba8.js"></script>

## Problem Set

1.  [Codeforces Round #769 Problem - D - Codeforces](https://codeforces.com/contest/1632/problem/D)
2. [Codeforces Round #771 Problem - E - Codeforces](https://codeforces.com/contest/1638/problem/E)

[^1]: [Segment tree - Wikipedia](https://en.wikipedia.org/wiki/Segment_tree)

