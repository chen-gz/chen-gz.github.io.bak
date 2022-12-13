---
title: monitor folder
author: Guangzong Chen
date: 2021-01-24
categories: [Linux]
tags: [Linux]
math: true
mermaid: true
---

folloing scrip is used to monitor ag it folder by using `inotify-tool`

```
#!/bin/bash  
src="/home/git/hugo.git"
 
/usr/bin/inotifywait -mq --timefmt '%d/%m/%y %H:%M' --format '%T %w%f%e'  --event delete,modify,create,attrib $src | while read file 
do 
    sh ./publish.sh
done
```
