Here is the output of the unit tests execution:
```
$ stack ghci ./test/Chap1ex3test.hs
ghci> main

Chapter 1, exercise 3.
  productInner []      --- 1 [✔]
  productInner [2]     --- 2 [✔]
  productInner [2,3]   --- 6 [✔]
       product []      --- 0 [✔]
       product [2,3,4] --- 24 [✔]

Finished in 0.0002 seconds
5 examples, 0 failures
```

Calculation of the `product [2,3,4]`:
```
    product [2,3,4]
=      { applying product }
    productInner [2,3,4]
=      { applying productInner }
    2 * productInner [3,4]
=      { applying productInner }
    2 * ( 3 * productInner [4] )
=      { applying productInner }
    2 * ( 3 * ( 4 * productInner [] ) )
=      { applying productInner }
    2 * ( 3 * ( 4 * 1 ) )
=      { applying * }
    2 * ( 3 * 4 )
=      { applying * }
    2 * 12
=      { applying * }
    24
```
