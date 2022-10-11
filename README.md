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

## Usage

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

## Contribute

* Star the package on [github.com](https://github.com/liuyxpp/MakiePublication.jl).
* File an issue or make a pull request on [github.com](https://github.com/liuyxpp/MakiePublication.jl).
* Pull requests of new schemes for other publishers are highly appreciated.
* Contact the author via email <lyx@fudan.edu.cn>.

## Links

* [Source code](https://github.com/liuyxpp/MakiePublication.jl)
* [Tutorial in Pluto notebook](https://github.com/liuyxpp/MakiePublication.jl/blob/master/doc/tutorial.jl.html)