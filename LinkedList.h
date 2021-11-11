//
// Created by Julien Franceschini on 2021-11-10.
//

class LinkedList
{
private:
    listNode *head;
public:
    LinkedList();
    LinkedList(const LinkedList& other);
    ~LinkedList();
    LinkedList & operator=(const LinkedList& rhs);
    //bool insertKey(int k);
    //bool deleteKey(int k);
    //bool keyExists(int k);

    void traverseList();
    listNode *locateInList(int k);
    void insertAtHead(listNode *nodeptr);
    void insertAtTail(listNode *nodeptr);
    void insertInMiddle(int k, listNode *nodeptr);
    void deleteNode(int k);
};