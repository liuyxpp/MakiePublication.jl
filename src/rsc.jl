"""
    theme_rsc(; kwargs...)

Generate Makie theme for producing figures for RSC (Royal Society of Chemistry). The usage is the same as [`theme_acs`](@ref) except figure `width=3.26` which following the guideline of the RSC publisher.

See also [`theme_acs`](@ref), [`theme_aps`](@ref), and [`theme_web`](@ref).
"""
theme_rsc(; kwargs...) = theme_acs(; width=3.26, kwargs...)

"One-column figure for RSC, which is identical to [`theme_rsc`](@ref)."
theme_rsc_1col(; kwargs...) = theme_rsc(; kwargs...)

"Two-column figure for RSC."
theme_rsc_2col(; kwargs...) = theme_rsc(; width=6.73, kwargs...)
