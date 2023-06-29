In this chapter we introduce higher-order functions, which allow common programming patterns to be encapsulated as functions.

Formally speaking, a function that takes a function as an argument or returns a function as a result is called a _higher-order function_.

In practice, because the term curried already exists for returning functions as results, the term higher-order is often just used for taking functions as arguments.

<i color="grey">

Using higher-order functions considerably increases the power of Haskell, by allowing common programming patterns to be encapsulated as functions within the language itself. More generally, higher-order functions can be used to de- fine domain-specific languages within Haskell. For example, in this chapter we present a simple language for processing lists, and in part II of the book we will develop languages for a range of other domains, including interactive program- ming, effectful programming, and building parsers. 

</i>

Two `map` func implementations
```
-- list comprehension
map :: (a -> b) -> [a] -> [b]
map f xs = [f x | x <- xs]

-- recursive
map :: (a -> b) -> [a] -> [b]
map f []
= []
map f (x:xs) = f x : map f xs
```

`map` remarks:
- applyies to lists of any type -- polymorphic (as other HO funcs)
- it can be applied to itself to process nested lists
```
    map (map (+1)) [[1,2,3],[4,5]]
=    { applying the outer map }
    [map (+1) [1,2,3], map (+1) [4,5]]
=    { applying the inner maps }
    [[2,3,4],[5,6]]
```

`filter` func:
```
filter :: (a -> Bool) -> [a] -> [a]
filter p xs = [x | x <- xs, p x]
--                draw x if (p x) is True
-- 'p' stands for 'predicate' or 'property'
```

Other useful funcions to consider: `all`, `any`, `takeWhile`, `dropWhile`
