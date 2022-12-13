---
layout: post
title: Useful Linux Command
date: 2020-10-17
categories: [Linux]
tags: [Linux]
author: Zong
---



1. Get CPU information 

   ```
   cat /proc/cpuinfo
   ```

2. change default terminal 

   ```
   gsettings set org.cinnamon.desktop.default-applications.terminal exec kitty
   ```

3. modify system PATH

   ```
   export PATH=$PATH:/place/with/the/file
   ```

4. View all network socket and connect status 

   ```
   netstat -na
   ```

5. system sys TCP syn cookies status(default is on)

   ```
   sysctl -a | grep cookie (Display the SYN cookie flag)
   sysctl -w net.ipv4.tcp_syncookies=0 (turn off SYN cookie)
   sysctl -w net.ipv4.tcp_syncookies=1 (turn on SYN cookie)
   ```

6. Netwox Tool 76

   ![image-20201017151944946](https://raw.githubusercontent.com/chen-gz/picBed/master/image-20201017151944946.png)

7. Netwox Tool 78

   ![image-20201017152400707](https://raw.githubusercontent.com/chen-gz/picBed/master/image-20201017152400707.png)

8. synchronize time

   ```
   timedatectl set-ntp true
   ```

   
