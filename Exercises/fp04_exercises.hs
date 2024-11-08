n = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]
--- >>> n
-- 2


myLast :: [a] -> a
myLast [x] = x
myLast (_:xs) = myLast xs
--- >>> myLast [1,2,3,4,5]
-- 5
