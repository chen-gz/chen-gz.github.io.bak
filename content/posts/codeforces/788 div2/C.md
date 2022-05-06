---
title: 788C Where is the Pizza?
Date: 2022-05-06
---

## Problem link

https://codeforces.com/contest/1670/problem/C

## Solution

For some position we don't have any choice. It can only from array $a$ or array $b$. These position is numbers contains in $d$ and related to $d$. 

We can build a graph from $a[i]$ to $b[i]$ for all $i$. Then we remove the edge for those number already appeared in $d$. Then we find the number of disconnect component $cnt$. For each disconnect component we have 2 choice. So the result is $2^cnt$.

<details>
``` cpp
#include <bits/stdc++.h>
#define endl "\n"
using namespace std;
#define fastio cin.tie(0), cout.tie(0), ios_base::sync_with_stdio(0);
int32_t main() {
    fastio int t;
    cin >> t;
    while (t--) {
        int n;
        cin >> n;
        vector<int> a(n);
        vector<int> b(n);
        vector<int> d(n + 2, 0);
        for (int i = 0; i < n; i++)
            cin >> a[i];
        for (int i = 0; i < n; i++)
            cin >> b[i];
        set<int> s;
        for (int i = 0; i < n; i++) {
            int tmp;
            cin >> tmp;
            if (tmp!=0)
                d[tmp] = 1;
        }
        vector<bool> done(n + 1, false);
        vector<int> g(n + 1, 0);
        for (int i = 0; i < n; i++) {
            if (d[a[i]] != 1 && d[b[i]] != 1 && a[i] != b[i])
                g[a[i]] = b[i];
        }
        int cnt = 0;
        for (int i = 1; i <= n; i++) {
            int cur = i;
            if (done[cur] == true)
                continue ;
            while (g[cur] != 0 || done[g[cur]] == false) {
                cur = g[cur];
                done[cur] = true;
                if (cur == i) {
                    cnt++;
                    break;
                }
            }
            done[g[i]] = true;
        }
        const int MOD = int(1e9 + 7);
        long long ans = 1;
        for (int i = 0; i < cnt; i++) {
            ans *= 2;
            ans %= MOD;
        }
        cout << ans << endl;
    }
}
```
</details>
