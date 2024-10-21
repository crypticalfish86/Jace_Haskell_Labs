--exercise 1
safetail1 :: [a] -> [a]
safetail1 xs = 
    if null xs then []
    else tail xs
--- >>> safetail1 []
-- []
--- >>> safetail1 [1, 2, 3, 4, 5]
-- [2,3,4,5]

safetail2 :: [a] -> [a]
safetail2 xs
    | null xs  = []
    |otherwise = tail xs
--- >>> safetail2 []
-- []
--- >>> safetail2 [1, 2, 3, 4, 5]
-- [2,3,4,5]

safetail3 :: [a] -> [a]
safetail3 []       = []
safetail3 (x : xs) = xs
--- >>> safetail3 []
-- []
--- >>> safetail3 [1,2,3,4,5,6]
-- [2,3,4,5,6]



--exercise 2
myOrFunction :: Bool -> Bool -> Bool
myOrFunction True _ = True
myOrFunction _ True = True
myOrFunction False False = False
--- >>> myOrFunction True True
-- True
--- >>> myOrFunction False True
-- True
--- >>> myOrFunction False False
-- False



--exercise 3

myAndFunction :: Bool -> Bool -> Bool
myAndFunction x y= 
    if x && y then True
    else False
--- >>> myAndFunction True True
-- True
--- >>> myAndFunction True False
-- False