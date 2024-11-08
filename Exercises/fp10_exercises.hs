--Exercise 0



myFilterAndFunction :: (a -> a) -> (a -> Bool) -> [a] -> [a]
myFilterAndFunction f p [] = []
myFilterAndFunction f p (x:xs)
    | p x       = f x : myFilterAndFunction f p xs
    | otherwise = myFilterAndFunction f p xs
--- >>> myFilterAndFunction (+1) (\ x -> x >= 0) [-1,2,3]
-- [3,4]



---Exercise 2

--express [f x | x <- xs, px] using map and filter
myListComprehension :: (a -> b) -> (a -> Bool) -> [a] -> [b]
myListComprehension f p xs = map f (filter p xs)
--- >>> myListComprehension (+1) (\ x -> x >= 0) [-1,2,3]
-- [3,4]
