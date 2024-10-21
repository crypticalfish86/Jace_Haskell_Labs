--Task 4.1

data Direction = North | East | South | West
    deriving (Show, Eq)
--- >>> (North == North, North == South)
-- (True,False)

turnAround :: Direction -> Direction
turnAround North = South
turnAround East = West
turnAround South = North
turnAround West = East
--- >>> turnAround North
-- South


turnLeft :: Direction -> Direction
turnLeft North = West
turnLeft West = South
turnLeft South = East
turnLeft East = North
--- >>> turnLeft North
-- West


turnRight :: Direction -> Direction
turnRight North = East
turnRight East = South
turnRight South = West
turnRight West = North
--- >>> turnRight North
-- East





--Task 4.2

data Btree a = Leaf a
    | Unary (Btree a) a
    | Binary (Btree a) a (Btree a)
    deriving Show

depth :: Btree a -> Int
depth (Leaf _) = 0 --if depth reaches a leaf then you've reached the end and just add 0
depth (Unary nextNode _) = 1 + depth nextNode -- if you reach a unary node add 1 to the depth value and the depth of the subtree
depth (Binary leftNode _ rightNode) = 1 + max (depth leftNode) (depth rightNode) --if you reach a binary node add 1 to the depth value and the depth of the deepest subtree
--- >>> depth (Unary (Unary (Unary (Binary (Leaf 0) 1 (Leaf 2)) 3) 4) 5)
-- 4

--- >>> depth (Binary (Binary (Leaf 0) 1 (Leaf 2)) 3 (Binary (Leaf 4) 5 (Leaf 6)))
-- 2

--this function just converts a tree into a list
btreeToList :: Btree a -> [a]
btreeToList (Leaf x) = [x]
btreeToList (Unary l x) = btreeToList l ++ [x]
btreeToList (Binary l x r) = btreeToList l ++
    x : btreeToList r


mapBtree :: (a -> b) -> Btree a -> Btree b
mapBtree f (Leaf x) = Leaf (f x) -- if subtree is a leaf just apply the function to the value at the node
mapBtree f (Unary nextNode x) = Unary (mapBtree f nextNode) (f x) --if subtree is a unary tree then apply the function to the value at this node and recursively call mapBtree on the child node
mapBtree f (Binary leftNode x rightNode) = Binary (mapBtree f leftNode) (f x) (mapBtree f rightNode) --if subtree is a binary tree then apply the function to the value at this node and recursively call mapBtree on both children
--- >>> map (+2) (btreeToList (Unary (Unary (Unary (Binary (Leaf 0) 1 (Leaf 2)) 3) 4) 5)) == btreeToList (mapBtree (+2) (Unary (Unary (Unary (Binary (Leaf 0) 1 (Leaf 2)) 3) 4) 5))
-- True
