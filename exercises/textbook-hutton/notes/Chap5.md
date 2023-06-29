## List comprehension

Comprehension notation
`[ x | x <- [1..5] ]`
`|` &mdash; "such that"
`<-` &mdash; "drawn from"

```
-- understand the difference
> [(x,y) | x <- [1,2,3], y <- [4,5]]
[(1,4),(1,5),(2,4),(2,5),(3,4),(3,5)]

> [(x,y) | y <- [4,5], x <- [1,2,3]]
[(1,4),(2,4),(3,4),(1,5),(2,5),(3,5)]
```

Later generators can also depend upon the values of variables from earlier
generators. For example, the list of all possible ordered pairings of elements from the list [1..3] can be produced as follows:
```
-- Check: y <- [x..3]
> [(x,y) | x <- [1..3], y <- [x..3]]
[(1,1),(1,2),(1,3),(2,2),(2,3),(3,3)]
```

Examples p47-48

Timing: 10m 

## Guards

```
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n ‘mod‘ x == 0]
--                draw x  if   guard_expr is True
```

p 48-49 examples: isPrime func using lists compr with guards + def:prime nums

Timing 5m

## zip func

The library function zip produces a new list by pairing successive elements from two existing lists until either or both lists are exhausted. For example:
```
> zip [’a’,’b’] [1,2,3,4]
[(’a’,1),(’b’,2)]
```

```
-- Attention: inf list repr [0..]
positions :: Eq a => a -> [a] -> [Int]
positions x xs = [i | (x’,i) <- zip xs [0..], x == x’]

> positions False [True, False, True, False]
[1,3]
```
Exploiting lazy evaluation in this manner avoids the need to explicitly produce a list of indices of the same length as the input list.

---

Chapter 5.4

`"abc" :: String` is an abbreviation for `[’a’,’b’,’c’] :: [Char]` &mdash; strings are lists under the hood in Haskell.


p50-51
Timings: 9m

---

Chapter 5.5 -- skimmed through the chapter

```
-- Hutton пишет, что fromIntegral :: Int -> Float

-- ok but
ghci> :type fromIntegral (2::Int)
fromIntegral (2::Int) :: Num b => b

ghci> :type (fromIntegral (2::Int) / fromIntegral (2::Int))
(fromIntegral (2::Int) / fromIntegral (2::Int))
  :: Fractional a => a

ghci> :type 2::Float
2::Float :: Float
```

Timing: 7m

---

Chapter 5.6

_Comprehension_ term origin



p47-56 -- 10p total -- 31m
