## Thorough examination of the book content

"Programming in Haskell" by Graham Hutton (2nd ed., 2016) [^book-website] ([pdf](https://mega.nz/file/b10XkKKD#XLhYfT7GBsJsCgL3Nw0zCKkGzBAAvN2XbiSoIriIK-Y))

---

Jump to notes for Chapter [1](#ch1) | [2](#ch2) | ...


### Core project directories

```
textbook/
├...
├── notes      --  Remarks, useful references, reflexion.
├── sol-md     --  Exercise solutions without coding.
├── sol-hs     --  Implementations of programming tasks.
└── test       --  Unit tests for programming task solutions.
```

### Working through the chapters

<a name="ch1"></a>
#### Chapter 1

-- Chapter 1 reflexion notes --

##### Exercises

Exercise 1 &mdash; [solution](./sol-md/Chap1ex1.md)

<details>
<summary>See the task</summary>

There are two possible calculations for the nested application of the `double (double 2)` function on pages 3-4.

Give another possible calculation for the result of `double (double 2)`.

</details>

Exercise 2 &mdash; [solution](./sol-md/Chap1ex2.md)

<details>
<summary>See the task</summary>

Here the `sum` function implementation:
```
sum :: Num x => [x] -> x
sum [] = 0
sum (x:xs) = x + sum xs
```

Show that `sum [x] = x` for any number x.

</details>

Exercise 3 &mdash; [solution](./sol-hs/Chap1ex3.hs) | [unit tests](./test/Chap1ex3test.hs) | [explanation](./sol-md/Chap1ex3.md) 

<details>
<summary>See the task</summary>

Define a function product that produces the product of a list of numbers, and show using your definition that `product [2,3,4] = 24`.

</details>

Exercise 4 &mdash; [solution](./sol-hs/Chap1ex4.hs) | [unit tests](./test/Chap1ex4test.hs)

<details>
<summary>See the task</summary>
Suppose that we define a function called `qsort` by the following two equations:
```
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
               where
                   smaller = [a | a <- xs, a <= x]
                   larger = [b | b <- xs, b > x]
```

How should the definition of the function `qsort` be modified so that it produces a reverse sorted version of a list?

</details>

Exercise 5 &mdash; [solution](./sol-hs/Chap1ex5.hs) | [explanation](./sol-md/Chap1ex5.md)

<details>
<summary>See the task</summary>

What would be the effect of replacing `<=` by `<` in the original definition of `qsort` (see the previous task)? Hint: consider the example `qsort [2,2,3,1,1]`.

</details>

[Go back to top](#top)

[^book-website]: https://www.cambridge.org/highereducation/books/programming-in-haskell/8FED82E807EF12D390DE0D16FDE217E4
