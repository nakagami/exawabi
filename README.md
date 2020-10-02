# ExAwabi

`exawabi` is an Elixir wrapper for [Awabi](https://github.com/nakagami/awabi),
a morphological analyzer using [MeCab](https://en.wikipedia.org/wiki/MeCab)
dictionary, written in Rust.

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
