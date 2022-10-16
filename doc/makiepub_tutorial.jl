### A Pluto.jl notebook ###
# v0.19.13

using Markdown
using InteractiveUtils

# ╔═╡ 0da325a8-d6f6-4963-8562-9b7847878c07
begin
	using Revise
	using Pkg
	Pkg.activate(tempdir())
	Pkg.develop(path="/Users/lyx/SynologyDrive/Develop/MakiePublication")
	using MakiePublication  # requires v0.3.1+
	using CairoMakie
end

# ╔═╡ 4a1d4c5d-b44f-49e8-a526-2d473a417e55
md"""
# MakiePublication Tutorial

To use MakiePublication, we first import it together with the CairoMakie package. Since MakeiPublication aims to produce figures for journal publishing which often rquire vector graphics in the formats of PDF, EPS, and SVG, it use CairoMakie internally. 
"""

# ╔═╡ 7ae40f10-c06b-4708-b1f1-dc32757fa3d3
md"""
## Simple plots

For simple plots, we can use `with_theme` block:
"""

# ╔═╡ 3b2fd71a-327e-467a-b0c6-93f11a6954d8
with_theme(theme_web()) do
	lines(0..10, sin)
	lines!(0..10, cos)
	current_figure()
end

# ╔═╡ 2df32fce-52f9-495f-9d4a-ddddaa79e1e1
md"""
### Complicated plots

`with_theme` can be also called with a plotting function. The following plotting function demonstrates how to:

- plot fitted lines and data points together
- draw a legend at desired location and its padding, columns.
- tune the padding of a figure with respect to canvas
- tune axis limits
"""

# ╔═╡ 30b0601e-63b9-4986-a311-9685560b55ef
# web theme: figure_padding=(2, 16, 2, 8), legend_margin=((15,0,0,10)
# other themes: figure_padding=(2, 6, 1, 6), legend_margin=((5,0,0,0)
function myplot(; figure_padding=(2,6,1,6), legend_margin=((5,0,0,0)))
	x = 0:0.001:1.0
	xs = 0:0.08:1.0
	fig = Figure(figure_padding=figure_padding)
	ax = Axis(fig, xlabel=L"x", ylabel=L"f(x)")

	l1 = lines!(ax, x, x.^(5/8), label=L"x^{5/8}")
	s1 = scatter!(ax, xs, xs.^(5/8))
    l2 = lines!(ax, x, x.^(3/4), label=L"x^{3/4}")
	s2 = scatter!(ax, xs, xs.^(3/4))
    l3 = lines!(ax, x, x, label=L"x")
	s3 = scatter!(ax, xs, xs)
    l4 = lines!(ax, x, x.^(5/4), label=L"x^{5/4}")
	s4 = scatter!(ax, xs, xs.^(5/4))
    l5 = lines!(ax, x, x.^(3/2), label=L"x^{3/2}")
	s5 = scatter!(ax, xs, xs.^(3/2))
    l6 = lines!(ax, x, x.^2, label=L"x^2")
	s6 = scatter!(ax, xs, xs.^2)
    l7 = lines!(ax, x, x.^3, label=L"x^3")
	s7 = scatter!(ax, xs, xs.^3)
    l8 = lines!(ax, x, x.^4, label=L"x^4")
	s8 = scatter!(ax, xs, xs.^4)
    l9 = lines!(ax, x, x.^6, label=L"x^6")
	s9 = scatter!(ax, xs, xs.^6)
    l10 = lines!(ax, x, x.^8, label=L"x^8")
	s10 = scatter!(ax, xs, xs.^8)

	xlims!(0, 1)
	ylims!(0, 1)

	axislegend(ax, [[l1, s1], [l2, s2], [l3, s3], [l4, s4], [l5, s5], [l6, s6], [l7, s7], [l8, s8], [l9, s9], [l10, s10]],
		[L"x^{5/8}", L"x^{3/4}", L"x", L"x^{5/4}", L"x^{3/2}", L"x^2", L"x^3", L"x^4", L"x^6", L"x^8"], nbanks=3, position=:lt, margin=legend_margin, padding=(0,0,0,0))
	
	fig[1,1] = ax
	
	return fig
end

# ╔═╡ 9ebf7a77-d9ce-43a3-b48d-ed7ef5f8950b
myplot_web() = myplot(figure_padding=(2, 16, 2, 8), legend_margin=(15,0,0,10))

# ╔═╡ fa12a8ed-08f9-4e1b-892d-ffda1fa7dde8
md"""
The default looking by CairoMakie
"""

# ╔═╡ 5b508e70-8921-407f-8e19-9cd2a3c22e80
myplot_web()

# ╔═╡ 8e751ba0-0637-453f-8a38-63cbc331df5a
md"""
Theming it by MakiePublication Web theme. Notable changes:

- Resolution and figure aspect ratio
- Color palette from `Makie.wong_colors` to `seaborn_deep`
- Frameless figure legend
- Visible minor ticks.
- Marker size
- Spine width
- Label font size
"""

# ╔═╡ 57ece2db-0068-4d82-8391-ddffefbde28b
with_theme(myplot_web, theme_web())

# ╔═╡ 81f7dc00-0fef-44bd-b9b1-9e602a39990f
md"""
## Color palette

MakiePublication has 15 built-in color palettes. We can choose a color palette from the array `MakiePublication.COLORS` and use it like this:

```julia
with_theme(myplot, theme_web(colors=MakiePublication.COLORS[5]))
```

Note we arange the order of the color palettes in `COLORS` by recommendation index. The first is the most recommended color palette which is the MakiePublication default, i.e. `seaborn_deep`. 

Or obtain the color palette by calling a function:

```julia
with_theme(myplot, theme_web(colors=MakiePublication.tol_bright()))
```
"""

# ╔═╡ 372077d2-e2d6-49db-b504-776afea5cef9
with_theme(myplot_web, theme_web(colors=MakiePublication.tol_bright()))

# ╔═╡ 56fbceb9-0e9f-4a1f-ade9-8517c334f493
md"""
## Line styles

By default, the line styles are given by `MakiePublication.LINESTYLES`. You can overwrite it with `linestyles` keyword of `theme_*` methods.

Moreover, the default cycle for Line plots does not cycle line styles. To cycle line styles, you have to pass a proper cycle using either `cycle` or `linecycle` keyword argument.

See the example below:
"""

# ╔═╡ cb648b46-9fb5-4efb-a9d8-dcebb4b3f5ec
let
	lc = Cycle([:color, :linestyle], covary=true)
	# Only solid and dashed line styles are cycled.
	with_theme(myplot_web, theme_web(linecycle=lc, linestyles=[nothing, :dash]))
end

# ╔═╡ d97758f1-f9f9-4cc3-b821-158b1e251c97
md"""
## Makers

By default, the markers are given by `MakiePublication.MARKERS`. You can overwrite it with `makers` keyword of `theme_*` methods.
"""

# ╔═╡ 2c1179a5-d874-4339-b20a-395819df8573
# Only circle and diamond markers are cycled.
with_theme(myplot_web, theme_web(markers=[:circle, :diamond]))

# ╔═╡ 2dfc73ac-57c3-4eea-b347-5c0394ce28e4
md"""
## Hollow markers

MakiePublicaion supports drawing hollow markers by using transparent color for marker face and drawing strokes only.

To draw hollow markers, we have to explicitly define a marker cycle including both `:color=>:markercolor` and `:strokecolor=>:color`, e.g.

```julia
Cycle([:color=>:markercolor, :strokecolor=>:color])
```

Moreover, we have to define a list of `true` or `false` values which indicates the ordering of whether the marker is hollow, and pass it to the `ishollowmarkers` keyword argument. For example,

```julia
[false, true]
```

it will make every second maker hollow.

You can also change the stroke width by passing the value to the `makerstrokewidth` keyword argument.

A full exmple is
"""

# ╔═╡ c7fc75f0-c189-48e0-882d-04003d1c9ef2
let
	sc = Cycle([:color=>:markercolor, :strokecolor=>:color], covary=true)
	with_theme(myplot_web, theme_web(scattercycle=sc, ishollowmarkers=[false, true], markerstrokewidth=1.5))
end

# ╔═╡ 459355ff-8156-4b49-844d-62dbb6443b30
md"""
Note that currently, when `covary` is false, the maker stroke color will stay unchanged when the marker is not hollow, which may not match its face color.
"""

# ╔═╡ 9f917057-395b-44d8-88ba-f6c6022da2bf
md"""
## Cyclers

Cycler is extremely powerful. Using it properly can produce very complicated figures. See the example below:
"""

# ╔═╡ 4aaafe63-7ea4-4992-9d18-eb886e966816
let
	lc = Cycle([:color, :linestyle], covary=true)
	sc = Cycle([:color=>:markercolor, :strokecolor=>:color, :marker], covary=true)
	with_theme(myplot_web,
		theme_web(
			colors=MakiePublication.tol_bright(),
			linestyles=[nothing, :dash, :dash],
			ishollowmarkers=[false, true, false],
			markers=[:circle, :diamond, :rtriangle],
			linecycle=lc,
			scattercycle=sc,
			markerstrokewidth=1.5)
	)
end

# ╔═╡ ab71ebf0-a9d9-4156-94bc-eb8e8dcaba9f
md"""
## Saving a figure as an image file

- Use `save_fig`, provide a file path with desired extension, such as `pdf`, `eps`, `svg`, `png`, etc.
"""

# ╔═╡ 1a2bf02e-170b-478c-8c33-8529a7832e2e
let
	fig = with_theme(myplot, theme_acs())
	savefig("plot.pdf", fig)
end

# ╔═╡ 73f41134-b9d8-48bd-9b58-ea90b7852a43
md"""
For web display, we remmend use `svg` format for the image file.
"""

# ╔═╡ f8e66f9e-cdc2-4258-b7a9-128ae467b2c7
md"""
- Use `save`. The image size can be further customized with keyword `px_per_unit`, whose default value is 1. Increasing it will increase the resolution as well as the image size.
"""

# ╔═╡ 7e89621b-f8c5-4726-91d7-c32b6ee568b3
let
	fig_web = with_theme(myplot_web, theme_web())
	save("plot_web.png", fig_web, px_per_unit=4)
end

# ╔═╡ Cell order:
# ╠═4a1d4c5d-b44f-49e8-a526-2d473a417e55
# ╠═0da325a8-d6f6-4963-8562-9b7847878c07
# ╠═7ae40f10-c06b-4708-b1f1-dc32757fa3d3
# ╠═3b2fd71a-327e-467a-b0c6-93f11a6954d8
# ╠═2df32fce-52f9-495f-9d4a-ddddaa79e1e1
# ╠═30b0601e-63b9-4986-a311-9685560b55ef
# ╠═9ebf7a77-d9ce-43a3-b48d-ed7ef5f8950b
# ╠═fa12a8ed-08f9-4e1b-892d-ffda1fa7dde8
# ╠═5b508e70-8921-407f-8e19-9cd2a3c22e80
# ╠═8e751ba0-0637-453f-8a38-63cbc331df5a
# ╠═57ece2db-0068-4d82-8391-ddffefbde28b
# ╠═81f7dc00-0fef-44bd-b9b1-9e602a39990f
# ╠═372077d2-e2d6-49db-b504-776afea5cef9
# ╠═56fbceb9-0e9f-4a1f-ade9-8517c334f493
# ╠═cb648b46-9fb5-4efb-a9d8-dcebb4b3f5ec
# ╠═d97758f1-f9f9-4cc3-b821-158b1e251c97
# ╠═2c1179a5-d874-4339-b20a-395819df8573
# ╠═2dfc73ac-57c3-4eea-b347-5c0394ce28e4
# ╠═c7fc75f0-c189-48e0-882d-04003d1c9ef2
# ╠═459355ff-8156-4b49-844d-62dbb6443b30
# ╠═9f917057-395b-44d8-88ba-f6c6022da2bf
# ╠═4aaafe63-7ea4-4992-9d18-eb886e966816
# ╠═ab71ebf0-a9d9-4156-94bc-eb8e8dcaba9f
# ╠═1a2bf02e-170b-478c-8c33-8529a7832e2e
# ╠═73f41134-b9d8-48bd-9b58-ea90b7852a43
# ╠═f8e66f9e-cdc2-4258-b7a9-128ae467b2c7
# ╠═7e89621b-f8c5-4726-91d7-c32b6ee568b3
