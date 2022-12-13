---
title: MOSFET Structure 
author: guangzong
date: 2020-08-31 17:35:00 -0400
categories: [Electric]
tags: [Mosfet]
math: true
---


## Basic Concept

MOS stand for metal oxide semiconductor.
FET stand for field effects transistor.

MOSFET has four terminal, gate, source , drain and body. 
Source and drain actually they are same, they only been determined when there are external connection.

**Gate** is used for control MOSFET. 
**Source** is the emit the resources. 
**Drain** is the receive the resources. 
**Body** is main part of MOSFET. Support and provide PN node to cut off the circuit.  

**Resources** refer to electron and hole. The resources in N type node is electron, in P type node is hole.
Most case we will see the arrow in MOSFET, arrow indicate the current direction.

There exis capacitor in MOSEFT. there exist an insulate between gate and body. So body and gate can from and capacitor.
Because of this capacitor we can control the performance of MOSFET.

## N-channel MOSFET

Most time we say NMOS refer to N-channel MOS.
The channel refer to the channel between two N type node. 

![the structure of N MOS](https://raw.githubusercontent.com/chen-gz/picBed/master/NMOS.gif)

### Turn On N-MOS

The way to turn on N-MOS is create N channel between source and drain. The idea to create N channel between source and drain is attract electron to form a channel. Under this idea, we apply $V_{GB} > 0$ to gate and body. As mentioned before, gate and body can regard as an capacitor. So electron will be attract between source and gain. So now the current can flow between source and drain. At most time we will connect body to ground, and apply positive voltage in gate to open the NMOS.

### Source And Drain

So far, source and drain are no difference. The resources in NMOS in electron. So the source is the source of electron. The electron flow from source to drain. So $V_{DS} > 0$. After we apply the the voltage between source and drain, they are being determined. Actually, the structure of source and drain might be a little different. So just follow the data-sheet. This idea just help to understand what is source and drain.

## P-channel MOSFET

The structure of P channel MOSFET as some as N channel MOSFET, just exchange N type and P type material.

The method to analysis the P-MOS as same as N-MOS.

## References

1. <https://www.electronics-tutorials.ws/transistor/tran_6.html>
