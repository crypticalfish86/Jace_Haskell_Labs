import System.Win32 (xBUTTON1)
--Exercise 0
myProduct :: Num a => [a] -> a
myProduct [] = 1
myProduct (x:xs) = x * myProduct xs
--- >>> product [1, 2, 3, 4, 5]
-- 120



--Exercise 1
myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) = if x == False then False else myAnd xs
--- >>> myAnd [True, True, True]
-- True
--- >>> myAnd [True, True, False]
-- False



myOr :: [Bool] -> Bool
myOr []     = False
myOr (x:xs) = if x == True then True else myOr xs
--- >>> myOr [False, False, True]
-- True
--- >>> myOr [False, False, False]
-- False



myNor :: [Bool] -> Bool
myNor []     = False
myNor (x:xs) = if x == True then myNorHelper xs else myNor xs

myNorHelper :: [Bool] -> Bool
myNorHelper [] = True
myNorHelper (x:xs) = if x == True then False else myNorHelper xs
--- >>>myNor [False, True, True]
-- False
--- >>> myNor [False, True, False]
-- True
--- >>> myNor [False, False, False]
-- False



--concat
myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (xs:xss) = xs ++ concat xss
--- >>> concat [[1,2,3],[4,5,6,7,8], [9,10]]
-- [1,2,3,4,5,6,7,8,9,10]



--produces a list with n identical elements
myReplicate :: Int -> a -> [a]
myReplicate 0 _ = []
myReplicate n x = x : myReplicate (n - 1) x
--- >>> myReplicate 4 2
-- [2,2,2,2]

-- !!
myIndexingOperator :: [a] -> Int -> a
myIndexingOperator (x:xs) 0 = x
myIndexingOperator (x:xs) n = myIndexingOperator xs (n - 1)
--- >>> myIndexingOperator [1,2,3] 2
-- 3
--- >>> myIndexingOperator [1,2,3] 1
-- 2
--- >>> myIndexingOperator [1,2,3] 0
-- 1

myElem :: Eq a => a -> [a] -> Bool
myElem n []     = False
myElem n (x:xs) = if x == n then True else myElem n xs 
--- >>> myElem 2 [1, 1, 2, 1]
-- True
--- >>> myElem 2 [1, 1, 1, 1]
-- False


--Exercise 2

myInsert :: Int -> [Int] -> [Int]
myInsert n []     = [n]
myInsert n (x:xs) = if n <= x then n : x: xs else x : myInsert n xs
--- >>> myInsert 3 [1,2,4]
-- [1,2,3,4]

myInsertionSort :: [Int] -> [Int]
myInsertionSort []     = []
myInsertionSort (x:xs) = myInsert x (myInsertionSort xs)
--- >>> myInsertionSort [3,2,1,9,12,10]
-- [1,2,3,9,10,12]



merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x <= y    = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys
--- >>> merge [1,8,9,10][1,2,3,4,5]
-- [1,1,2,3,4,5,8,9,10]


--Exercise 3
--split
split :: [a] -> ([a], [a])
split xs = splitAt (length xs `div` 2) xs
--- >>> split [1,2,3]
-- ([1],[2,3])

--msort
mergeSort :: Ord a => [a] -> [a]
mergeSort xs =
  if null xs || length xs == 1 then xs
  else merge (mergeSort left) (mergeSort right) 
  where (left, right) = split xs
--- >>> mergeSort [1,10,12,2,3,6]
-- [1,2,3,6,10,12]
