"""
    theme_rsc(; kwargs...)

Generate Makie theme for producing figures for RSC (Royal Society of Chemistry). It is essentially the same as `theme_acs` except figure `width` which following the guideline of the RSC publisher.

Save the figure using `savefig("path_to_figure.pdf", fig)` or `save("path_to_figure.pdf", fig, pt_per_unit=1.0)`.
"""
theme_rsc(; kwargs...) = theme_acs(; width=3.26, kwargs...)

theme_rsc_1col(; kwargs...) = theme_rsc(; width=3.26, kwargs...)

theme_rsc_2col(; kwargs...) = theme_rsc(; width=6.73, kwargs...)
