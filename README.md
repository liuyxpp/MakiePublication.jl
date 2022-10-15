# MakiePublication.jl

**MakiePublication.jl** is a Julia package for producing publication quality figures based on [Makie.jl](https://github.com/JuliaPlots/Makie.jl). It aims to provide an equivalent functionalities as the Python package [mpltex](https://github.com/liuyxpp/mpltex).

## Features

* Provide a collection of custom themes for journal publishers: ACS, APS, RSC.
* Custom theme for making figures suitable for web pages.

## Install

MakiePublication can be installed from the Julia REPL.

```console
julia> # Press the key "]"

(@v1.7) pkg> add MakiePublication
```

## Quick Start

```julia
using MakiePublication
using CairoMakie
using LaTeXStrings

function myplot()
  x = 0:0.001:1.0
  fig = Figure(figure_padding=(0, 6, 0, 4))
  ax = Axis(fig, xlabel=L"x", ylabel=L"f(x)")
  lines!(ax, x, x, label=L"x")
  lines!(ax, x, x.^2, label=L"x^2")
  lines!(ax, x, x.^3, label=L"x^3")
  lines!(ax, x, x.^4, label=L"x^4")
  lines!(ax, x, log.(x.+1), label=L"\ln(1+x)")
  lines!(ax, x, .√x, label=L"x^{1/2}")
  lines!(ax, x, x.^(1/3), label=L"x^{1/3}")
  xlims!(0, 1)
  ylims!(0, 1)
  
  fig[1,1] = ax
  
  return fig
end

fig = with_theme(myplot, theme_acs())
savefig("myplot.pdf", fig)
```

Sample figures can be found in the `doc` folder.

Please see the Pluto notebook `doc/tutorial.jl.html` for a detailed demonstration of this package.

## Colors

The default color cycle is 10-color [seanborn_deep](https://juliagraphics.github.io/ColorSchemes.jl/stable/catalogue/#Seaborn). MakiePublication also provides 15 carefully chosen color palettes based on well-known palettes, such as `tab10`, `tableau_10`, `Makie.wong_colors`, `okabe_ito`, etc. The colors in each palette has been reordered if necessary to be consistent with the order of the default matplotlib color palette, `tab10`. The order is: blue, orange, green, red, purple, brown, pink, gray, yellow, and cyan. You can choose it from the array `MakiePublication.COLORS` and use it like this:

```julia
with_theme(myplot, theme_web(colors=MakiePublication.COLORS[6]))
```

Or obtain the color palette by calling a function:

```julia
with_theme(myplot, theme_web(colors=MakiePublication.okabe_ito())
```

The demonstration of available color palettes can be found in the Pluto notebook `doc/makiepub_colors.jl.html`.

## Contribute

* Star the package on [github.com](https://github.com/liuyxpp/MakiePublication.jl).
* File an issue or make a pull request on [github.com](https://github.com/liuyxpp/MakiePublication.jl).
* Pull requests of new schemes for other publishers are highly appreciated.
* Contact the author via email <lyx@fudan.edu.cn>.

## Links

* [Source code](https://github.com/liuyxpp/MakiePublication.jl)
* [Tutorial in Pluto notebook](https://github.com/liuyxpp/MakiePublication.jl/blob/master/doc/tutorial.jl.html)