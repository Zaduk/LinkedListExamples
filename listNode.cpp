//
// Created by Julien Franceschini on 2021-11-10.
//
#include "listNode.h"
#include <iostream>

using namespace std;

//"Linked list node implementation"


listNode::listNode()
{
    key = 0;
    next = nullptr;
}
listNode::listNode(int k)
{
    key = k;
    next = nullptr;
}
listNode::listNode(int k, listNode* n)
{
    key = 0;
    next = n;
}
listNode::listNode(const listNode& other)
{
    key = other.key;
    next = other.next;
}
listNode::~listNode() { }
int listNode::getKey() const
{
    return key;
}
listNode* listNode::getNext() const
{
    return next;
}
void listNode::setKey(int k)
{
    key = k;
}
void listNode::setNext(listNode* n)
{
    next = n;
}
void listNode::print() const
{
    cout << "(" << key << "," << next << ")";
}
