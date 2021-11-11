//
// Created by Julien Franceschini on 2021-11-10.
//

#include <iostream>
#include <cstddef>
#include "listNode.h"
#include "LinkedList.h"

//"Linked list implementation"

using namespace std;

LinkedList::LinkedList()
{
    head = nullptr;
}

LinkedList::LinkedList(const LinkedList& source)
{
    listNode *auxptr = source.head;
    listNode *last = nullptr;
    listNode *nodeptr = nullptr; //"new node to be inserted"
    head = nullptr; //"new list's head is set to nullptr to flush any existing data in new list"

    while (auxptr != nullptr)
    {
        nodeptr = new listNode(auxptr->getKey()); //"allocate new node"
        if (last == nullptr) head = nodeptr; //"in first iteration this will always run"
        else last->setNext(nodeptr); //"make last point to the newly created node"
        auxptr = auxptr->getNext(); //"increment auxptr"
        last = nodeptr; //"increment last"
    }
}

LinkedList::~LinkedList()
{
    listNode *auxptr;
    while(head != nullptr)
    {
        auxptr = head;
        head = auxptr->getNext();
        delete auxptr;
    }
}

LinkedList & LinkedList::operator=(const LinkedList& source)
{
    if (this == &source) return (*this);

    //"Delete the list of *this, destructor code"
    listNode *auxptr;
    while(head != nullptr)
    {
        auxptr = head;
        head = auxptr->getNext();
        delete auxptr;
    }

    //"Allocate new listNode’s and copy from rhs, CC code"
    listNode *auxptrsrc = source.head;
    listNode *last = nullptr;
    listNode *nodeptr = nullptr; //"new node to be inserted"
    head = nullptr; //"new list's head is set to nullptr to flush any existing data in new list"

    while (auxptrsrc != nullptr)
    {
        nodeptr = new listNode(auxptrsrc->getKey()); //"allocate new node"
        if (last == nullptr) head = nodeptr; //"in first iteration this will always run"
        else last->setNext(nodeptr); //"make last point to the newly created node"
        auxptrsrc = auxptrsrc->getNext(); //"increment auxptrsrc"
        last = nodeptr; //"increment last"
    }
    return (*this);
}

//bool LinkedList::insertKey(int k);
//bool LinkedList::deleteKey(int k);
//bool LinkedList::keyExists(int k);

//"works if list is empty: means auxptr = head = nullptr, so skips while loop"
void LinkedList::traverseList()
{
    listNode *auxptr = head;
    while (auxptr != nullptr)
    {
        cout << auxptr->getKey() << endl;
        auxptr = auxptr->getNext();
    }
}

//"similar to traverseList() but instead of printing out, compare keys with k"
listNode* LinkedList::locateInList(int k)
{
    listNode *auxptr = head;
    while (auxptr != nullptr)
    {
        if (auxptr->getKey() == k) return auxptr; //"or break out of while"
        auxptr = auxptr->getNext();
    }
    return auxptr;
}

//"the order of these 2 statements matters, otherwise nodeptr points to itself"
void LinkedList::insertAtHead(listNode *nodeptr)
{
    //"make new node point to old first node"
    nodeptr->setNext(head);
    //"make head point to new node"
    head = nodeptr;
    //"give new node the key k"
    //nodeptr->setKey(k);
}

//"because we have to go thru the list in order to get the last element, we have to traverse it"
void LinkedList::insertAtTail(listNode *nodeptr)
{
    listNode *auxptr = head;
    //"if list is empty"
    if (auxptr == nullptr)
    {
        head = nodeptr;
        nodeptr->setNext(nullptr);
    }
    //"otherwise"
    while (auxptr->getNext() != nullptr) //"note: if auxptr is nullptr, seg fault"
        auxptr = auxptr->getNext();

    /* Alternate, less concise notation:
    while (auxptr != nullptr)
    {
        if (auxptr->getNext() == nullptr)
            break;
        auxptr = auxptr->getNext();
    }
    */

    //"auxptr now points to the last item, we can insert the new node
    auxptr->setNext(nodeptr);
    nodeptr->setNext(nullptr);
    //"give new node the key k"
    //nodeptr->setKey(k);
}

//"traverse list and insert new node after an existing node whose key is k"
void LinkedList::insertInMiddle(int k, listNode *nodeptr)
{
    listNode *auxptr = head;
    while(auxptr != nullptr)
    {
        if (auxptr->getKey() == k)
        {
            nodeptr->setNext(auxptr->getNext());
            auxptr->setNext(nodeptr);
            return;
        }
        auxptr = auxptr->getNext();
    }
}

//"traverse then delete node whose key is k"
void LinkedList::deleteNode(int k)
{
    listNode *auxptr = head;
    listNode *prevptr = nullptr;
    //"list is empty"
    if (auxptr == nullptr) return;

    while (auxptr != nullptr)
    {
        if (auxptr->getKey() == k)
        {
            //"we have not traversed the list at all yet and auxptr is still head, i.e. still points to the first node"
            //"i.e. k is the value of the very first node!"
            if (auxptr == head)
            {
                head = head->getNext();
                delete auxptr; // TODO: this is the problem. Stop memory leak!
                cout << "meow" << endl;
                cout << "hemw" << endl;
                return;
            }
            //"link prev node and next node together and delete current node"
            prevptr->setNext(auxptr->getNext());
            cout << "Woof" << endl;
            delete auxptr;
        }
        prevptr = auxptr;
        auxptr = auxptr->getNext();
    }
    //"node not found after traversal"
    if (auxptr == nullptr) return;
}