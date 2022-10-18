# Quick Start

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