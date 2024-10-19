pow :: Double -> Int -> Double --returns x^y
pow x y = 
    if y > 0 
        then x * pow x (y - 1) 
    else 1

--- >>> pow 8 2
-- 64.0
---

deleteAll :: Eq a => a -> [a] -> [a] --returns a list with all of x removed
deleteAll _ [] = []
deleteAll x (y:ys)
  | x == y    = deleteAll x ys --if x == y then continue the function on without appending y
  | otherwise = y : deleteAll x ys --if x did not == y then append y to the output list

--- >>>  deleteAll 5 [1,2,3,5,2,5,5,5,5,6,5,5,5,2]
-- [1,2,3,2,6,2]
---

split :: [a] -> ([a], [a])
split xs = splitAt (length xs `div` 2) xs --splits the list xs at the element number that is half the length of the list (so )

--- >>> split [1,2,5,8,5,8,5]
-- ([1,2,5],[8,5,8,5])
---

merge :: Ord a => [a] -> [a] -> [a]
merge [] ws = ws --merging an empty list with a non-empty list gives the non-empty list
merge zs [] = zs --merging a non-empty list with an empty list just gives the non-empty list
merge (x:xs) (y:ys)
  | x <= y    = x : merge xs (y:ys) --if the head of the second list is greater or equal to the head of the first list then append the second list to the first list
  | otherwise = y : merge (x:xs) ys --otherwise the first list is larger so append the first list to the second list

--- >>> merge [8,8,9,10][1,2,3,4]
-- [1,2,3,4,8,8,9,10]
---


mergeSort :: Ord a => [a] -> [a]
mergeSort xs =
  if null xs || length xs == 1 then xs --if the list is empty or the length of the list is 1 just return the list
  else merge (mergeSort left) (mergeSort right) --otherwise merge the left and right parts of the list where left and right are the two halves of the main list split at its half length
  where (left, right) = split xs

--- >>> mergeSort [5,4,7,4,6,8,1,7]
-- [1,4,4,5,6,7,7,8]



allPairs :: [a] -> [b] -> [(a, b)]
allPairs xs ys = [(x, y) | x <- xs, y <- ys] --return a tuple of singular elements from the list where x is an element of xs and y is an element of ys

--- >>> allPairs [1,2,3] ['a', 'b']
-- [(1,'a'),(1,'b'),(2,'a'),(2,'b'),(3,'a'),(3,'b')]
---


iterations :: Int -> (a -> a) -> a -> [a]
iterations 0 _ x = [x]
iterations n f x = x : iterations (n - 1) f (f x)

--- >>> iterations 5 (+2) 0
-- [0,2,4,6,8,10]
---

