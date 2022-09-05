---
title: 788E Hemose on the Tree
Date: 2022-05-07
---

## Problem link

https://codeforces.com/contest/1670/problem/E

## Solution

The numbers we need to assign is  $[1, 2n-1]$ . there are $2n-1$ numbers, if we take $2^p$ out, we can divide rest of number to 2 group  $[x, x+2^p]$. where $p = log_2(n)$. Now we select random node as root and assign $2^p$ to the root. If father greater equal than $2^p$ we assign node as $x$, edge as $x + 2^p$. else we will do inversely. 

<details>
``` cpp
#include <bits/stdc++.h>
#define endl "\n"
using namespace std;
#define fastio cin.tie(0), cout.tie(0), ios_base::sync_with_stdio(0);
#define get(n) int n; cin >> n;
int x = 1;
vector<int> node, edge;
vector<vector<pair<int, int> > > g;
int n;
void dfs(int cur, int parent) {
    if (parent == -1) {
        node[cur] =  n;
    }
    auto children = g[cur];
    for(int i=0;i<children.size();i++){
        if (children[i].first == parent)
            continue ;
        if (node[cur] >= n) {
            node[children[i].first] = x;
            edge[children[i].second] = x^n;
        }
        else {
            node[children[i].first] = x^n;
            edge[children[i].second] = x;

        }
        x ++;
        dfs(children[i].first, cur);
    }

}
int32_t main() {
    fastio;
    get(t);
    while (t--) {
        get(p);
        n = 1 << p;
        x = 1;
        g.clear();
        node.clear();
        edge.clear();
        node.resize(n+1);
        edge.resize(n+1);
        g.resize(n+1);
        int edge_cnt = 1;
        for (int i=0;i<n-1;i++) {
            get(u) get(v)
            g[u].push_back({v, edge_cnt});
            g[v].push_back({u, edge_cnt++});

        }
        dfs(1, -1);
        cout << 1 << endl;
        for(int i=1;i<=n;i++) {
            cout << node[i] << " " ;
        }
        cout << endl;
        for(int i=1;i<n;i++) {
            cout << edge[i] << " " ;
        }
        cout << endl;
    
    }

}
```
</details>

