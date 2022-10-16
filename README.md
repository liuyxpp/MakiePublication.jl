# MakiePublication.jl

![APS](doc/figures/banner/banner.svg)

**MakiePublication.jl** is a Julia package for producing publication quality figures based on [Makie.jl](https://github.com/JuliaPlots/Makie.jl). It aims to provide an equivalent functionalities as the Python package [mpltex](https://github.com/liuyxpp/mpltex).

## Features

* Provide a collection of custom themes for journal publishers: ACS, APS, RSC.
* Custom theme for making figures suitable for web pages.
* 15 color palettes based on well-known quality color schemes with special tweaked ordering for scientific publishing. (since v0.3.0)
* Support hollow markers. (since v0.3.1)

## Install

MakiePublication can be installed from the Julia REPL.

```console
julia> # Press the key "]"

(@v1.8) pkg> add MakiePublication
```

## Quick Start

MakiePublication provides a number of `theme_*` methods to generate themes (`Makie.Theme` instances) which can be given to [Makie's theming methods](https://docs.makie.org/stable/documentation/theming/index.html): `set_theme!`, `update_theme!`, and `with_theme`. A typical usage pattern is

```julia
using MakiePublication
using CairoMakie

with_theme(theme_web()) do
    lines(0..10, sin)
    lines!(0..10, cos)
    current_figure()
end
```

Or if you have a more complicated plotting function,

```julia
function myplot()
    fig = Figure(figure_padding=(2, 6, 1, 6))
    ax = Axis(fig, xlabel=L"x", ylabel=L"f(x)")
    lines!(ax, 0..10, sin)
    lines!(ax, 0..10, cos)

    fig[1,1] = ax
    fig
end

with_theme(myplot, theme_web())
```

Sample figures can be found in the `doc` folder.

Please see the Pluto notebook `doc/tutorial.jl.html` for a detailed demonstration of this package.

## Colors

The default color cycle is 10-color [seanborn_deep](https://juliagraphics.github.io/ColorSchemes.jl/stable/catalogue/#Seaborn) (since v0.2.3). MakiePublication also provides 15 carefully chosen color palettes based on well-known palettes, such as `tab10`, `tableau_10`, `Makie.wong_colors`, `okabe_ito`, etc. The colors in each palette has been reordered if necessary to be consistent with the order of the default matplotlib color palette, `tab10`. The order is: blue, orange, green, red, purple, brown, pink, gray, yellow, and cyan. You can choose it from the array `MakiePublication.COLORS` and use it like this:

```julia
with_theme(myplot, theme_web(colors=MakiePublication.COLORS[5]))
```

Or obtain the color palette by calling a function:

```julia
with_theme(myplot, theme_web(colors=MakiePublication.tol_bright()))
```

The demonstration of available color palettes can be found in the Pluto notebook `doc/makiepub_colors.jl.html`.

## Showcase of Themes

- `theme_acs` for American Chemical Society (ACS)

![ACS](doc/figures/acs.svg)

- `theme_aps` for American Physical Society (APS) and American Institute of Physics (AIP)

![APS](doc/figures/aps.svg)

- `theme_rsc` for Royal Society of Chemistry (RSC)

![RSC](doc/figures/rsc.svg)

## Contribute

* Star the package on [github.com](https://github.com/liuyxpp/MakiePublication.jl).
* File an issue or make a pull request on [github.com](https://github.com/liuyxpp/MakiePublication.jl).
* Pull requests of new schemes for other publishers are highly appreciated.
* Contact the author via email <lyx@fudan.edu.cn>.

## Links

* [Source code](https://github.com/liuyxpp/MakiePublication.jl)
* [Tutorial in Pluto notebook](https://github.com/liuyxpp/MakiePublication.jl/blob/master/doc/tutorial.jl.html)