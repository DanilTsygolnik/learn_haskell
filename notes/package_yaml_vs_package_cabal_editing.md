## Why use `package.yaml`

<blockquote>

> The `package.yaml` file contains the packages description in an alternative format that is used by hpack. TL;DR Instead of writing package description in cabal format you can write it in YAML and you get some extra features like automatic modules discovery. hpack then generates a `.cabal` file using information from `package.yaml`.

&mdash; [kowainik.github.io, "Stack project structure" section][1]

[1]: https://kowainik.github.io/posts/2018-06-21-haskell-build-tools#stack-project-structure

<blockquote>


Useful resources here:
- [stack.yaml vs a Cabal file - The Haskell Tool Stack](https://docs.haskellstack.org/en/stable/stack_yaml_vs_cabal_package_file/)
- [Stack project & global config with `stack.yaml`](https://docs.haskellstack.org/en/stable/yaml_configuration/)


## The issue with disappearing packages

If a user has both `package.yaml` and `project.cabal` files in the project root and edits the `project.cabal` file first, followed by changes in `package.yaml`, and then runs `stack build`, issues may arise. This is because Stack expects the package configuration to be defined in `package.yaml` and relies on it to generate the Cabal file. If changes are made in the `project.cabal` file, it can lead to inconsistencies and conflicts with the package configuration in `package.yaml`, resulting in disappearing packages. [docs.haskellstack.org guide](https://docs.haskellstack.org/en/stable/GUIDE/) 

To avoid this issue and ensure proper synchronization between `package.yaml` and the Cabal file, it is recommended to follow these steps:
- Use `package.yaml` as the primary package configuration file and define the package configuration in YAML format.
- Avoid modifying the Cabal file directly. Instead, make changes in the `package.yaml` file to update the package configuration.
- After making changes in `package.yaml`, run the hpack command to regenerate the Cabal file. This command will read the `package.yaml` file and generate the corresponding Cabal file based on the specified package configuration.
- Use Stack commands (`stack build`, `stack install`, stack test, etc.) to build and manage your project. Stack will use the updated Cabal file generated by hpack to ensure that the package configuration is consistent and reflects the changes made in `package.yaml`.

By following these guidelines and ensuring that `package.yaml` is the primary package configuration file, and the Cabal file is generated from it using hpack, you can avoid the issue of disappearing packages and maintain proper synchronization between the two files.

