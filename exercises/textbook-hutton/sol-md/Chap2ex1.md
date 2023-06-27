## Chapters 2.2&ndash;2.3 examples (Standard Prelude)

```
ghci> 2+3*4
14
ghci> (2+3)*4
20
ghci> sqrt (3^2+4^2)
5.0
ghci> length [1,2,3,4,5]
5
ghci> reverse [1..5]
[5,4,3,2,1]
ghci> head [1..5]
1
ghci> tail [1..5]
[2,3,4,5]
ghci> [1,2,3,4,5] !! 2
3
ghci> take 3 [1..5]
[1,2,3]
ghci> drop 3 [1..5]
[4,5]
ghci> [1,2,3] ++ [4,5]
[1,2,3,4,5]
ghci> sum [1..5]
15
ghci> product [1..5]
120
```

## Chapters 2.5 examples (Haskell scripts)

Добавляю скрипт (коммит - Chap2ex1 ghci script: double, quadruple):
```
-- ../sol-hs/Chap2ex1.hs
double x = x + x
quadruple x = double (double x)
```

Редактор с кодом скрипта оставляю открытым. В отдельном окне терминала запускаю `ghci`, подгрузив скрипт:
```
$ stack ghci ./sol-hs/Chap2ex1.hs
[1 of 2] Compiling Main             ( /home/dt/work/projects_git/learn_haskell/exercises/textbook-hutton/sol-hs/Chap2ex1.hs, interpreted ) [Source file changed]

/home/dt/work/projects_git/learn_haskell/exercises/textbook-hutton/sol-hs/Chap2ex1.hs:1:1: warning: [-Wmissing-export-lists]
    The export item ‘module Main’ is missing an export list
  |
1 | double x = x + x
  | ^

/home/dt/work/projects_git/learn_haskell/exercises/textbook-hutton/sol-hs/Chap2ex1.hs:1:1: warning: [-Wmissing-signatures]
    Top-level binding with no type signature: double :: Num a => a -> a
  |
1 | double x = x + x
  | ^^^^^^

/home/dt/work/projects_git/learn_haskell/exercises/textbook-hutton/sol-hs/Chap2ex1.hs:2:1: warning: [-Wmissing-signatures]
    Top-level binding with no type signature:
      quadruple :: Num a => a -> a
  |
2 | quadruple x = double (double x)
  | ^^^^^^^^^
Ok, one module loaded.
ghci>
```

Скрипт был подгружен &ndash; значит, написанные в коде функции получится вызвать. Убеждаюсь на примерах из учебника:
```
ghci> quadruple 10
40
ghci> take (double 2) [1..5]
[1,2,3,4]
```

Я намеренно использую команду `stack ghci` вместо рекомендованной в учебнике `ghci` &mdash; при сборке проекта используется файл `package.yaml`, в котором, помимо прочего, перечислены дополнительные параметры, с которыми необходимо запускать GHC. В их числе `-Wall` и `-Wmissing-export-lists` (подробнее см. заметку). Благодаря им получаем подсказку о том, что надо бы подредактировать наш скрипт. Так и поступил.

Сначала избавляюсь от предупреждения:
```
sol-hs/Chap2ex1.hs:1:1: warning: [-Wmissing-export-lists]
    The export item ‘module Main’ is missing an export list
  |
1 | double x = x + x
  | ^
```

---

<i color="grey">

`module Main` выводится вследствие устройства языка: когда в файле `.hs` явно не прописано, к какому модулю пренадлежит код, Haskell "полагает", что это модуль `Main`. Аналогичного результата можно добиться, добавив строку строчку `module Main where`. Правда, вдобавок тогда придётся определить и саму функцию `main` &ndash; иначе программа не скомпилируется:
```
module Main where

{-
    Some functions implementation
    ...
-}

main :: IO ()
-- `return ()` is just a code stub here
main = return ()
```

</i>

&mdash; "Get Programming In Haskell" by Kurt (2018), гл. 34.1, стр. 434.

---

Здесь интересный нюанс: строчка `module Main where` означает expose всех функций, прописанных внутри модуля `Main` (это значит, что все эти функции можно будет вызывать из других модулей -- см. TODO: см. заметку по модулям и структуре проекта). Однако предупреждение всё равно присутствует &mdash; требуется явно перечислить функции на экспорт в виде списка.

Сообщение GHC о недостающих описаниях типа функций, на примере `double`:
```
sol-hs/Chap2ex1.hs:7:1: warning: [-Wmissing-signatures]
    Top-level binding with no type signature: double :: Num a => a -> a
  |
7 | double x = x + x
  | ^^^^^^
```
Исправил (коммит - Chap2ex1 ghci script: fix warning -Wmissing-signatures), руководствуясь материалами из гл. 3.5 ("Function Types") и 3.8 ("Overloaded Types").

Чтобы внесённые в код правки вступили в силу, командой `:reload` перезагружаю скрипт, не закрывая интерпретатор. На данном этапе, GHC больше не "ругается":
```
ghci> :reload
[1 of 1] Compiling Chap2ex1         ( /home/dt/work/projects_git/learn_haskell/exercises/textbook-hutton/sol-hs/Chap2ex1.hs, interpreted ) [Source file changed]
Ok, one module loaded.
```

После нескольких нескольких неудачных попыток с ошибками компиляции добавляю функции из двух оставшихся примеров главы (коммит - Chap2ex1 ghci script: factorial, averageInaccurate).

Во избежании предупреждения `-Wtype-defaults` при вычислении факториала, нужно явно указывать тип аргумента:
```
ghci> factorial 5

<interactive>:21:1: warning: [-Wtype-defaults]
    • Defaulting the type variable ‘a0’ to type ‘Integer’ in the following constraints
        (Show a0) arising from a use of ‘print’ at <interactive>:21:1-11
        (Num a0) arising from a use of ‘it’ at <interactive>:21:1-11
        (Enum a0) arising from a use of ‘it’ at <interactive>:21:1-11
    • In a stmt of an interactive GHCi command: print it
120

ghci> factorial (5::Float)
120.0
```

Функцию `average` (см. учебник, стр. 18) умышленно переименовал в `averageInaccurate` &mdash; если подобрать подходящие значения входного списка, можно увидеть отбрасывание дробной части:
```
ghci> averageInaccurate [1,2]
1  -- should be 1.5
```

На этом моменте мне стало интересно написать функцию для более точного вычисления среднего значения списка. Потратив некоторое время на поиски и отладку, написал рабочее решение (коммит - Chap2ex1 script: averageBetter):
```
ghci> averageBetter [1.0,2.0]
1.5
```

<i color="grey">

Интересно, что в Prelude нет стандартной функции по переводу Int -> Float, и пришлось писать собственную.

</i>
