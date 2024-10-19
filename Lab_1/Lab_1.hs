--A (Task 1.3)
addNumbers :: Float -> Float -> Float --type declaration
addNumbers x y = x + y --function declaration

divideNumbers :: Float -> Float -> Float --type declaration
divideNumbers x y = x / y --function declaration

checkEquivalence :: Int -> Int -> Bool --type declaration
checkEquivalence x y = x == y --function declaration

divFunction :: Int -> Int -> Int --type declaration
divFunction x y = x `div` y --function declaration

secondDivFunction :: Int -> Int -> Int --type declaration
secondDivFunction x y = div x y --function declaration



--B (Task 1.2)
    --1
square :: Float -> Float --type declaration
square x = x * x --function declaration

        --square 2350485 -> 5.5247797e12

    --2
average :: Float -> Float -> Float --type declaration
average x y = (x + y) / 2 --function declaration

    --3 (challenge)
variance :: Float -> Float -> Float
variance x y = average (square xd)  (square yd) --calculate variance
    where
        mean = average x y
        xd = x - mean
        yd = y - mean
                
--C(Task 1.3)

--1
second :: [Int] -> Int --type declaration
second x = x !! 1 --get the second element from the list (list !! element number)

--2
repeat3 :: [Int] -> [Int] --type declaration
repeat3 x = x ++ x ++ x --append to the list itself twice

shiftRightByOne :: [Int] -> [Int]
shiftRightByOne x = tail x ++ [head x] --take out first element of list and append it to the end of the list

firstHalf :: [Int] -> [Int] --type declaration
firstHalf x = take (length x `div` 2) x --takes the first half of the list

secondHalf :: [Int] -> [Int] --type declaration
secondHalf x = drop (length x `div` 2) x

