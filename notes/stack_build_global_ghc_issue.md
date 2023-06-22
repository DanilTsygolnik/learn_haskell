Настраиваем `stack` на использование system GHC installation при сборке проектов (чтобы каждый раз не скачивал отдельную версию GHC):
```
$ stack config set system-ghc --global true
```
Или прописываем в файле `~/.stack/config.yaml` следующий код:
```
system-ghc: true
```

Выясняем версию `ghc`, установленного глобально в системе:
```
$ ghc --version
The Glorious Glasgow Haskell Compilation System, version 9.0.2
```

После создания заготовки проекта меняем блок кода в файле `stack.yaml`:
```
# было
resolver:
  url: https://raw.githubusercontent.com/commercialhaskell/stackage-snapshots/master/lts/21/0.yaml

# стало
resolver:
    ghc-9.0.2
```

**Проблема**: после выполненных действий `stack build` не скачивает очередную версию GHC (цель достигнута), но в это же время проект не собирается с ошибкой:
```
[1 of 2] Compiling Main             ( /home/dt/.stack/setup-exe-src/setup-6HauvNHV.hs, /home/dt/.stack/setup-exe-src/setup-6HauvNHV.o )

/home/dt/.stack/setup-exe-src/setup-6HauvNHV.hs:1:1: error:
    Could not find module ‘Prelude’
    There are files missing in the ‘base-4.15.1.0’ package,
    try running 'ghc-pkg check'.
    Use -v (or `:set -v` in ghci) to see a list of the files searched for.
  |
1 | import Distribution.Simple
  | ^

/home/dt/.stack/setup-exe-src/setup-6HauvNHV.hs:1:1: error:
    Could not find module ‘Distribution.Simple’
    There are files missing in the ‘Cabal-3.4.1.0’ package,
    try running 'ghc-pkg check'.
    Use -v (or `:set -v` in ghci) to see a list of the files searched for.
  |
1 | import Distribution.Simple
  | ^^^^^^^^^^^^^^^^^^^^^^^^^^

Error: [S-6374]
       While building simple Setup.hs (scroll up to its section to see the error) using:
       /usr/bin/ghc-9.0.2 -rtsopts -threaded -clear-package-db -global-package-db -hide-all-packages -package base -main-is StackSetupShim.mainOverride -package Cabal-3.4.1.0 /home/dt/.stack/setup-exe-src/setup-6HauvNHV.hs /home/dt/.stack/setup-exe-src/setup-shim-6HauvNHV.hs -o /home/dt/.stack/setup-exe-cache/x86_64-linux/tmp-Cabal-simple_6HauvNHV_3.4.1.0_ghc-9.0.2
       Process exited with code: ExitFailure 1
```

