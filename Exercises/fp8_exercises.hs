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

--produces a list with n identical elements
myReplicate :: Int -> a -> [a]
myReplicate 0 _ = []
myReplicate n x = x : myReplicate (n - 1) x
--- >>> myReplicate 4 2
-- [2,2,2,2]

-- !!

myElem :: Eq a => a -> [a] -> Bool
myElem n [] = False
myElem n (x:xs) = if x == n then True else myElem n xs 
--- >>> myElem 2 [1, 1, 2, 1]
-- True
--- >>> myElem 2 [1, 1, 1, 1]
-- False


--Exercise 2

merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x <= y    = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys
--- >>> merge [1,8,9,10][1,2,3,4]
-- [1,1,2,3,4,8,9,10]


--Exercise 3
--msort
