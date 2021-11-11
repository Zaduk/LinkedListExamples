//
// Created by Julien Franceschini on 2021-11-10.
//

class listNode
{
private:
    int key;
    listNode *next;
public:
    listNode();
    listNode(int k);
    listNode(int k, listNode* n);
    listNode(const listNode& other);
    ~listNode();
    int getKey() const;
    listNode* getNext() const;
    void setKey(int k);
    void setNext(listNode* n);
    void print() const;
};