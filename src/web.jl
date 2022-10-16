"""
    theme_web(width=600, colors=COLORS, markers=MARDERS, cycle=CYCLE)

Generate Makie theme for producing figures for web publishing. Save the figure using `save("path_to_figure.png", fig)`.
"""
function theme_web(;
                   width=600,
                   colors=COLORS[1],
                   linestyles=LINESTYLES,
                   markers=MARKERS,
                   cycle=CYCLE,
                   linecycle=nothing,
                   scattercycle=nothing,
                   markerstrokewidth=0,  # change to linewidth to make hollo markers.
                   )
    colors = isnothing(colors) ? COLORS : colors
    linestyles = isnothing(linestyles) ? LINESTYLES : linestyles
    markers = isnothing(colors) ? MARKERS : markers
    linecycle = isnothing(linecycle) ? cycle : linecycle
    scattercycle = isnothing(scattercycle) ? cycle : scattercycle

    axis_theme = (
        # xlabelsize=10,
        # ylabelsize=10,
        # spinewidth=1.1,
        # xticklabelsize=8,
        # yticklabelsize=8,
        # xgridstyle=:dash, ygridstyle=:dash,
        xgridvisible=false,
        ygridvisible=false,
        xtickalign=1,
        ytickalign=1,
        # xticksize=5,
        # yticksize=5,
        # xtickwidth=0.8,
        # ytickwidth=0.8,
        xminorticksvisible=true,
        yminorticksvisible=true,
        xminortickalign=1,
        yminortickalign=1,
        xminorticks=IntervalsBetween(5),
        yminorticks=IntervalsBetween(5),
        # xminorticksize=3,
        # yminorticksize=3,
        # xminortickwidth=0.75,
        # yminortickwidth=0.75,
        # xlabelpadding=-2,
        # ylabelpadding=2,
    )

    line_theme = (
        cycle=linecycle,
        # linewidth=1.5,  # Makie default is 1.5
    )

    scatter_theme = (
        cycle=scattercycle,
        # markersize=7,
        strokewidth=markerstrokewidth,
    )

    legend_theme = (
        nbanks=1,
        framecolor=(:grey, 0.5),
        framevisible=false,
        # labelsize=7.5,
        # padding=(2, 2, 2, 2),
        # margin=(0, 0, 0, 0),
        # position=:rt, # l=left, r=right, c=center; b=bottom, t=top, c=center
        # rowgap=-10,
        # colgap=4,
    )

    tcolors = deepcopy(colors)
    tcolors[2:2:end] .= one(eltype(wong(0)))
    tcolors = [tcolors..., tcolors..., tcolors...]
    pal = (color=colors, transparent=tcolors, linestyle=linestyles, marker=markers)

    return Theme(#figure_padding=0,
                 resolution=(width, width*HWRATIO),
                 # font="Helvetica",
                 palette=pal,
                 Axis=axis_theme,
                 Lines=line_theme,
                 Scatter=scatter_theme,
                 Legend=legend_theme,)
end

