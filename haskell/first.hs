-- define variable
a :: Int
a = 10

-- define function
sum2 :: Int -> Int -> Int
sum2 a b = a + b

--prefix use of function
--sum2 4 5

-- infix use of prefix function
--4 `sum2` 5


fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib a = fib (a - 1) + fib (a - 2)

fact :: Int -> Int
fact 1 = 1
fact n = n * fact (n - 1)

fact1 :: Int -> Int
fact1 n = foldl (*) 1 [1 .. n] -- (*) is like the lambda: (\x y -> x * y)


--define list
b :: [Int]
b = [1, 2, 3, 4]

c = [1, 2 .. 5] -- [1, 2, 3, 4, 5]

xs = 1 : 2 : 3 : 4 : [] -- [1, 2, 3, 4]  operator ":" is the same as cons in scheme

length1 :: [Int] -> Int
length1 [] = 0 -- length of empty list is 0
length1 (_:xs) = 1 + length1 xs -- _ is used when we don't use the variable in the body of the function

-- not the fastest solution but just wait
maxElement :: [Int] -> Int
maxElement [x] = x
maxElement (x:xs) = if x > maxElement xs then x
                                          else maxElement xs


myReverse :: [Int] -> [Int]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

member :: [Int] -> Int -> Bool
member [] _ = False
member (x : xs) n = if x == n then True
                            else member xs n
