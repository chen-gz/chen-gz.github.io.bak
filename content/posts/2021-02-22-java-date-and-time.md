---
title: Java Date and Time
author: Guangzong Chen
date: 2021-02-22 20:14:00 -0500
categories: [Misc]
tags: [Java]
math: true
mermaid: true
---

java get time from system
```java
import java.time.format.DateTimeFormatter;  
import java.time.LocalDateTime;    
public class CurrentDateTimeExample1 {    
  public static void main(String[] args) {    
   DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
   LocalDateTime now = LocalDateTime.now();  
   System.out.println(dtf.format(now));  
  }    
}    
```
