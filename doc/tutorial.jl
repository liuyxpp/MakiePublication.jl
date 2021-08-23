### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 0da325a8-d6f6-4963-8562-9b7847878c07
begin
	using Pkg
	Pkg.add("CairoMakie")
	Pkg.add("LaTeXStrings")
	Pkg.develop(url="/Users/lyx/SynologyDrive/Develop/MakiePublication")
	using MakiePublication
	using CairoMakie
	using LaTeXStrings
end

# ╔═╡ 30b0601e-63b9-4986-a311-9685560b55ef
function myline()
	x = 0:0.001:1
	fig = Figure()
	ax = Axis(fig, xlabel=latexstring("x"), ylabel=latexstring("y"))
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

# ╔═╡ 5b508e70-8921-407f-8e19-9cd2a3c22e80
myline()

# ╔═╡ 2d15b715-6441-4b7c-b751-599c0f5894a3
fig = with_theme(myline, theme_acs())

# ╔═╡ b78fde28-81ed-4c31-a161-43ceef0d7c42
save("test_line.pdf", fig, pt_per_unit=1)

# ╔═╡ Cell order:
# ╠═0da325a8-d6f6-4963-8562-9b7847878c07
# ╠═30b0601e-63b9-4986-a311-9685560b55ef
# ╠═5b508e70-8921-407f-8e19-9cd2a3c22e80
# ╠═2d15b715-6441-4b7c-b751-599c0f5894a3
# ╠═b78fde28-81ed-4c31-a161-43ceef0d7c42
