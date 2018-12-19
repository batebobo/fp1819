-- if you are wondering how to cast Num types
-- conv :: (Integral a) => a -> Double
-- conv x = (fromIntegral x) :: Double

--example of other typeclass
getSquareRoot :: (Floating a) => a -> a
getSquareRoot x = sqrt x



-- later we will see something cooler
append :: [a] -> [a] -> [a]
append [] xs = xs
append (x : xs) ys = x : append xs ys

myFlatten :: [[a]] -> [a]
myFlatten [] = []
myFlatten (x : xs) = append x (myFlatten xs)

myTake :: Int -> [a] -> [a]
myTake _ [] = []
myTake 0 _ = []
myTake n (x : xs) = x : myTake (n - 1) xs

mySlice :: [a] -> Int -> Int -> [a]
mySlice xs begin end = take (end - begin + 1) (drop begin xs)

countOccurances :: (Eq a) => [a] -> a -> Int
countOccurances [] _ = 0
countOccurances (x : xs) elem
    | x == elem = 1 + (countOccurances xs elem)
    | otherwise = countOccurances xs elem

remove :: Eq a => [a] -> a -> [a]
remove [] _ = []
remove (x : xs) n = if x == n then remove xs n else x : (remove xs n) 

isDescending :: Int -> Bool
isDescending n
    | n < 10 = True
    | n `mod` 10 > (n `div` 10) `mod` 10 = False
    | otherwise = isDescending (n `div` 10)


divisors :: Int -> [Int]
divisors y = [x | x <- [1 .. y], y `rem` x == 0 ]


prime :: Int -> Bool
prime x = divisors x == [1,x]

myMaxAgain :: Ord a => [a] -> a
myMaxAgain [x] = x
myMaxAgain (x : xs)
    | x > maxElem = x
    |otherwise = maxElem
        where maxElem = myMaxAgain xs

myMaxOtherAgain :: Ord a => [a] -> a
myMaxOtherAgain [x] = x
myMaxOtherAgain (x : xs) = max x (myMaxOtherAgain xs)

endsWith :: Int -> Int -> Bool
endsWith num ending
    | ending < 10 = numLD == ending 
    | numLD /= endingLD = False
    | otherwise = endsWith (num `mod` 10) (ending `mod` 10)
        where numLD = num `rem` 10
              endingLD = ending `rem` 10
