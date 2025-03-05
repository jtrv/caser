[![crates.io image](https://img.shields.io/crates/v/caser-cli.svg)](https://crates.io/crates/caser-cli)

# Usage

Allow converting selection to various casings.

```sh
echo "snake_case" | caser camel # -> snakeCase
```

For instance, `foo_bar` to `FooBar`

Known casings:

```
case            input         output
------------------------------------
ada-case        fOo bAr   ->  Foo_Bar
camel-case      foo bar   ->  fooBar
class-case      foo bar   ->  FooBar
deconstantize   Foo::Bar  ->  Foo
demodulize      Foo::Bar  ->  Bar
foreign-key     Foo::Bar  ->  bar_id
http-case       foo bar   ->  Foo-Bar
invert-case     Foo Bar   ->  fOO bAR
kebab-case      foo bar   ->  foo-bar
lower-case      FOO Bar   ->  foo bar
1-deordinalize  1st       ->  1
1st-ordinalize  2         ->  2nd
pascal-case     foo bar   ->  FooBar
screaming-case  foo bar   ->  FOO_BAR
snake-case      foo bar   ->  foo_bar
title-case      foo bar   ->  Foo Bar
train-case      foo bar   ->  Foo-Bar
uppercase       foo bar   ->  FOO BAR
sentence-case   foo bar   ->  Foo bar
table-case      foo bar   ->  foo_bars
single          octopi    ->  octopus
plurals         octopus   ->  octopi
```

## Installation

```sh
cargo install --git https://github.com/jtrv/caser caser-cli
```

This should add a `caser` command to your $PATH.

## Kakoune

After installing caser you can add something like [caser.kak](./rc/caser.kak) to your config.

With [kak-bundle](https://github.com/jdugan6240/kak-bundle):

```kakscript
bundle caser https://github.com/jtrv/caser %{ require-module caser-recommended-bindings }
bundle-install-hook caser %{ cargo install --path . ; cargo clean }
```

