myPair :: [a] -> [b] -> [(a, b)]
myPair xs ys = [(x, y) | x <- xs, y <- ys] --returns every possible combination from each list as a tuple {(x,y) | x e xs, y e ys}
--- >>> myPair [1,2,3,4,5] [1,2,3,4,5]
-- [(1,1),(1,2),(1,3),(1,4),(1,5),(2,1),(2,2),(2,3),(2,4),(2,5),(3,1),(3,2),(3,3),(3,4),(3,5),(4,1),(4,2),(4,3),(4,4),(4,5),(5,1),(5,2),(5,3),(5,4),(5,5)]
