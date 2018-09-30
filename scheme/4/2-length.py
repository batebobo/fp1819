from LinkedList import LinkedList

def length(head):
	if head is None:
		return 0;
	return 1 + length(head.get_next())

def length_ugly(head):
	curr = head
	size = 0

	while curr != None:
		size += 1
		curr = curr.get_next()

	return size


lst = LinkedList()

lst.insert(5)
lst.insert(10)
lst.insert(15)

print(length(lst.head))
print(length_ugly(lst.head))