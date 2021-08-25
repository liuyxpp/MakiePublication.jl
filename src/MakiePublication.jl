module MakiePublication

using CairoMakie
using ColorSchemes

include("defaults.jl")

include("utils.jl")
export
    figsize,
    savefig

include("schemes.jl")
export
    theme_acs,
    theme_acs_1col,
    theme_acs_2col,
    theme_aps,
    theme_aps_1col,
    theme_aps_2col,
    theme_rsc,
    theme_rsc_1col,
    theme_rsc_2col,
    theme_web

end # module