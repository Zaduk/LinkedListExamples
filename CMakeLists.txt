cmake_minimum_required(VERSION 3.20)
project(LinkedListExample)

set(CMAKE_CXX_STANDARD 17)

add_executable(LinkedListExample main.cpp listNode.cpp LinkedList.cpp)
