---
title: Breadth-first search
author: Guangzong Chen
math: true
mermaid: true
markup: pandoc
---

## Background

**Breadth-first search** (**BFS**) is an [algorithm](https://en.wikipedia.org/wiki/Algorithm) for searching a [tree](https://en.wikipedia.org/wiki/Tree_(data_structure)) data structure for a node that satisfies a given property. It starts at the [tree root](https://en.wikipedia.org/wiki/Tree_(data_structure)#Terminology) and explores all nodes at the present [depth](https://en.wikipedia.org/wiki/Tree_(data_structure)#Terminology) prior to moving on to the nodes at the next depth level. Extra memory, usually a [queue](https://en.wikipedia.org/wiki/Queue_(data_structure)), is needed to keep track of the child nodes that were encountered but not yet explored.[^1]

## Implementation

Generally, BFS is implemented using a queue. First, we are starting from the root of the tree, we put this root in the queue. Then we have a while loop, every time we get the first node in the queue and pop out the node from the queue. Next, we discover all nodes from this and put nodes into the queue, except for that node already discovered before. 

The pseudocode is shown as follows.

```
procedure BFS(G, root) is
    let Q be a queue
    label root as explored
    Q.enqueue(root)
    while Q is not empty do
        v := Q.dequeue()
        if v is the goal then
            return v
        for all edges from v to w in G.adjacentEdges(v) do
            if w is not labeled as explored then
                label w as explored
                Q.enqueue(w)
```



## Problem set

1. [Problem - D - Codeforces](https://codeforces.com/contest/1638/problem/D)



[^1]: https://en.wikipedia.org/wiki/Breadth-first_search

