# MakiePublication.jl

![APS](figures/banner/banner.svg)

**MakiePublication.jl** is a Julia package for producing publication quality figures based on [Makie.jl](https://github.com/JuliaPlots/Makie.jl). It aims to provide equivalent functionalities as the Python package [mpltex](https://github.com/liuyxpp/mpltex).

## Features

* Provide a collection of custom themes for journal publishers: ACS, APS, RSC.
* Custom theme for making figures suitable for web pages.
* 15 color palettes based on well-known quality color schemes with special tweaked ordering for scientific publishing. (since v0.3.0)
* Support hollow markers. (since v0.3.1)

## Installation

MakiePublication can be installed from the Julia REPL.

```console
julia> # Press the key "]"

(@v1.8) pkg> add MakiePublication
```

## Showcase of Themes

Note that all MakiePublication themes for journal publishers are essentially the same except the physical size of the figure. Hence following figures only different in the image sizes.

- `theme_acs` for American Chemical Society (ACS)

![ACS theme](figures/acs.svg)

- `theme_aps` for American Physical Society (APS) and American Institute of Physics (AIP)

![APS theme](figures/aps.svg)

- `theme_rsc` for Royal Society of Chemistry (RSC)

![RSC theme](figures/rsc.svg)

- `theme_web` for web presentation.

![Web theme](tutorial/complicated.svg)

## Contribute

* Star the package on [github.com](https://github.com/liuyxpp/MakiePublication.jl).
* File an issue or make a pull request on [github.com](https://github.com/liuyxpp/MakiePublication.jl).
* Pull requests of new schemes for other publishers are highly appreciated.
* Contact the author via email <lyx@fudan.edu.cn>.