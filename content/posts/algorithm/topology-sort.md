---
author: Guangzong Chen
title: Topology Sort
categories: [Algorithm]
tags: [Algorithm]
---

## Graph 

The graph has 3 member variables. `edges` store all edges. To retrieve an edge the index of the edge is required. So there is an another member variables `g` to store the index of the edges. The content in `g[i]` are the edges index which start from node `i`.  The member variable `n` is  number of node. The node index in this template is [0, n-1].

The edge have three attribution, `from`, `to`, `cost`. The `cost` is weight of the edge. 

<details>
    <summary>show code</summary>

~~~ { #id .cpp .numberLines}
template <typename T> class graph {
  public:
    struct edge {
        int from;
        int to;
        T cost;
    };

    vector<edge> edges;
    vector<vector<int>> g;
    int n;
    
    graph(int _n) : n(_n) { g.resize(n); }
    
    virtual int add(int from, int to, T cost) = 0;
};

~~~
</details>

## Directly acyclic graph

In mathematics, particularly graph theory, and computer science, a directed acyclic graph (DAG) is a directed graph with no directed cycles.[^1] 

The class `digraph `is inherit from graph. The function `add`  in the parent class is virtual function. So `digraph` need to overwrite it. Every we call `add` function, a edge will be push in to the member variable `edges`. To retrieve the edge, we need the index of current edge. So we push the index of the edge to member variable `g`.  

The function `reverse` will will change the direction for all edge and return an reversed `diagraph`.

<details>
    <summary> show code </summary>

~~~ { #id .cpp .numberLines}
template <typename T> class digraph : public graph<T> {
  public:
    using graph<T>::edges;
    using graph<T>::g;
    using graph<T>::n;

    digraph(int _n) : graph<T>(_n) {}

    int add(int from, int to, T cost = 1) {
        assert(0 <= from && from < n && 0 <= to && to < n);
        int id = (int)edges.size();
        g[from].push_back(id);
        edges.push_back({from, to, cost});
        return id;
    }

    digraph<T> reverse() const {
        digraph<T> rev(n);
        for (auto &e : edges) {
            rev.add(e.to, e.from, e.cost);
        }
        return rev;
    }
};
~~~
</details>

## Topological Sort

In computer science, a topological sort or topological ordering of directed graph is a linear ordering of its vertices such that for every directed edge `uv` from vertex `u` to vertex `v`, `u` comes before `v` in the ordering. [^2]

The algorithm to find topological sort for DAG using a property of topological.

Property: The node with in-degree equal 0 does not rely on other node.

Base on this property, we found out all node which in-degree is 0. Since these node are not reply on any other node. Next we decrease in-degree for all node which are connected to these node. Since the dependency is satisfied. When all dependency of a node are satisfied we can put it into the vector. 

If we are able to find a topological sort, all node should be pushed in to vector. Otherwise there are some circular dependency which will not able the satisfied. 

<details>
    <summary> show code </summary>

~~~ { #id .cpp .numberLines}
template <typename T> vector<int> find_topsort(const digraph<T> &g) {
    vector<int> deg(g.n, 0);
    for (int id = 0; id < (int)g.edges.size(); id++) {
        deg[g.edges[id].to]++;
    }
    vector<int> x;
    for (int i = 0; i < g.n; i++) {
        if (deg[i] == 0) {
            x.push_back(i);
        }
    }
    for (int ptr = 0; ptr < (int)x.size(); ptr++) {
        int i = x[ptr];
        for (int id : g.g[i]) {
            auto &e = g.edges[id];
            int to = e.to;
            if (--deg[to] == 0) {
                x.push_back(to);
            }
        }
    }
    if ((int)x.size() != g.n) {
        return vector<int>();
    }
    return x;
}
~~~
</details>

## Probelm set

1. https://codeforces.com/contest/1672/problem/F2

## Whole code [^3]

<details>
    <summary> show code </summary>

~~~ { #id .cpp .numberLines}
#include <bits/stdc++.h>

using namespace std;

template <typename T> class graph {
  public:
    struct edge {
        int from;
        int to;
        T cost;
    };

    vector<edge> edges;
    vector<vector<int>> g;
    int n;
    
    graph(int _n) : n(_n) { g.resize(n); }
    
    virtual int add(int from, int to, T cost) = 0;
};

template <typename T> class digraph : public graph<T> {
  public:
    using graph<T>::edges;
    using graph<T>::g;
    using graph<T>::n;

    digraph(int _n) : graph<T>(_n) {}
    
    int add(int from, int to, T cost = 1) {
        assert(0 <= from && from < n && 0 <= to && to < n);
        int id = (int)edges.size();
        g[from].push_back(id);
        edges.push_back({from, to, cost});
        return id;
    }
    
    digraph<T> reverse() const {
        digraph<T> rev(n);
        for (auto &e : edges) {
            rev.add(e.to, e.from, e.cost);
        }
        return rev;
    }
};

template <typename T> vector<int> find_topsort(const digraph<T> &g) {
    vector<int> deg(g.n, 0);
    for (int id = 0; id < (int)g.edges.size(); id++) {
        deg[g.edges[id].to]++;
    }
    vector<int> x;
    for (int i = 0; i < g.n; i++) {
        if (deg[i] == 0) {
            x.push_back(i);
        }
    }
    for (int ptr = 0; ptr < (int)x.size(); ptr++) {
        int i = x[ptr];
        for (int id : g.g[i]) {
            auto &e = g.edges[id];
            int to = e.to;
            if (--deg[to] == 0) {
                x.push_back(to);
            }
        }
    }
    if ((int)x.size() != g.n) {
        return vector<int>();
    }
    return x;
}
~~~
</details>


[^1]: https://en.wikipedia.org/wiki/Directed_acyclic_graph
[^2]: https://en.wikipedia.org/wiki/Topological_sorting
[^3]: code copy from Codeforce tourist's submission
