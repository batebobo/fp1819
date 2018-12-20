myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x : xs) = f x : myMap f xs

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter p (x : xs)
    | p x = x : myFilter p  xs
    | otherwise = myFilter p xs


myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr _ nullv [] = nullv
myFoldr f nullv (x : xs) = f x (myFoldr f nullv xs)


myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith _ _ [] = []
myZipWith _ [] _ = []
myZipWith f (x : xs) (y : ys) = f x y : myZipWith f xs ys


moreLists :: [a] -> [a] -> [[a]]
moreLists = myZipWith (\x y -> x:y:[])

myTakeWhile :: (a -> Bool) -> [a] -> [a]
myTakeWhile _ [] = []
myTakeWhile f (x : xs)
    | f x = x : myTakeWhile f xs
    | otherwise = []

myDropWhile :: (a -> Bool) -> [a] -> [a]
myDropWhile _ [] = []
myDropWhile p all@(x : xs)
    | p x = myDropWhile p xs
    | otherwise = all

strangeFunc1 :: (Num a) => [a] -> a
strangeFunc1 xs = myFoldr (+) 0 $ myMap ((^2).(*2)) xs
