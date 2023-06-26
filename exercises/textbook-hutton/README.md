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

[Go back to top](#top)

[^book-website]: https://www.cambridge.org/highereducation/books/programming-in-haskell/8FED82E807EF12D390DE0D16FDE217E4
