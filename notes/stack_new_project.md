## Инициализация проекта

> Generally we want to make a Cabal project, even for small experiments.

Проекты на Haskell инициализируются с помощью команды `stack new <project_name> <template_to_use>`. В файле `<template_to_use>` содержится декларативное описание структуры проекта (пути к файлам с заготовками кода), настройки для сборки (?) проекта.

Пример структуры [учебного проекта](https://github.com/haskellbook/hello/) ("Hello, world!"), который приводится в учебнике [Haskell Programming from First Principles](https://haskellbook.com/) ([pdf](https://mega.nz/file/rt8wBJxC#NUwGJOlC-0n85CG5zM8UeRaL52WbEl37ul4q03k1itM)), гл. 13.3:
```
/hello
├── src
│   └── Main.hs
├── hello.cabal
├── stack.yaml
├── stack.yaml.lock
├── Setup.hs
├── LICENSE
└── README.md
```

Взял за основу templates [kurt.hsfiles](https://github.com/commercialhaskell/stack-templates/blob/1855a1ad1593c5dc39361d409466e5f4c858077e/kurt.hsfiles) и [new-template.hsfiles](https://github.com/commercialhaskell/stack-templates/blob/1855a1ad1593c5dc39361d409466e5f4c858077e/new-template.hsfiles), написал [собственный шаблон](../misc/stack_new_mytempl.hsfiles) для создания простой заготовка проекта со следующей структурой файлов:
```
$ stack new solutions /abs/path/to/mytemplate.hsfiles

/solutions
├── app
│   └── Main.hs
├── src
│   └── Lib.hs
├── test
│   └── Spec.hs
├── solutions.cabal
├── stack.yaml
└── Setup.hs
```

На данном этапе можно приступать к редактированию кода (например, модулей, библиотек, тестов).

## Сборка проекта

Осуществляется командой `stack build`. 

----

<i color="grey">
Примечание

При первой сборке потребуется загрузить отдельную версию GHC, указанную в свойстве `resolver:` (файл `stack.yaml`). В шаблоне явно прописал данный параметр, чтобы каждый проект создавался с идентичной версией, и не приходилось каждый раз скачивать по ~200 Мб.

При необходимости, новый `stack.yaml` с нужной версией GHC автоматически генерирует команда `$ stack init --force`.
</i>

---

В результате в корень проекта добавляется скрытая директория `.stack-work`, содержащая в т.ч. готовый бинарник нашей программы -- `solutions-exe`. Также появляется файл `stack.yaml.lock`, который фиксирует точные версии пакетов и зависимостей, используемых в проекте.

Скопмилированная программа запускается следующим образом:
```bash
$ stack exec -- solutions-exe
Hi there :)
```

При необходимости можно выяснить абсолютный путь к файлу так:
```
$ stack exec -- which solutions-exe
/home/user/.../.stack-work/install/.../bin/solutions-exe
```
