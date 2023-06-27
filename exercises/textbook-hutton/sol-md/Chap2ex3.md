My solutions successfully compiled after two consecutive changes: [aa87ba5](https://github.com/DanilTsygolnik/learn_haskell/commit/aa87ba50314d571497dfccfa0b111ceb2545a0b7) and [d691f67](https://github.com/DanilTsygolnik/learn_haskell/commit/d691f67bf74b37bae5d19b013120d24704e018c2).

According to the sample answer, there is a wrong indent on the line with `a = 10`. However, I initially typed the sample code with the correct layout.

Additionally, I addressed every GHCi warning by making the following fixes:
- `-Wmissing-export-lists` warning was fixed in [ee40ba1](https://github.com/DanilTsygolnik/learn_haskell/commit/ee40ba17d355e02dce502a03313e48af3f4d1f16);
- `-Wmissing-signatures` warning was fixed in [0ee9074](https://github.com/DanilTsygolnik/learn_haskell/commit/0ee9074e9333c1fd4ba45bac0e38b98974c65a8b);
- `-Wtype-defaults` warning was fixed in [3f30b8d](https://github.com/DanilTsygolnik/learn_haskell/commit/3f30b8d702c10035a78f84ebba876dedcefed582).
