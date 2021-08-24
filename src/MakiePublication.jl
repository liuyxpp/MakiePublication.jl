module MakiePublication

using CairoMakie
using ColorSchemes

include("utils.jl")
export
    figsize
    savefig

include("schemes.jl")
export
    theme_acs,
    theme_acs_1col,
    theme_acs_2col

end # module