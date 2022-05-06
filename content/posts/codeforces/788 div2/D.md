---
title: 788D Very Suspicious
Date: 2022-05-06
---

## Problem link

https://codeforces.com/contest/1670/problem/D

## Solution

There are 3 kinds for lines \\, /, —. When we add a new line to the graph it will across with two other different type of line. Each cross will increase 2 equilateral triangles. 

<details>
``` cpp
#include <bits/stdc++.h>
#define endl "\n"
using namespace std;
#define fastio cin.tie(0), cout.tie(0), ios_base::sync_with_stdio(0);
int32_t main() {
    fastio int t;
    cin >> t;
    int cnt = 0;
    vector<int> v;
    v.push_back(0);
    for (int i = 0; i < 1e9; i++) {
        v.push_back(v[v.size()-1] + i * 2 * 2);
        v.push_back(v[v.size() -1] + i * 4 + 2);
        v.push_back(v[v.size()-1] + i * 4 + 4);
        if (v[v.size()-1] >= int(1e9))
            break;
    }
    while (t--) {
        int n;
        cin >> n;
        auto it = std::upper_bound(v.begin(), v.end(), n-1);
        cout << it - v.begin() << endl;
    }
}
```
</details>
