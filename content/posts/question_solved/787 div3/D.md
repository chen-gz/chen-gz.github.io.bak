---
title: Vertical Paths
Date: 2022-05-05
---

## Problem link

https://codeforces.com/contest/1675/problem/D

## Solution

The number of leaves is the number of paths. For each leaf, we have to build a path for it. So the leaf is the last element for each path. 

Now we start to build our path from the leaf. We will find its father and add it to the path. If the parent node is already added by another brother node, we should stop at the current node to avoid having the same node in two paths. So the time complexity is $O(n)$.

```cpp
				vector<vector<int>> anss;
        for (int i = 0; i < leaf.size(); i++) {
            vector<int> cur_ans;
            int cur_node = leaf[i];
            cur_ans.push_back(cur_node);
            done[cur_node] = true;
            while (done[p[cur_node]] == false) {
                done[p[cur_node]] = true;
                cur_node = p[cur_node];
                cur_ans.push_back(cur_node);
            }
            std::reverse(cur_ans.begin(), cur_ans.end());
            anss.push_back(cur_ans);
        }
```

