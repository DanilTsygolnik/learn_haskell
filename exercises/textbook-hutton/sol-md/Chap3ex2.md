```
-- Task
bools :: [Bool]

-- Definition suggestion
[True, False]

-- GHCi proof
ghci> :type [True, False]
[True, False] :: [Bool]
```

---

```
-- Task
nums :: [[Int]]

-- Definition suggestion
[ [(1::Int)], [(2::Int)] ]

-- GHCi proof
ghci> :type [ [(1::Int)], [(2::Int)] ]
[ [(1::Int)], [(2::Int)] ] :: [[Int]]
```

---

```
-- Task
add :: Int -> Int -> Int -> Int

-- Definition suggestion
add a b c = a + b + c :: Int

-- GHCi proof
ghci> :show bindings 
add :: Int -> Int -> Int -> Int = _
ghci> :type add 1 2 3
add 1 2 3 :: Int
```

---

```
-- Task
copy :: a -> (a,a) 

-- Definition suggestion
copy a = (a, a)

-- GHCi proof
ghci> :type copy
copy :: b -> (b, b)
```

---

```
-- Task
apply :: (a -> b) -> a -> b

-- Definition suggestion
apply (show) x = show x

-- GHCi proof
ghci> :type apply
apply :: (t1 -> t2) -> t1 -> t2
```
