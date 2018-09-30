#include <iostream>

template <class T>
class Node{
public:
	T data;
	Node<T> *next;

	Node(const T& data_) : data(data_), next(nullptr){}

	Node(const Node<T> &rhs) = delete;
	Node& operator=(const Node<T> &rhs) = delete;

	~Node(){}
};

template <class T>
class LinkedList{
public:

	void print_(const Node<T>* head) const{
		if(head == nullptr){			
			std::cout << std::endl;
			return;
		}
		else{
			std::cout << head->data << " ";
			print_(head->next);
		}
	}

	Node<T> *head;

public:
	LinkedList() : head(nullptr){}

	void insert(const T& data){
		Node<T> *newNode = new Node<T>(data);
		newNode->next = head;
		head = newNode;
	}

	void print() const{
		print_(this->head);
	}

};