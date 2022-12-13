---
layout: post
title: Mathematica Install
date: 2020-10-11 20:20:00 -0400
author: guangzong
categories: [Linux]
tags: [Linux, Mathematics]
---

We don't need using root to execute the file.

### Install Location

Create an folder in `/opt/` and change owner to normal user

```bash
mkdir Mathematica
chown zong:users mathematica
```

provide following position for Mathematica

```
/opt/Mathematica/11.3
```

create directory type `y`

it will start installing

### Start Script 

in order to start Mathematica and change nothing in our system.

Create a folder `bin` under Mathematica folder.

```bash
cd /opt/Mathematica/11.3
mkdir bin
chown zong:users bin
```

type following command in Mathematica install terminal

```
/opt/Mathematica/11.3/bin
```

### Export Mathematica Bin Path

I am using `xinit` to start the system. So I add it to `xinitrc`

```bash
cd /etc/X11/xinit/
vim xinitc

export PATH=$PATH:'/opt/Mathematica/11.3/bin/' 
```

restart the system. it will work.

### Some problem

if encounter problem, some symbol is undefined. Do following step

```bash
cd /opt/Mathematica/11.3/SystemFiles/Libraries/Linux-x86-64
mv libz.so.1 libz.so.1.bak
mv libfreetype.so.6 libfreetype.so.6.bak
mv libfreetype.so libfreetype.so.bak
```

### Register Mathematica

Buy a license from Wolfram.

