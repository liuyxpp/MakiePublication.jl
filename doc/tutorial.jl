### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 0da325a8-d6f6-4963-8562-9b7847878c07
begin
	using Pkg
	Pkg.add("CairoMakie")
	Pkg.add("LaTeXStrings")
	# Pkg.develop(url="/Users/lyx/SynologyDrive/Develop/MakiePublication")
	Pkg.add(url="https://github.com/liuyxpp/MakiePublication.jl")
	using CairoMakie
	using LaTeXStrings
end

# ╔═╡ 9e2e4de7-bf62-4bf9-b263-cb4781a5d46c
using Revise

# ╔═╡ 44af131a-0904-4d36-b098-01823d6fb8a8
using MakiePublication

# ╔═╡ 30b0601e-63b9-4986-a311-9685560b55ef
function myline()
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

# ╔═╡ 5b508e70-8921-407f-8e19-9cd2a3c22e80
myline()

# ╔═╡ 2d15b715-6441-4b7c-b751-599c0f5894a3
fig = with_theme(myline, theme_acs())

# ╔═╡ b78fde28-81ed-4c31-a161-43ceef0d7c42
savefig("test_line.pdf", fig)

# ╔═╡ 6c1907e1-5298-438d-b6ef-9adb92d849f1
function myscatter()
	x = 0:0.001:1.0
	xs = 0:0.05:1.0
	fig = Figure(figure_padding=(0, 6, 0, 4))
	ax = Axis(fig, xlabel=L"x", ylabel=L"f(x)")
	l1 = lines!(ax, x, x)
	s1 = scatter!(ax, xs, xs, label=L"x")
	l2 = lines!(ax, x, x.^2)
	s2 = scatter!(ax, xs, xs.^2, label=L"x^2")
	l3 = lines!(ax, x, x.^3)
	s3 = scatter!(ax, xs, xs.^3, label=L"x^3")
	l4 = lines!(ax, x, x.^4)
	s4 = scatter!(ax, xs, xs.^4, label=L"x^4")
	l5 = lines!(ax, x, log.(x.+1))
	s5 = scatter!(ax, xs, log.(xs.+1), label=L"\ln(1+x)")
	l6 = lines!(ax, x, .√x)
	s6 = scatter!(ax, xs, .√xs, label=L"x^{1/2}")
	l7 = lines!(ax, x, x.^(1/3))
	s7 = scatter!(ax, xs, xs.^(1/3), label=L"x^{1/3}")
	xlims!(0, 1)
	ylims!(0, 1)
	
	axislegend(ax, [[l1, s1], [l2, s2], [l3, s3], [l4, s4], [l5, s5], [l6, s6], [l7, s7]], [L"x", L"x^2", L"x^3", L"x^4", L"\ln(1+x)", L"x^{1/2}", L"x^{1/3}"], nbanks=2, position=:lt, margin=(4,0,0,-5), padding=(0,0,0,0))
	
	fig[1,1] = ax
	
	return fig
end

# ╔═╡ 628fac9a-f4ba-4da8-bbe8-7ebb8dc06164
myscatter()

# ╔═╡ 4b6b7880-a391-4661-911a-bb3e144824ef
fig_scatter = with_theme(myscatter, theme_acs())

# ╔═╡ 29faf34e-e1a1-443a-8cda-56ec25a910f8
savefig("test_scatter.pdf", fig_scatter)

# ╔═╡ 372077d2-e2d6-49db-b504-776afea5cef9
fig_scatter2 = with_theme(myscatter, theme_acs(cycle=Cycle([:color], covary=true)))

# ╔═╡ 1a2bf02e-170b-478c-8c33-8529a7832e2e
savefig("test_scatter2.pdf", fig_scatter2)

# ╔═╡ 7e89621b-f8c5-4726-91d7-c32b6ee568b3
fig_web = with_theme(myscatter, MakiePublication.theme_web())

# ╔═╡ Cell order:
# ╠═0da325a8-d6f6-4963-8562-9b7847878c07
# ╠═9e2e4de7-bf62-4bf9-b263-cb4781a5d46c
# ╠═44af131a-0904-4d36-b098-01823d6fb8a8
# ╠═30b0601e-63b9-4986-a311-9685560b55ef
# ╠═5b508e70-8921-407f-8e19-9cd2a3c22e80
# ╠═2d15b715-6441-4b7c-b751-599c0f5894a3
# ╠═b78fde28-81ed-4c31-a161-43ceef0d7c42
# ╠═6c1907e1-5298-438d-b6ef-9adb92d849f1
# ╠═628fac9a-f4ba-4da8-bbe8-7ebb8dc06164
# ╠═4b6b7880-a391-4661-911a-bb3e144824ef
# ╠═29faf34e-e1a1-443a-8cda-56ec25a910f8
# ╠═372077d2-e2d6-49db-b504-776afea5cef9
# ╠═1a2bf02e-170b-478c-8c33-8529a7832e2e
# ╠═7e89621b-f8c5-4726-91d7-c32b6ee568b3
