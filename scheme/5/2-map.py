my_list = [1, 2, 3, 4, 5]

def sqr(x):
	return x ** 2;

def map(list_, f):
	return [f(x) for x in list_]

def map_iter(list_, f):
	new_list = []

	for i in list_:
		new_list.append(f(i))

	return new_list
