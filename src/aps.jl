"""
    theme_aps(; kwargs...)

Generate Makie theme for producing figures for APS (American Physical Society). The usage is the same as `theme_acs` except figure `width=3.375` which following the guideline of the APS publisher.

See also [`theme_acs`](@ref), [`theme_rsc`](@ref), and [`theme_web`](@ref).
"""
function theme_aps(; kwargs...)
    theme = theme_acs(; width=3.375, kwargs...)
    theme.Axis.xticksmirrored = get(kwargs, :xticksmirrored, true)
    theme.Axis.yticksmirrored = get(kwargs, :yticksmirrored, true)
    return theme
end

"One-column figure for APS, which is identical to [`theme_aps`](@ref)."
theme_aps_1col(; kwargs...) = theme_aps(; width=3.375, kwargs...)

"Two-column figure for APS."
theme_aps_2col(; kwargs...) = theme_aps(; width=6.75, kwargs...)
