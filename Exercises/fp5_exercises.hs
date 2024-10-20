--exercise 2
second xs = head (tail xs) --suspected type: [a] -> a
--- >>> :type second
-- second :: [a] -> a

swap (x,y) = (y,x) --suspected type: (a,b) -> (b,a)
--- >>> :type swap
-- swap :: (b, a) -> (a, b)

pair x y = (x, y) -- suspected type: a -> (b -> (a,b))
--- >>> :type pair
-- pair :: a -> b -> (a, b)

double x = x * 2 -- suspected type: Int -> Int
--- >>> :type double
-- double :: Num a => a -> a

palindrome xs = reverse xs == xs --suspected type: [a] -> Bool
--- >>> :type palindrome
-- palindrome :: Eq a => [a] -> Bool

twice f x = f (f x) -- suspected type: ???
--- >>> :type twice
-- twice :: (t -> t) -> t -> t

