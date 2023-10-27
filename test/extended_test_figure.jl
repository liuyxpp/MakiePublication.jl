using CairoMakie
set_theme!(CairoMakie=(pt_per_unit=1.0, px_per_unit=5.0))


f = with_theme(theme_aps_2col(heightwidthratio=0.5), figure_padding=4) do
    f = Figure()
    ax1 = PolarAxis(f[1:2, 1])
    ax2 = Axis(f[1, 2], ylabel="y position [m]", xlabel="x position [m]", autolimitaspect=1.0)
    ax3 = Axis(f[2, 2:3], ylabel=L"sqare of amplitude $\mathrm{sin}^2(t)$", xlabel="time [s]")
    ax4 = Axis(f[1:2, 4], ylabel="y position [m]", xlabel="x position [m]", autolimitaspect=1.0)

    for i in 1:3
        theta = 0:0.05:2π
        r = @. i * sin(i * theta)
        lines!(ax1, r, theta)
        scatterlines!(ax3, theta, r .^ 2)
    end
    rects = [Rect(x, y, 0.8, 0.5) for x in 1:5 for y in 1:3]

    p = poly!(ax2, rects, color=1:length(rects))
    cbar = Colorbar(f[1, 3], limits=(1, length(rects)), label="thickness")

    for r in rects
        poly!(ax4, r)
    end

    colsize!(f.layout, 1, Aspect(1, 1.9))
    f
end
savefig("extended_test_figure.svg", f)