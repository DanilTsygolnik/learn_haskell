### 1.3

```
$ cd /dir/with/hs-scripts
$ echo 'inc = (+) (1::Int)' MyScript.hs
-- method 1
$ ghci MyScript.hs

-- method 2
$ ghci
ghci> :l MyScript.hs
-- or simply
ghci> :l MyScript
[1 of 1] Compiling Main             ( MyScript.hs, interpreted )
Ok, one module loaded.

ghci> inc 5
6
```

### 2

Functions: arithmetic operators `(+)`, `(-)`, `(*)`, `(/)`; `succ`, `min`, `max`. Infix & postfix notation. Operator association (parentheses).

Function definition. The order of definitions in `.hs` files doesn't matter. Valid function names (characters set). Function names strictly begin with lowercase latters.

Names definition in `ghci` -- `let a = "value"` (eq. `a = "value"` in `.hs` files).

`if...then...else`_expression_ example (because in returns some value once evaluated). `else` part is mandatory in Haskell.

TODO: ?? difference: _function definition_ aka _function name_ vs. `myFunc arg1 arg2` (is the later an expression?).

Lists as a homogenous data structure (single type, infinite values). `[1,2,3]` is a syntactic sugar for `1:2:3:[]`; `[1..5]` - ranges, `[0,3..19] == [0,3,6,9,12,15,18]`, `[10,7..0] == [10,7,4,1]`. `(:)` - cons operator;  `(++)` operator.  `(!!)` &mdash; reference value by index. Useful standard function on lists &mdash; p 15-17,18,18.

List comprehension 
```
ghci> [x*2 | x <- [1..10]]
[2,4,6,8,10,12,14,16,18,20]

-- several predicates
ghci > [ x | x <- [10..20] , x /= 13, x /= 15, x /= 19]
[10,11,12,14,16,17,18,20]

-- strings are lists reminder
removeNonUppercase
st = [ c | c <- st , c ‘elem ‘ [’A’..’Z ’]]

-- nested lists comprehension

dropOdds xs = [ [ x | x <- xs , even x ] | xs <- xxs]

{-
xxs = [ [1,3,5,2,3,1,2,4,5]
      , [1,2,3,4,5,6,7,8,9]
      , [1,2,4,2,1,6,3,1,3,2,3,6]
      ]
-}

ghci> dropOdds xxs
[[2 ,2 ,4] ,[2 ,4 ,6 ,8] ,[2 ,4 ,2 ,6 ,2 ,6]]
```

Tuples comprehension -- similar to lists. Useful functions for _pairs_: `fst`, `snd`; make pairs from 2 lists with `zip`.

Timing:68m

```
rightTrianglePerimeter24 = [ (a,b,c) | a <- [1..10]
                                     , b <- [1..10]
                                     , c <- [1..10]
                                     , (a+b+c) == 24
                                     , a^2 + b^2 == c^2 ]
```
> A common pattern in functional programming: you take a starting set of solutions and then you apply transformations to those solutions and filter them until you get the right ones.

Timing:40m

### 5

Reason for `(Num a, Ord a)` are not the same type class -- p47 expl

Mixing guard & patterns in function definition example -- p47


### 6

Haskell functions can take functions as parameters and return functions as return values. A function that does either of those is called a higher order function.

p53 -- `(-4)` vs. `(subtract 4)` -- is there a principal difference ??

p53 -- how GHCI evaluates & prints expressions & 'no instance' error for undefined functions

> each function actually taking only one parameter and returning partially applied functions until we reach a function that returns a solid value.

p54 -- `zipWith`; HO funcs type realizing (exmp)
p55 -- `flip`

p 56-57 -- `map` & `filter` as a convenient replacement for list comprehension

Tip: `filter` doesn't work on infinite lists. `takeWhile` does (p64)

The power of FP:
> You make a function that takes a value and produces some result. We map
that function over a list of values and then we filter the resulting list out for the results that satisfy our search. Thanks to Haskell’s laziness, even if you map something over a list several times and filter it several times, it will only pass over the list once.
```
-- example
largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000 ,99999..])
    where p x = x ‘mod ‘ 3892 == 0
```

p60 -- lambda-functions with several arguments:
```
ghci > zipWith (\a b -> (a * 30 + 3) / b) [5,4,3,2,1] [1,2,3,4,5]
[153.0 ,61.5 ,31.0 ,15.75 ,6.6]
```

`sum' = foldl (+) 0` -- Generally, if you have a function like `foo a = bar b a`, you can rewrite it as `foo = bar b`, because of currying.

std funcs implementations with folsd examples: `sum'`; elem'`; \* `map'`

`map'` implementation remark:
> the `++` function is much more expensive than `:`, so we usually use right folds when we're building up new lists from a list. Also, right folds work on infinite lists, whereas left ones don't!

Folds can be used to implement any function where you traverse a list once, element by element, and then return something based on that. Whenever you want to traverse a list to return something, chances are you want a fold.

`foldl1`, `foldr1` -- p63
`scanl`, `scanr` -- p64 (output every intermediate value as well)

Tip:
> When making a fold, think about how it acts on an empty list. If the function doesn’t make sense when given an empty list, you can probably use a foldl1 or foldr1 to implement it.

"function application" function -- `$` (p65). Because $ is right-associative, `f (g (z x))` is equal to `f $ g $ z x`.

```
-- $ useful application example
ghci > map ($ 3) [(4+) , (10*) , (^2) , sqrt]
[7.0 ,30.0 ,9.0 ,1.7320508075688772]
```

p66 -- function composition & pointless code style. Avoid long composition chains to keep code readable. p66-67 examples.
