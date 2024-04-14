using Documenter
using Test
using MakiePublication
using SafeTestsets

doctest(MakiePublication)

@safetestset "Themes don't error" begin
    using CairoMakie
    using MakiePublication

    themes = [
        theme_acs,
        theme_acs_1col,
        theme_acs_2col,
        theme_aps,
        theme_aps_1col,
        theme_aps_2col,
        theme_jcap,
        theme_jhep,
        theme_rsc,
        theme_rsc_1col,
        theme_rsc_2col,
        theme_web
    ]

    for theme in themes
        with_theme(theme()) do
            lines(0..10, sin)
            lines!(0..10, cos)
            current_figure()
        end
    end
end
