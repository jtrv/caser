[![crates.io image](https://img.shields.io/crates/v/caser-cli.svg)](https://crates.io/crates/caser-cli)

# Usage

Allow converting selection to various casings.

```sh
echo "snake_case" | caser camel # -> snakeCase
```

For instance, `foo_bar` to `FooBar`

Known casings:

```
camel               fooBar
http                Foo-Bar
kebab               foo-bar
pascal              FooBar
sentence            Foo bar
snake               foo_bar
screaming           FOO_BAR
title               Foo Bar
train               Foo-Bar
ugly                Foo_Bar
```

## Installation

```sh
cargo install caser-cli
```

This should add a `caser` command to your $PATH.

## Kakoune

After installing caser you can add something like [caser.kak](./caser.kak) to your Kakoune config.
