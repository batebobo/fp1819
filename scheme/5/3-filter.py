my_list = [1, 2, 3, 4, 5, 6, 7, 8]

def filter_iter(list, pred):
	filtered = []

	for i in list:
		if pred(i):
			filtered.append(i)

	return filtered

def filter_beautiful(list, pred):
	return [x for x in list if pred(x)]

def even(x):
	return x % 2 == 0

print(filter_iter(my_list, even))
print(filter_beautiful(my_list, even))