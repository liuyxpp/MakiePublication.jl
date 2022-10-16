alpharize(a, colors) = @. RGBAf(red(colors), green(colors), blue(colors), a)

seaborn_deep(alpha=1.0) = alpharize(alpha, ColorSchemes.seaborn_deep.colors)
seaborn_dark(alpha=1.0) = alpharize(alpha, ColorSchemes.seaborn_dark.colors)
seaborn_bright(alpha=1.0) = alpharize(alpha, ColorSchemes.seaborn_bright.colors)
seaborn_muted(alpha=1.0) = alpharize(alpha, ColorSchemes.seaborn_muted.colors)
seaborn_colorblind(alpha=1.0) = alpharize(alpha, ColorSchemes.seaborn_colorblind.colors)

tab10(alpha=1.0) = alpharize(alpha, ColorSchemes.tab10.colors)

tableau_10(alpha=1.0) = alpharize(alpha, ColorSchemes.tableau_10.colors[[1, 2, 5, 3, 7, 9, 8, 10, 6, 4]])

tableau_superfishel_stone(alpha=1.0) = alpharize(alpha, ColorSchemes.tableau_superfishel_stone.colors[[1, 2, 5, 3, 7, 8, 10, 9, 6, 4]])

wong(alpha=1.0) = Makie.wong_colors(alpha)[[1, 2, 3, 6, 4, 5, 7]]

tol_bright(alpha=1.0) = alpharize(alpha, ColorSchemes.tol_bright.colors[[3, 4, 2, 1, 6, 7, 5]])

okabe_ito(alpha=1.0) = alpharize(alpha, ColorSchemes.okabe_ito.colors[[5, 1, 3, 6, 7, 8, 4, 2]])

mk_8(alpha=1.0) = alpharize(alpha, ColorSchemes.mk_8.colors[[2, 7, 5, 6, 4, 1, 8, 3]])

dark2_8(alpha=1.0) = alpharize(alpha, ColorSchemes.Dark2_8.colors[[1, 6, 5, 2, 3, 7, 4, 8]])

set1_8(alpha=1.0) = alpharize(alpha, ColorSchemes.Set1_8.colors[[2, 5, 3, 1, 4, 7, 8, 6]])

glasbey_hv_n256(alpha=1.0) = alpharize(alpha, ColorSchemes.glasbey_hv_n256.colors[[9, 3, 4, 8, 7, 2, 10, 5, 1, 6]])

const COLORS = [seaborn_deep(),  # 10 colors
                tab10(),  # 10 colors
                tableau_10(),  # 10 colors
                wong(),  # 7 colors
                tol_bright(),  # 7 colors
                okabe_ito(),  # 8 colors
                mk_8(),  # 8 colors
                tableau_superfishel_stone(),  # 10 colors
                dark2_8(),  # 8 colors
                set1_8(),  # 8 colors
                glasbey_hv_n256(),  # 10 colors
                seaborn_dark(),  # 10 colors
                seaborn_muted(),  # 10 colors
                seaborn_bright(),  # 10 colors
                seaborn_colorblind()  # 10 colors
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