---
title: 788B Dorms War
Date: 2022-05-06
---

## Problem link

https://codeforces.com/contest/1670/problem/B

## Solution

If we do simulate the process. We will get `TLE` since the test case is  large enough. We can find the all character can be delete before and special character. If there an special character after an special character, this special character will be delete. But even this special character is been deleted it will not affect how many times need to delete the character before this character. So we just need to count the max length of non special characters. 

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
        int n;cin >> n;
        string s;
        cin >> s;
        int k; cin >> k;
        vector<bool> c(26, false);
        for(int i=0;i<k;i++) {
            char tmp; cin >> tmp;
            c[tmp -'a'] = true;
        }
        int ans = 0;
        int cnt = 0;
        for(int i=0;i<s.size();i++){
            if (c[s[i] - 'a'] == 1) {
                ans = max(ans, cnt);
                cnt = 1;
            }
            else cnt ++;
        }
        cout << ans << endl;
    }
}
```
</details>

