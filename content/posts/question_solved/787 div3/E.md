---
title: Replace With the Previous, Minimize
Date: 2022-05-05
---

## Problem link

https://codeforces.com/contest/1675/problem/E

To get the minimum string, we need to optimize characters from left to right. The point we should minimize from the largest character which we can let it become `a`. For example, we can only need 2 steps to minimize string $abc$ instead of 3.

Now the string can divide into two parts. The first part is we can get all `a` within $k$ step. In another part, we can only minimize the first character. 

Support first part is $s1$, the second part is $s2$. the whole string is $s1 + s2$.  When we minimize the first part we should replace the character which ranges from $a$ to $max(s1)$ to $a$. Because we perform from the largest element. For the second part, we just optimize for the first element. Suppose  we have $k2$ operations left. We need to replace the character range from $s2[0] - k2$ to $s2[0]$ to $s2[0] - k2$. 

```cpp
//#include <bits/stdc++.h>
#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
#define endl "\n"
using namespace std;
#define fastio cin.tie(0), cout.tie(0), ios_base::sync_with_stdio(0);
int32_t main() {
    fastio int t;
    cin >> t;
    while (t--) {
        int n, k;cin >> n >> k;
        string s;
        cin >> s;
        vector<int> diff(s.size(), 0);
        vector<int> min_k(s.size(), 0);
        for(int i=0;i<n;i++) {
            diff[i] = s[i] - 'a';
            if (i==0)
                min_k[i] = diff[i];
            else
                min_k[i] = max(min_k[i-1], diff[i]);
        }
        int pos_k = upper_bound(min_k.begin(), min_k.end(), k) - min_k.begin();

        if (pos_k == n || min_k[pos_k] <= k) {
            for(int i=0;i<s.size();i++)
                cout << 'a';
            cout<<endl;
            continue;
        }
        if (pos_k == 0) {
            int up = s[0];
            int down = s[0] - k;
            for(int i=0;i<n;i++) {
                if (s[i] <= up && s[i] >= down) {
                    s[i] = down;
                }
            }
        }
        else {
            pos_k --;
            int up = 'a' + min_k[pos_k];
            int rest = k - min_k[pos_k];
            for(int i=0;i<n;i++){
                if (s[i] <= up) {
                    s[i] = 'a';
                }
            }
            up = diff[pos_k+1] + 'a';
            int down = up - rest;
            for(int i=0;i<n;i++) {
                if (s[i] <= up && s[i] >= down) {
                    s[i] = down;
                }
            }
        }
        cout << s << endl;
    }
}

```





