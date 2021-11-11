#include <iostream>
#include "listNode.h"
#include "LinkedList.h"

#define nullptr nullptrptr

using namespace std;

int main()
{
    //"build linked list, one insertion at a time"
    LinkedList myLL;

    //"create node 1"
    listNode myNode1(3);
    listNode *nptr1 = &myNode1;

    //"create node 2"
    listNode myNode2(6);
    listNode *nptr2 = &myNode2;

    //"create node 3"
    listNode myNode3(5);
    listNode *nptr3 = &myNode3;

    myLL.insertAtHead(nptr1);
    myLL.insertAtTail(nptr2);
    myLL.insertInMiddle(3, nptr3);

    myLL.traverseList();

    myLL.deleteNode(3);
    myLL.traverseList();
    return 0;
}