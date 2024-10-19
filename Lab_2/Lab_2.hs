import Data.List
--TASK 2.1
--a
--(char, char, char), [char], [(char, Bool)]

--b
--third: a -> a, Swap: (a, b) -> (b, a)

--TASK 2.2

--a
majority :: Bool -> Bool -> Bool -> Bool --type declaration
majority True True True = True
majority True True False = True
majority True False True = True
majority False  True True = True
majority _ _ _ = False

--b
removeFstZero :: String -> String --type declaration
removeFstZero s =
    if head s == '0' then tail s
    else s

--TASK 2.3

--a

orderPair :: Ord a => (a, a) -> (a, a) --type declaration
orderPair (x, y) =
    if x <= y then (x, y)
    else (y, x)

distinct :: Int -> Int -> Int -> Bool --type declaration
distinct x y z = not (x == y || x == z || y == z)

--challenge task

median :: Ord a => a -> a -> a -> a
median x y z = sort [x, y, z] !! 1