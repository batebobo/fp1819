--map 
--myMap (\x->x+1) [1, 2, 3, 4] -> [2, 3, 4, 5]

--filter
--myFilter (\x->x==2) [1, 2, 3, 4, 2, 3, 4, 2] -> [2, 2, 2]

--foldr
--myFoldr (+) 0 [1, 2, 3, 4, 5] -> 15

--zipWith  It takes a function and two lists as parameters and 
--then joins the two lists by applying the function between 
--corresponding elements
--myZipWith  (*) [1, 2, 3, 4, 5] [3, 4, 5, 6, 6] ->  [4, 6, 8, 10, 11]

--using the previous task make a function that joins the corresponding elements in a list
--moreLists [1, 2, 4, 2] [2, 3, 2, 7] -> [[1, 2], [2, 3], [4, 2], [2, 7]]

--takeWhile takes a predicate and a list and then goes from 
--the beginning of the list and returns its elements while 
--the predicate holds true.
--myTakeWhile (<10) [1..100] -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

--dropWhile takes a predicate and a list and then goes from 
--the beginning of the list and drops its elements while 
--the predicate holds true.
--myTakeWhile (<4) [1..10] -> [4, 5, 6, 7, 8, 9, 10]

--function that receives a list and returns the sum of its squared elements 
--multiplied by 2
--strangeFunc1 [1, 2, 3, 4, 5] -> 220


