"""
    theme_aps(; kwargs...)

Generate Makie theme for producing figures for APS (American Physical Society). It is essentially the same as `theme_acs` except figure `width` which following the guideline of the APS publisher.

Save the figure using `savefig("path_to_figure.pdf", fig)` or `save("path_to_figure.pdf", fig, pt_per_unit=1.0)`.
"""
theme_aps(; kwargs...) = theme_acs(; width=3.375, kwargs...)

theme_aps_1col(; kwargs...) = theme_rsc(; width=3.375, kwargs...)

theme_aps_2col(; kwargs...) = theme_rsc(; width=6.75, kwargs...)
