"""
    theme_aps(width=3.375, colors=COLORS, markers=MARDERS, cycle=CYCLE)

Generate Makie theme for producing figures for APS (American Physical Society). Save the figure using `savefig("path_to_figure.pdf", fig)` or `save("path_to_figure.pdf", fig, pt_per_unit=1.0)`.
"""
function theme_aps(;
                   width=3.375,
                   colors=COLORS[1],
                   linestyles= LINESTYLES,
                   markers=MARKERS,
                   cycle=CYCLE,
                   )
    axis_theme = (
        xlabelsize=10,
        ylabelsize=10,
        spinewidth=1.1,
        xticklabelsize=8,
        yticklabelsize=8,
        # xgridstyle=:dash, ygridstyle=:dash,
        xgridvisible=false,
        ygridvisible=false,
        xtickalign=1,
        ytickalign=1,
        xticksize=5,
        yticksize=5,
        xtickwidth=0.8,
        ytickwidth=0.8,
        xminorticksvisible=true,
        yminorticksvisible=true,
        xminortickalign=1,
        yminortickalign=1,
        xminorticks=IntervalsBetween(5),
        yminorticks=IntervalsBetween(5),
        xminorticksize=3,
        yminorticksize=3,
        xminortickwidth=0.75,
        yminortickwidth=0.75,
        xlabelpadding=-2,
        ylabelpadding=2,
    )

    line_theme = (
        cycle=cycle,
        # linewidth=1.5,  # Makie default is 1.5
    )

    scatter_theme = (
        cycle=cycle,
        markersize=7,
    )

    legend_theme = (
        nbanks=1,
        framecolor=(:grey, 0.5),
        framevisible=false,
        labelsize=7.5,
        padding=(2, 2, 2, 2),
        margin=(0, 0, 0, 0),
        # position=:rt, # l=left, r=right, c=center; b=bottom, t=top, c=center
        rowgap=-10,
        colgap=4,
    )

    colors = isnothing(colors) ? COLORS : colors
    linestyles = isnothing(linestyles) ? LINESTYLES : linestyles
    markers = isnothing(colors) ? MARKERS : markers
    pal = (color=colors, linestyle=linestyles, marker=markers)

    return Theme(figure_padding=0,
                 resolution=figsize(width),
                 # font="Helvetica",
                 palette=pal,
                 Axis=axis_theme,
                 Lines=line_theme,
                 Scatter=scatter_theme,
                 Legend=legend_theme,)
end

theme_aps_1col(;
               colors=COLORS,
               markers=MARKERS,
               cycle=CYCLE,
    ) = theme_aps(width=3.375, colors=colors, markers=markers, cycle=cycle)

theme_aps_2col(;
               colors=COLORS,
               markers=MARKERS,
               cycle=CYCLE,
    ) = theme_aps(width=6.75, colors=colors, markers=markers, cycle=cycle)
