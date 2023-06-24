## Index

Pragmas:
- [{-# START_FILE {{name}}.cabal #-}]()
- [{-# START_FILE stack.yaml #-}]()
- [{-# START_FILE Setup.hs #-}]()
- [{-# START_FILE test/Spec.hs #-}]()
- [{-# START_FILE src/Lib.hs #-}]()
- [{-# START_FILE app/Main.hs #-}]()

Remarks:
- Empty lines number

### Pragmas

----


#### {-# START_FILE {{name}}.cabal #-}

Index:
- ...

----

name, version ...


Некоторые параметры можно передавать как через глобальную конфигу `~/.stack/config.yaml`, так и вручную -- a remark from `stack new code mytempl.hsfiles` command output:
```
The following parameters were needed by the template but not provided: author-email, author-name, category, copyright, github-username
You can provide them in /home/dt/.stack/config.yaml, like this:
templates:
  params:
    author-email: value
    author-name: value
    category: value
    copyright: value
    github-username: value
Or you can pass each one as parameters like this:
stack new code mytempl -p "author-email:value" -p "author-name:value" -p "category:value" -p "copyright:value" -p "github-username:value"
```


`ghc-options:`

- `-Wall` -- Enables all warnings.
- `-Wcompat` -- Warn about compatibility issues between different versions of GHC.
- `-Widentities` -- Warn about redundant identity functions.
- `-Wincomplete-record-updates` -- Warn about incomplete record updates.
- `-Wincomplete-uni-patterns` -- Warn about incomplete pattern matches in case expressions.
- `-Wmissing-export-lists` -- Warn about missing export lists in modules.
- `-Wmissing-home-modules` -- Warn about missing home modules.
- `-Wpartial-fields` -- Warn about partial record fields.
- `-Wredundant-constraints` -- Warn about redundant constraints.


----

library

```
  build-depends:       base >= 4.7 && < 5
                     , hspec
```

Взял на основе примера из [Haskell Programming from First Principles](https://haskellbook.com/) ([pdf](https://mega.nz/file/rt8wBJxC#NUwGJOlC-0n85CG5zM8UeRaL52WbEl37ul4q03k1itM)), гл. 14.3


----

`executable <exe-name>`

The `stack build` command produces the `solutions` exe-file according to _stanza_ in the `solutions.cabal` file:
```
executable {{name}}-exe                     -- how to name the executable
  hs-source-dirs:      app                  -- path to look for the source code
  main-is:             Main.hs              -- obligatory line setting the name of the module with the `main` function
  default-language:    Haskell2010          -- the version of the Haskell standard to expect
  build-depends:       base >= 4.7 && < 5   --  exe's / libs / test suites go here; "base" is the minimum baseline dependency for building
                     , {{name}}
```

`main-is:`

[Haskell Programming from First Principles](https://haskellbook.com/) ([pdf](https://mega.nz/file/rt8wBJxC#NUwGJOlC-0n85CG5zM8UeRaL52WbEl37ul4q03k1itM)), dp 101:
> When building a project with Stack, having a main executable in a `Main.hs` file is obligatory, but you can have source files and load them in GHCi without necessarily having a main block.

`default-language:`

Прописываем у каждого компонента, чтобы устранить предупреждение во время сборки:
```
Warning: Packages using 'cabal-version: >= 1.10' and before 'cabal-version: 3.4' must specify the 'default-language' field for each component (e.g. Haskell98 or Haskell2010). If a component uses different languages in different modules then list the other ones in the 'other-languages' field.
```


`ghc-options:`

- `-threaded` -- Enables threaded runtime system.
- `-rtsopts` -- Passes runtime system options to the executable.
- `-with-rtsopts=-N` -- Sets the number of capabilities for the runtime system to the value specified after -with-rtsopts.



----

#### {-# START_FILE stack.yaml #-}

Some commonly used options have been documented as comments in this file.

See [advanced usage documentation](https://docs.haskellstack.org/en/stable/yaml_configuration/) for details.

----

`resolver:`

Resolver to choose a 'specific' stackage snapshot or a compiler version.
A snapshot resolver dictates the compiler version and the set of packages
to be used for project dependencies. For example:
```
resolver: lts-3.5
resolver: nightly-2015-09-21
resolver: ghc-7.10.2
resolver: ./custom-snapshot.yaml
resolver: https://example.com/snapshots/2018-01-01.yaml
```

----

`packages:`

User packages to be built.

Various formats can be used as shown in the example below.
```
packages:
- some-directory
- https://example.com/foo/bar/baz-0.0.2.tar.gz
  subdirs:
  - auto-update
  - wai
```


### Ремарки

Empty lines number

Между блоками описаниями файлов (т.н. _pragmas_, `{-# START_FILE <file-path> #-}`) оставляем ровно по 1 пустой строке. Иначе в файлах, сгенерированных `stack new <project-name> <template-name>` в конце будут лишние пустые строки.

----
