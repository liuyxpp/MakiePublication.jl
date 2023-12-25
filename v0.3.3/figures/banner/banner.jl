# This script has been used to produce figures presented in README.md.

using CairoMakie
using MakiePublication
MP = MakiePublication

function myplot()
	x = 0:0.001:1.0
	xs = 0:0.08:1.0
	fig = Figure(figure_padding=(2, 6, 1, 6))
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
		[L"x^{5/8}", L"x^{3/4}", L"x", L"x^{5/4}", L"x^{3/2}", L"x^2", L"x^3", L"x^4", L"x^6", L"x^8"], nbanks=3, position=:lt, margin=(5,0,0,0), padding=(0,0,0,0))
	
	fig[1,1] = ax
	
	return fig
end

lc = Cycle([:color, :linestyle], covary=true)
sc = Cycle([:color=>:markercolor, :strokecolor=>:color, :marker], covary=true)
fig = with_theme(myplot, theme_acs(linecycle=lc, scattercycle=sc, linestyles=[nothing, :dash], ishollowmarkers=[false, true]));
savefig("acs.eps", fig)
savefig("acs.svg", fig)