"""
    theme_acs(; kwargs...)

Generate Makie theme for producing figures for ACS (American Chemical Society).

Save the figure using `savefig("path_to_figure.pdf", fig)` or `save("path_to_figure.pdf", fig, pt_per_unit=1.0)`.
"""
function theme_acs(;
                   width=3.25,
                   colors=COLORS[1],
                   linestyles=LINESTYLES,
                   markers=MARKERS,
                   ishollowmarkers=nothing,  # a list of true, false values.
                   palette=nothing,
                   cycle=CYCLE,
                   linecycle=nothing,
                   scattercycle=nothing,
                   markerstrokewidth=0,  # change to linewidth to make hollo markers.
                   )
    colors = isnothing(colors) ? COLORS : colors
    n = length(colors)
    # if no hollow markers specified, the length is 1, and its value is false.
    m = isnothing(ishollowmarkers) ? 1 : length(ishollowmarkers)
    linestyles = isnothing(linestyles) ? LINESTYLES : linestyles
    markers = isnothing(colors) ? MARKERS : markers
    # full cycle is of length n * m
    ishollowmarkers_org = isnothing(ishollowmarkers) ? [false] : ishollowmarkers
    ishollowmarkers = repeat(ishollowmarkers_org, n)
    linecycle = isnothing(linecycle) ? cycle : linecycle
    scattercycle = isnothing(scattercycle) ? cycle : scattercycle
    # covary for hollow markers with color
    covary = scattercycle isa Cycle ? scattercycle.covary : false
    markercolors = repeat(colors, m)
    transparent = RGBAf(1.0, 1.0, 1.0, 0.0)
    # Making hollow markers by setting the marker face color to transparent
    if covary
        for i in eachindex(markercolors)
            ishollowmarkers[i] && (markercolors[i] = transparent)
        end
    else
        N = 0
        for ishollow in ishollowmarkers_org
            for i in 1:n
                ishollow && (markercolors[i+N] = transparent)
            end
            N += n
        end
    end
    # if has hollow markers, ensure markerstrokewidth > 0 by using a default value 1.0 which is 2/3 of the defautl Makie linewidth to make sure the hollow is visible.
    # if user change the linewidth, he/she must change the markerstrokewidth accordingly by supplying the keyword argument.
    hashollow = sum(ishollowmarkers) > 0
    if hashollow  # has hollow markers
        # this will override the default markerstrokewidth, even it is 0.
        markerstrokewidth = markerstrokewidth > 0 ? markerstrokewidth : 1.0
    else
        markerstrokewidth = 0
    end
    # Adjust marker size according to whether has hollow markers
    markersize = hashollow ? 7 - markerstrokewidth : 7

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
        cycle=linecycle,
        # linewidth=1.5,  # Makie default is 1.5
    )

    scatter_theme = (
        cycle=scattercycle,
        markersize=markersize,
        strokewidth=markerstrokewidth,
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

    pal = (color=colors,
           markercolor=markercolors,
           linestyle=linestyles,
           marker=markers,
           )
    palette = isnothing(palette) ? pal : palette

    return Theme(figure_padding=0,
                 resolution=figsize(width),
                 # font="Helvetica",
                 palette=palette,
                 Axis=axis_theme,
                 Lines=line_theme,
                 Scatter=scatter_theme,
                 Legend=legend_theme,)
end

theme_acs_1col(; kwargs...) = theme_acs(width=3.25, kwargs...)

theme_acs_2col(; kwargs...) = theme_acs(width=7.0, kwargs...)
