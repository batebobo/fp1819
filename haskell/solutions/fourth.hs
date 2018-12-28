{-# LANGUAGE ParallelListComp #-}

myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x : xs) = f x : myMap f xs

myMap' :: (a -> b) -> [a] -> [b]
myMap' f = foldl (\acc x -> (f x) : acc) []

myMap'' :: (a -> b) -> [a] -> [b]
myMap'' f xs = [(f x) | x <- xs]

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter p (x : xs)
    | p x = x : myFilter p  xs
    | otherwise = myFilter p xs

myFilter' :: (a -> Bool) -> [a] -> [a]
myFilter' p = foldl (\acc x -> if (p x) then x : acc else acc) []

myFilter'' :: (a -> Bool) -> [a] -> [a]
myFilter'' p xs = [x | x <- xs, p x]


myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr _ nullv [] = nullv
myFoldr f nullv (x : xs) = f x (myFoldr f nullv xs)


myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith _ _ [] = []
myZipWith _ [] _ = []
myZipWith f (x : xs) (y : ys) = f x y : myZipWith f xs ys

-- това не се поддръжа директно в езика. трябва ни
-- {-# LANGUAGE ParallelListComp #-}
-- най-горе във файлa
myZipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith' f xs ys = [(f x y) | x <- xs | y <- ys]

moreLists :: [a] -> [a] -> [[a]]
moreLists = myZipWith (\x y -> [x,y]) -- алтернатива - (\x y -> x:y:[])

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
