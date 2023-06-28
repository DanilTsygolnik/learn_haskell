## Thorough examination of the book content

"Programming in Haskell" by Graham Hutton (2nd ed., 2016) [^book-website] ([pdf](https://mega.nz/file/b10XkKKD#XLhYfT7GBsJsCgL3Nw0zCKkGzBAAvN2XbiSoIriIK-Y))

---

Jump to notes for Chapter [1](#ch1) | [2](#ch2) | [3](#ch3) | ...


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

Материал главы 1 не предполагает формата решений, в котором сданы упражнения 3-5 ниже (см. "solutions" и "unit tests"). Я разом прочитал главы 1-5.2, а также в течение недели (TODO: ссылка на отчёт 2023wk25.md) разбирал по дополнительным материалам следующие темы:
- модули и структура проекта на Haskell;
- настройка проекта с помощью `stack new`;
- написание шаблонов для сборки, формат Hpack и файл `package.yaml` с перечислением свойств проекта;
- написание модульных тестов на Haskell.

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

<a name="ch2"></a>
#### Chapter 2

-- Chapter 2 reflexion notes --

##### Exercises

Exercise 1 &mdash; [code](./sol-hs/Chap2ex1.hs) | [explanation](./sol-md/Chap2ex1.md)

<details>
<summary>See the task</summary>

 Work through the examples from this chapter using GHCi.

</details>

[Go back to top](#top)

Exercise 2 &mdash; [explanation](./sol-md/Chap2ex2.md)

TODO: add a comprehensive table of operators priority.

<details>
<summary>See the task</summary>

```
2^3*4
2*3+4*5
2+3*4^5
```

</details>

[Go back to top](#top)

Exercise 3 &mdash; [code](./sol-hs/Chap2ex3.hs) | [explanation](./sol-md/Chap2ex3.md)

<details>
<summary>See the task</summary>

The script below contains three syntactic errors. Correct these errors and then check that your script works properly using GHCi.
```
N = a 'div' length xs
    where
         a = 10
        xs = [1,2,3,4,5]
```

</details>

[Go back to top](#top)

Exercise 4 &mdash; [code](./sol-hs/Chap2ex4.hs) | [unit tests](./test/Chap2ex4test.hs)

<details>
<summary>See the task</summary>

The library function `last` selects the last element of a non-empty list; for example, `last [1,2,3,4,5] = 5`. Show how the function `last` could be defined in terms of the other library functions introduced in this chapter. Can you think of another possible definition?

</details>

[Go back to top](#top)

Exercise 5 &mdash; [code](./sol-hs/Chap2ex5.hs) | [unit tests](./test/Chap2ex5test.hs)

<details>
<summary>See the task</summary>

5. The library function init removes the last element from a non-empty list; for example, `init [1,2,3,4,5] = [1,2,3,4]`. Show how `init` could similarly be defined in two different ways.

</details>

[Go back to top](#top)

<a name="ch3"></a>
#### Chapter 3

-- Chapter 3 reflexion notes --

##### Exercises

Exercise 1 &mdash; [explanation](./sol-md/Chap3ex1.md)

<details>
<summary>See the task</summary>

What are the types of the following values?
```
['a','b','c']

('a','b','c')

[(False,'O'),(True,'1')]

([False,True],['0','1'])

[tail, init, reverse]
```

</details>

[Go back to top](#top)

Exercise 2 &mdash; [explanation](./sol-md/Chap3ex2.md)

<details>
<summary>See the task</summary>

Write down definitions that have the following types; it does not matter what the definitions actually do as long as they are type correct.
```
bools :: [Bool]

nums :: [[Int]]

add :: Int -> Int -> Int -> Int

copy :: a -> (a,a) 

apply :: (a -> b) -> a -> b
```

</details>

[Go back to top](#top)

Exercise 3 &mdash; [explanation](./sol-md/Chap3ex3.md)

<details>
<summary>See the task</summary>

What are the types of the following functions?
```
second xs = head (tail xs)

swap (x,y) = (y,x)

pair x y = (x,y)
 
double x = x*2
 
palindrome xs = reverse xs == xs

twice f x = f (f x)
```
Hint: take care to include the necessary class constraints in the types if the functions are defined using overloaded operators.

</details>

[Go back to top](#top)

Exercise 4: "Check your answers to the preceding three questions using GHCi" &mdash; done alongside with the exercises 1-3.

[Go back to top](#top)

<!-- Chapter template
<a name="chY"></a>
#### Chapter Y

-- Chapter Y reflexion notes --

##### Exercises

Exercise Z &mdash; [code](./sol-hs/ChapYexZ.hs) | [unit tests](./test/ChapYexZtest.hs) | [explanation](./sol-md/ChapYexZ.md)

<details>
<summary>See the task</summary>

-- Task text --

</details>

[Go back to top](#top)
-->


[^book-website]: https://www.cambridge.org/highereducation/books/programming-in-haskell/8FED82E807EF12D390DE0D16FDE217E4
