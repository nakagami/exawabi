# ExAwabi

<!-- MDOC !-->

[![hex.pm](https://img.shields.io/hexpm/v/exawabi.svg)](https://hex.pm/packages/exawabi)
[![hex.pm](https://img.shields.io/hexpm/dt/exawabi.svg)](https://hex.pm/packages/exawabi)
[![hex.pm](https://img.shields.io/hexpm/l/exawabi.svg)](https://hex.pm/packages/exawabi)
[![github.com](https://img.shields.io/github/last-commit/nakagami/exawabi.svg)](https://github.com/nakagami/exawabi/commits/master)

Elixir wrapper for [Awabi](https://github.com/nakagami/awabi), a morphological
analyzer using [MeCab](https://en.wikipedia.org/wiki/MeCab) dictionary, written
in Rust.

Additional doc can be found at [https://hexdocs.pm/exawabi](https://hexdocs.pm/exawabi).

## Requirements

- [MeCab](https://taku910.github.io/mecab/) and related dictionary.
- [Rust](https://www.rust-lang.org/tools/install) for compiling Rust's Natively Implemented Function (NIF) binding.

### Debian/Ubuntu
```
$ sudo apt install mecab mecab-ipadic-utf8
```

### Mac OS X (homebrew)
```
$ brew install mecab
$ brew install mecab-ipadic
```

## Installation

The package can be installed by adding `exawabi` to your list of dependencies
in `mix.exs`:

```elixir
def deps do
  [
    {:exawabi, "~> 0.1.2"}
  ]
end
```
