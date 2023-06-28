```
-- Function type suggestion
second :: [a] -> a
second xs = head (tail xs)

-- GHCi proof
ghci> :type second
second :: [a] -> a
```

---

```
-- Function type suggestion
swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)

-- GHCi proof
ghci> :type swap
swap :: (b, a) -> (a, b)
```

---

```
-- Function type suggestion
pair :: a -> b -> (a, b)
pair x y = (x,y)

-- GHCi proof
ghci> :type pair
pair :: a -> b -> (a, b)
```

---

```
-- Function type suggestion
double :: Num a => a -> a
double x = x*2

-- GHCi proof
ghci> :type double
double :: Num a => a -> a
```

---

```
-- Function type suggestion
palindrome :: [a] -> bool        -- mistake!
palindrome xs = reverse xs == xs

-- GHCi proof
ghci> :type palindrome 
palindrome :: Eq a => [a] -> Bool
```

---

```
-- Function type suggestion
twice :: (a -> b) -> a -> b      -- mistake!
twice f x = f (f x)

-- GHCi proof
ghci> :type twice
twice :: (t -> t) -> t -> t
```

---

