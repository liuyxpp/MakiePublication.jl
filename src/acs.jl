"""
    theme_acs(width=3.25, colors=ColorSchemes.glasbey_hv_n256.colors)

    Makie theme for producing figures for ACS (American Chemical Society). Save the figure using `save("path_to_figure.pdf", fig, pt_per_unit=1.0)`.

"""
function theme_acs(width=3.25,
                   colors=ColorSchemes.glasbey_hv_n256.colors,
                   markers=nothing,
                   cycle=Cycle([:color, :marker], covary=true),
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
        rowgap=-10,
        colgap=4,
    )

    pal = isnothing(markers) ? (color=colors,) : (color=colors, marker=markers)

    return Theme(figure_padding=0,
                 resolution=figsize(width),
                 # font="Helvetica",
                 palette=pal,
                 Axis=axis_theme,
                 Scatter=scatter_theme,
                 Legend=legend_theme,)
end

theme_acs_1col(colors=ColorSchemes.glasbey_hv_n256.colors,
               markers=nothing,
               cycle=Cycle([:color, :marker], covary=true),
              ) = theme_acs(3.25, colors, markers, cycle)

theme_acs_2col(colors=ColorSchemes.glasbey_hv_n256.colors,
               markers=nothing,
               cycle=Cycle([:color, :marker], covary=true),
              ) = theme_acs(7.0, colors, markers, cycle)
