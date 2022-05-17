---
title: 791C Rooks Defenders
Date: 2022-05-14

---

## Problem link

https://codeforces.com/contest/1679/problem/C

## Solution

For this problem, we only need position of $x$ and position of $y$ separately. We don't need combine them.

So use fenwick tree to store the presum of $x$ and $y$. The value in each node only 1 and 0. Stand for has $x$ or haven't $x$. Then the answer just the $presum(x2) - presum(x1) == x2 - x1 || presum(y2) - presum(y1) == y2 - y1$ 

<details>
```
#include <bits/stdc++.h>
using namespace std;
#define endl "\n"
#include <stdbool.h>
#define fastio cin.tie(0), cout.tie(0), ios_base::sync_with_stdio(0);
#include <stdio.h>
//#define int long long

template <typename T> class fenwick {
  public:
    vector<T> fenw;
    int n;

    fenwick(int _n) : n(_n) { fenw.resize(n); }
    
    void modify(int x, T v) {
        while (x < n) {
            fenw[x] += v;
            x |= (x + 1);
        }
    }
    
    T get(int x) {
        T v{};
        while (x >= 0) {
            v += fenw[x];
            x = (x & (x + 1)) - 1;
        }
        return v;
    }
};
int32_t main() {
    fastio;
    int n, q;
    cin >> n >> q;
    map<int, int> mx;
    map<int, int> my;
    set<int> sx;
    set<int> sy;
    fenwick<int> fen_x(4 * n);
    fenwick<int> fen_y(4 * n);
    while (q--) {
        int type;
        cin >> type;
        if (type == 1) {
            int x, y;
            cin >> x >> y;
            mx[x]++, my[y]++;
            if (mx[x] == 1)
                fen_x.modify(x, 1);
            if (my[y] == 1)
                fen_y.modify(y, 1);
        } else if (type == 2) {
            int x, y;
            cin >> x >> y;
            mx[x]--, my[y]--;
            if (mx[x] == 0)
                fen_x.modify(x, -1);
            if (my[y] == 0)
                fen_y.modify(y, -1);

        } else if (type == 3) {
            int x1, y1, x2, y2;
            cin >> x1 >> y1 >> x2 >> y2;
            if (fen_x.get(x2) - fen_x.get(x1-1) == x2 - x1 + 1) {
                cout << "Yes" <<endl;
                continue ;
            }
            if (fen_y.get(y2) - fen_y.get(y1-1) == y2 - y1 + 1) {
                cout << "Yes" <<endl;
                continue ;
            }
    
            cout << "No" << endl;
        }
    }
}
```
</details>



