#ifndef STMLIST_HPP__
#define STMLIST_HPP__

class List{
  struct Node{
    int key;
    Node* next;
    Node(int val = -1) : key(val), next() { }
    Node(int val, Node* next) : key(val), next(next) { }
  };
  public:
    Node* head;
    List();

    TM_CALLABLE
    void insert(int val TM_ARG);

    TM_CALLABLE
    void remove(int val TM_ARG);

    TM_CALLABLE
    bool contains(int val TM_ARG);
};

List::List() : head(new Node()) { }

TM_CALLABLE
void List::insert(int val TM_ARG){
  const Node* prev(head);
  const Node* curr(TM_READ(prev->next));
  if(!contains(val TM_PARAM)){
    Node* insert_point = const_cast<Node*>(prev);
    Node* new_node = (Node*) TM_ALLOC(sizeof(Node));
    new_node->key = val;
    new_node->next = const_cast<Node*>(curr);
    TM_WRITE(insert_point->next, new_node);
  }
}

TM_CALLABLE
void List::remove(int val TM_ARG){
  const Node* prev(head);
  const Node* curr(TM_READ(prev->next));
  while (curr != NULL) {
    if (TM_READ(curr->key) == val) {
      Node* mod_point = const_cast<Node*>(prev);
      TM_WRITE(mod_point->next, TM_READ(curr->next));
      TM_FREE(const_cast<Node*>(curr));
      break;
    }
    prev = curr;
    curr = TM_READ(prev->next);
  }
}

TM_CALLABLE
bool List::contains(int val TM_ARG){
  const Node* curr(head);
  curr = TM_READ(curr->next);
  while (curr != NULL) {
      if (TM_READ(curr->key) == val)
          return true;
      curr = TM_READ(curr->next);
  }
  return false;
}

#endif
