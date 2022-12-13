---
title: CMake and MathGL configuration
author: Guangzong Chen
date: 2022-01-04 11:36:00 -0400
categories: [Misc]
tags: [Misc]
math: true
mermaid: true
---

## CMake and MathGL configuration

Most of the content is from StackOverflow.

```cmake
cmake_minimum_required(VERSION 3.21)
project(untitled)
set(CMAKE_CXX_STANDARD 17)
FIND_PATH(MathGL_INCLUDE_DIRS NAMES mgl2/mgl.h
        PATHS
        /opt/local/include
        /usr/include
        /usr/local/include
        )

FIND_LIBRARY(MathGL_LIB NAMES libmgl2.so
        PATHS
        /opt/local/lib
        /usr/local/lib
        /usr/lib
        )
FIND_LIBRARY(MathGL_QT_LIB NAMES libmgl2-qt5.so
        PATHS
        /opt/local/lib
        /usr/local/lib
        /usr/lib
        )


SET(MathGL_LIBRARIES ${MathGL_LIB} ${MathGL_QT_LIB})
message(${MathGL_LIBRARIES})

IF (MathGL_INCLUDE_DIRS AND MathGL_LIBRARIES)
    SET(MathGL_FOUND TRUE)
    MESSAGE(STATUS "MathGL found")
    MESSAGE(STATUS "MathGL Include dirs:" ${MathGL_INCLUDE_DIRS})
    MESSAGE(STATUS "MathGL Library:" ${MathGL_LIB})
ELSE (MathGL_INCLUDE_DIRS AND MathGL_LIBRARIES)
    MESSAGE(STATUS "MathGL was not found")
ENDIF(MathGL_INCLUDE_DIRS AND MathGL_LIBRARIES)
#add_executable(untitled mathgl.cpp)
add_executable(untitled mathgl.cpp)
target_link_libraries(untitled ${MathGL_LIB})
target_link_libraries(untitled ${MathGL_QT_LIB})
```