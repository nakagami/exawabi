# ExAwabi

`exawabi` is an Elixir wrapper for [Awabi](https://github.com/nakagami/awabi),
a morphological analyzer using [MeCab](https://en.wikipedia.org/wiki/MeCab)
dictionary, written in Rust.

## Requirements

MeCab https://taku910.github.io/mecab/ and related dictionary is required.

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
    {:exawabi, "~> 0.1.0"}
  ]
end
```

And need to install [Rust](https://www.rust-lang.org/tools/install) on build.

The docs can be found at [https://hexdocs.pm/exawabi](https://hexdocs.pm/exawabi).
