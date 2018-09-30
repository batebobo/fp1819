#include "list.h"

#include <functional>

template <class T>
void map(Node<T> *head, std::function<T(T)> f){
	if(head == nullptr)
		return;
	else{
		head->data = f(head->data);
		map(head->next, f);
	}
}

template <class T>
void map_iter(Node<T> *head, std::function<T(T)> f){
	Node<T> *curr = head;

	while(curr != nullptr){
		curr->data = f(curr->data);
		curr = curr->next;
	}
}

int sqr(int arg){
	return arg * arg;
}

int main(){
	LinkedList<int> list;
	list.insert(5);
	list.insert(10);
	list.insert(15);
	list.insert(25);
	list.insert(35);

	std::function<int(int)> f = sqr;

	list.print();
	map(list.head, f);
	list.print();
	map_iter(list.head, f);
	list.print();

	// 35 -> 25 -> 15 -> 10 -> 5

	return 0;
}