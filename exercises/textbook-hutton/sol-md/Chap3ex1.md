```
-- Type suggestion
['a','b','c'] :: [Char]

-- GHCi proof
ghci> :type ['a','b','c']
['a','b','c'] :: [Char]
```

---

```
-- Type suggestion
('a','b','c') :: (Char, Char, Char)

-- GHCi proof
ghci> :type ('a','b','c')
('a','b','c') :: (Char, Char, Char)
```

---

```
-- Type suggestion
[(False,'O'),(True,'1')] :: [ (Bool,Char) ]

-- GHCi proof
ghci> :type [(False,'O'),(True,'1')]
[(False,'O'),(True,'1')] :: [(Bool, Char)]
```

---

```
-- Type suggestion
([False,True],['0','1']) :: ( [Bool], [Char] )

-- GHCi proof
ghci> :type ([False,True],['0','1'])
([False,True],['0','1']) :: ([Bool], [Char])
```

---

```
-- Type suggestion
[tail, init, reverse] :: [ [a] -> [a] ]

-- GHCi proof
ghci> :type [tail, init, reverse]
[tail, init, reverse] :: [[a] -> [a]]
```
