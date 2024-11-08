--Exercise 0
factors :: Int -> [Int]
factors n = [x | x <- [1..n - 1], n `mod` x == 0]
--- >>> factors 8
-- [1,2,4]


prime :: Int -> Bool
prime n = factors n == [1]
--- >>> prime 4
-- False
--- >>> prime 3
-- True
--- >>> prime 2
-- True


allPrimesUpTo :: Int -> [Int]
allPrimesUpTo n = [x | x <- [2..n], prime x]
--- >>> allPrimesUpTo 100
-- [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]

 
positionsOfElementInList :: Eq a => a -> [a] -> [Int]
positionsOfElementInList x xs = [i | (n, i) <- zip xs [0..], x == n]

--- >>> positionsOfElementInList 1 [1,0,0,0,1,0,0,1,0,2]
-- [0,4,7]


--Exercise 1

-- a triple (x, y, z) of positive integers is called pythagorean if x^2 + y^2 = z^2
pyths :: Int -> [(Int, Int, Int)]
pyths z = [(x, y, z) | x <- [1..z], y <- [1..z], (x^2 + y^2) == z^2]
--- >>> pyths 5
-- [(3,4,5),(4,3,5)]
--- >>> pyths 10
-- [(6,8,10),(8,6,10)]


--Exercise 2

--a positive integer is 'perfect' if it equals the sum of all of its factors, excluding the number itself
perfect :: Int -> Bool
perfect n = sum (factors n) == n
--- >>>perfect 6
-- True
--- >>> perfect 5
-- False
--- >>> perfect 28
-- True

--returns a list of perfects numbers up to an int
perfectNumbersUpTo :: Int -> [Int]
perfectNumbersUpTo n = [x | x <- [1..n], perfect x]
--- >>> perfectNumbersUpTo 500
-- [6,28,496]

scalarProduct :: [Int] -> [Int] -> Int
scalarProduct xs ys = sum [x * y | (x, y) <- zip xs ys]
--- >>> scalarProduct [1,2,3] [1,2,3]
-- 14
