--some more list comprehension
getAllTuples :: [Int] -> [(Int, Int)]
getAllTuples xs = [(x, y) | x <- xs, y <- xs]

isRightTriangle :: [Int] -> [(Int, Int, Int)]
isRightTriangle xs = [(x, y, z) | x <- xs, y <- xs, z <- xs,
                                                    x^2 + y^2 == z^2,
                                                    x < y] 

myDrop :: [a] -> Int -> [a]
myDrop [] _ = []
myDrop xs n = if n == 0 then xs else myDrop (tail xs) (n - 1)

myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = []
myZip _ [] = []
myZip (x : xs) (y : ys) = (x, y) : myZip xs ys

sumElems :: (Num a) => [a] -> a
sumElems [] = 0
sumElems (x : xs) = x + sumElems xs

myMember :: (Eq a) => [a] -> a -> Bool
myMember [] _ = False
myMember (x : xs) n = if n == x then True else myMember xs n

isSorted :: (Ord a) => [a] -> Bool
isSorted [] = True
isSorted [x] = True
isSorted (x : y : ys) = if x >= y then False else isSorted (y : ys)
