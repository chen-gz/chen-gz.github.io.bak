---
author: guangzong
date: 2022-07-28
title: bitset
category: Algorithm
---

``` C++
#include <iostream>
#include <set>
#include <vector>
#include <assert.h>

#define endl "\n"

using namespace std;

class g_bitset {
private:
    vector<unsigned long long> val;
    int max_index = 0;
    int max  = 0;
public:
    g_bitset() {
        val.resize(5010);
        std::fill(val.begin(), val.end(), 0ull);
    }

    // add the nth bit
    void add(int n) {
        int index = n / 64;
        int pos = n % 64;
        while (__builtin_add_overflow(val[index],(1ull << pos), &val[index])) {
            pos = 0;
            index++;
        }
        if (index >= max_index) {
            max_index = index;
            max =(63 - __builtin_clzll(val[max_index])) + 64 * (max_index);
        }
    }

    void sub(int n) {
        int index = n / 64;
        int pos = n % 64;
        unsigned long long tmp = 0;
        while (__builtin_sub_overflow(val[index], (1ull << pos), &val[index])) {
            pos = 0;
            index++;
        }
        if (index >= max_index) {
            while(val[index] == 0)
                index --;
            max_index = index;
            max =(63 - __builtin_clzll(val[max_index])) + 64 * (max_index);

        }
    }

    int get_max() {
        return max;
    }
};

int main() {
    ios_base::sync_with_stdio(false);
    cin.tie(0), cout.tie(0);
    int n;
    int q;
    cin >> n >> q;
    vector<int> a(n);
    g_bitset bs;
    for (auto &i: a) {
        cin >> i;
        bs.add(i);
    }
    while (q--) {
        int k, l;
        cin >> k >> l;
        bs.sub(a[k - 1]);
        bs.add(l);
        a[k - 1] = l;
        cout << bs.get_max() << endl;

    }
}
```
