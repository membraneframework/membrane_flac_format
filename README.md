# Membrane Multimedia Framework: FLAC audio format definition

[![Hex.pm](https://img.shields.io/hexpm/v/membrane_flac_format.svg)](https://hex.pm/packages/membrane_flac_format)
[![API Docs](https://img.shields.io/badge/api-docs-yellow.svg?style=flat)](https://hexdocs.pm/membrane_flac_format/)
[![CircleCI](https://circleci.com/gh/membraneframework/membrane_flac_format.svg?style=svg)](https://circleci.com/gh/membraneframework/membrane_flac_format)

This package provides FLAC audio format definition for the
[Membrane Multimedia Framework](https://membraneframework.org).

## Installation

Unless you're developing a Membrane Element it's unlikely that you need to
use this package directly in your app, as normally it is going to be fetched as
a dependency of any element that operates on FLAC encoded audio.

However, if you are developing an Element or need to add it due to any other
reason, just add the following line to your `deps` in the `mix.exs` and run
`mix deps.get`.

```elixir
{:membrane_flac_format, "~> 0.2.0"}
```

## Sponsors

This project is sponsored by [Abridge AI, Inc.](https://abridge.com)

## Copyright and License

Copyright 2019, [Software Mansion](https://swmansion.com/?utm_source=git&utm_medium=readme&utm_campaign=membrane_flac_format)

[![Software Mansion](https://logo.swmansion.com/logo?color=white&variant=desktop&width=200&tag=membrane-github)](https://swmansion.com/?utm_source=git&utm_medium=readme&utm_campaign=membrane_flac_format)

Licensed under the [Apache License, Version 2.0](LICENSE)
