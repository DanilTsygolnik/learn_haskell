Chap 6.1

recursion &mdash; the basic mechanism for looping in Haskell.

multiple arguments, multiple recursion, and mutual recursion,
some advice on defining recursive functions.


Factorial _recursive_ definition:
```
fac :: Int -> Int
fac 0 = 1              -- base case
fac n = n * fac (n-1)  -- recursive case
```
For the case of the factorial function, the original definition using library functions is simpler than the definition using recursion. However, many functions have a simple and natural definition using recursion. Moreover, defining functions using recursion also allows properties of those functions to be proved using the simple but powerful technique of induction.

---

Chap 6.2, 6.3

Useful examples: `reverse`, `(*)`, `(++)`, `insert` --> `insertSort`, `zip`

---

Chap 6.4, 6.5

_multiple recursion_ &mdash; recursive definition when the function is called more then once (exmp. `qsort`, `fib`)

_mutual recursion_ &mdash; two or more functions are all defined recursively in terms of each other.

```
even:: Int -> Bool
even 0 = True
even n = odd (n-1)

odd :: Int -> Bool
odd 0 = False
odd n = even (n-1)
```

---

Chapter 6.6 writing recursive funcs pipeline

`init` exmp's strange. Rework using the Prelude def with pattern matching.


p59-71 -- 13p total -- 32m
