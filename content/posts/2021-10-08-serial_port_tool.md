---
title: Serial Communication Tool Description
author: Guangzong Chen
date: 2021-10-08 11:36:00 -0400
categories: [Tool]
tags: [Tool]
math: true
mermaid: true
---

I am an embedded software developer. USART is a very common communication protocol for communication and debug. I was using Moserial Terminal and Cutecom. But I found several problems with those tools. So I designed this tool to help embedded software developers. This tool still works in progress. The function of this tool is limited for now.

The main thing in this tool is reliability. The tool will not crash and get correct data from the serial port. Display these data correctly and completely.

## Usage

This tool support following commands. `list`, `open`, `close`, `send`, `loop`, `loopend`, `clean`, `show`, `hide`, `set`.

1. `list`: List all available ports in the log window

2. `open <port_name>`: Open port.

3. `close`: Close port.

4. `send <data>`: Send _data_ to port.

5. `loop <data>`: Send _data_ periodic. The period is shown in the status bar.

6. `loopend`: Stop sending _data_ periodic.

7. `clear`: Clear log and receive data windows.

8. `show <window>`: Show log or hex window. The parameter, _window_, should be `log` or `hex`.

9. `hide <window>`" Inverse operation of `show`

10. `set <name> <value>`: Change port parameter.

### Set command

Supportted settings: `baudrate`, `databit`, `parity`, `stopbit`, `flowcontrol`, `period`.

1. `baudrate`: Change baudrate. Support any value.
2. `databit`: Change databit. Support value: 5, 6, 7, 8.
3. `parity`: Change parity. Support value: 0: None, 1: Odd, 2: Even.
4. `stopbit`" Change stopbit. Support value: 1, 2.
5. `flowcontrol`: Change flow control. Support value: hard, soft, none.
6. `period`: Change loop send periodically. This will work after the port is open. Minimum value: 10ms for Linux, 15 ms for Windows. Because the operating system can not run programming in real-time, the value is not accurate. 

## Feature list

- [x] open port
- [x] close port
- [x] send ASCII to port
- [x] view received data as hex
- [x] change port s~~e~~ttings
- [x] send data periodic
- [ ] record output to file
- [ ] send hex to port
- [ ] send hex periodically