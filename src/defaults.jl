@doc raw"""
    alpharize(alpha, colors)

Add a alpha value to RGB `colors` or modify the alpha channel value of RGBA `colors`.
"""
alpharize(a, colors) = RGBAf.(colors, a)

"Color palette: seaborn_deep"
seaborn_deep(alpha=1.0) = alpharize(alpha, ColorSchemes.seaborn_deep.colors)

"Color palette: seaborn_dark"
seaborn_dark(alpha=1.0) = alpharize(alpha, ColorSchemes.seaborn_dark.colors)

"Color palette: seaborn_bright"
seaborn_bright(alpha=1.0) = alpharize(alpha, ColorSchemes.seaborn_bright.colors)

"Color palette: seaborn_muted"
seaborn_muted(alpha=1.0) = alpharize(alpha, ColorSchemes.seaborn_muted.colors)

"Color palette: seaborn_colorblind"
seaborn_colorblind(alpha=1.0) = alpharize(alpha, ColorSchemes.seaborn_colorblind.colors)

"Color palette: tab10"
tab10(alpha=1.0) = alpharize(alpha, ColorSchemes.tab10.colors)

"Color palette: tableau_10"
tableau_10(alpha=1.0) = alpharize(alpha, ColorSchemes.tableau_10.colors[[1, 2, 5, 3, 7, 9, 8, 10, 6, 4]])

"Color palette: tableau_superfishel_stone"
tableau_superfishel_stone(alpha=1.0) = alpharize(alpha, ColorSchemes.tableau_superfishel_stone.colors[[1, 2, 5, 3, 7, 8, 10, 9, 6, 4]])

"Color palette: wong"
wong(alpha=1.0) = Makie.wong_colors(alpha)[[1, 2, 3, 6, 4, 5, 7]]

"Color palette: tol_bright"
tol_bright(alpha=1.0) = alpharize(alpha, ColorSchemes.tol_bright.colors[[3, 4, 2, 1, 6, 7, 5]])

"Color palette: okabe_ito"
okabe_ito(alpha=1.0) = alpharize(alpha, ColorSchemes.okabe_ito.colors[[5, 1, 3, 6, 7, 8, 4, 2]])

"Color palette: mk_8"
mk_8(alpha=1.0) = alpharize(alpha, ColorSchemes.mk_8.colors[[2, 7, 5, 6, 4, 3]])

"Color palette: dark2_8"
dark2_8(alpha=1.0) = alpharize(alpha, ColorSchemes.Dark2_8.colors[[1, 6, 5, 2, 3, 7, 4, 8]])

"Color palette: set1_8"
set1_8(alpha=1.0) = alpharize(alpha, ColorSchemes.Set1_8.colors[[2, 5, 3, 1, 4, 7, 8, 6]])

"Color palette: glasbey_hv_n256"
glasbey_hv_n256(alpha=1.0) = alpharize(alpha, ColorSchemes.glasbey_hv_n256.colors[[9, 3, 4, 8, 7, 2, 10, 5, 1, 6]])

"Color palette: savq_5, Ref: https://discourse.julialang.org/t/in-search-of-categorical-color-scheme-families-dark-same-perceptual-brightness/109560"
function savq_5(alpha=1.0)
    colors = [
        colorant"#d70071",
        colorant"#a26900",
        colorant"#00911c",
        colorant"#00859d",
        colorant"#7947ff"
    ]

    return alpharize(alpha, colors)
end

function savq_8(alpha=1.0)
    colors = [
        colorant"#d70071",
        colorant"#c14f00",
        colorant"#927300",
        colorant"#478b00",
        colorant"#008a79",
        colorant"#0083a7",
        colorant"#465fff",
        colorant"#b101e4"
    ]

    return alpharize(alpha, colors)
end

const COLORS = [seaborn_deep(),  # 10 colors
                tab10(),  # 10 colors
                tableau_10(),  # 10 colors
                wong(),  # 7 colors
                tol_bright(),  # 7 colors
                okabe_ito(),  # 8 colors
                mk_8(),  # 6 colors
                tableau_superfishel_stone(),  # 10 colors
                dark2_8(),  # 8 colors
                set1_8(),  # 8 colors
                glasbey_hv_n256(),  # 10 colors
                seaborn_dark(),  # 10 colors
                seaborn_muted(),  # 10 colors
                seaborn_bright(),  # 10 colors
                seaborn_colorblind(),  # 10 colors
                savq_5(),  # 5 colors
                savq_8(),  # 8 colors
                ]

const LINESTYLES = [nothing,  # solid line
                    :dash,
                    :dot,
                    :dashdot,
                    :dashdotdot
                    ]

const MARKERS = [:circle,
                 :rect,
                 :dtriangle,
                 :utriangle,
                 :cross,
                 :diamond,
                 :ltriangle,
                 :rtriangle,
                 :pentagon,
                 :xcross,
                 :hexagon
                 ]

const CYCLE = Cycle([:color, :marker], covary=true)

# = figure_height / figure_width
const HWRATIO = 0.68