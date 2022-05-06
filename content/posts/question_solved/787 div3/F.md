---
title: Vlad and Unfinished Business
Date: 2022-05-05

---

## Problem link

https://codeforces.com/contest/1675/problem/F

## Solution

Put $x$ as root. Then we can find that to visit a house, not on the path $x\rightarrow y$ we need to walk on the same road twice. If we visit a house on the path $x \rightarrow y$ we only need to walk the road once. After we found this characteristic, the rest of things became easy. We can just use dfs to visit all nodes, if this node is in the path $x$ to $y$, we mark it as 2, else if it is in the path $x$ to some houses, we mark it as 1, Otherwise mark it as 0. Now all nodes marked as 2 will contribute 1 to the answer, and those marked as 1 will contribute 2 to the answer.

<details>
```
#include <bits/stdc++.h>
//#define endl "\n"
using namespace std;
int x, y;
set<int> s;
int ans;
#define fastio cin.tie(0), cout.tie(0), ios_base::sync_with_stdio(0);
int dfs(int father, int node, vector<vector<int>> &g) {
    int val = 0;
    if (s.count(node))
        val = 1;
    if (node == y)
        val = 2;
    for(int i = 0; i< g[node].size(); i++) {
        if (g[node][i] == father)
            continue;
        val = max(val, dfs(node, g[node][i], g));
    }
    if (val == 1)
        ans += 2;
    else if (val == 2)
        ans += 1;
    return val;
}
int32_t main() {
    fastio int t;
    cin >> t;
    while (t--) {
        ans = 0;
        int k, n;
//        cin >> k >> n;
        cin >> n >> k;
        cin >> x >> y;
        x--, y--;
        s.clear();
        vector<int> a(n);
        for (int i = 0; i < k; i++)
            cin >> a[i], s.insert(--a[i]);
        vector<vector<int>> g(n+1, vector<int>());
        for (int i = 0; i < n - 1; i++) {
            int u, v;
            cin >> u >> v;
            u--,v--;
            g[u].push_back(v);
            g[v].push_back(u);
        }
        dfs(-1, x, g);
        cout << ans-1 << endl;
    }
}
```
</details>


