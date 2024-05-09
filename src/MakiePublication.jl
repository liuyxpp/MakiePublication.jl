module MakiePublication

using Makie
using Colors
using ColorSchemes
using MathTeXEngine

include("defaults.jl")

include("utils.jl")
export
    figsize,
    savefig

include("themes.jl")
export
    theme_acs,
    theme_acs_1col,
    theme_acs_2col,
    theme_aps,
    theme_aps_1col,
    theme_aps_2col,
    theme_jcap,
    theme_jhep,
    theme_joss,
    theme_rsc,
    theme_rsc_1col,
    theme_rsc_2col,
    theme_web

end # module