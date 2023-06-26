The `qsortUniq` function removes duplicates while sorting, resulting in a sorted list with only unique values.

This behavior is achieved due to the recursive nature of `qsortUniq`. It either returns an empty list or concatenates the sorted results of `qsortUniq smaller`, the current element `x`, and `qsortUniq bigger`. The lists `smaller` and `bigger` are obtained by comparing the remaining elements against `x`. Any values that match `x` are dropped during the comparison because the `<` and `>` signs are used (see the [implementation](./sol-hs/Chap1ex5.hs)).

For example:
```haskell
ghci> qsortUniq ([1,1,1,3,3,2,2,2,4,5,6,4,5,6,2,3,1] :: [Int])
[1,2,3,4,5,6]
```
