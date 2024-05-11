# User Manual

## Makie Themes

MakiePublication provides various Makie themes suitable for creating publication quality figures and 1 theme for web presentation.

```@docs
theme_acs
theme_acs_1col
theme_acs_2col
theme_aps
theme_aps_1col
theme_aps_2col
theme_jcap
theme_jhep
theme_joss
theme_rsc
theme_rsc_1col
theme_rsc_2col
theme_web
```

## Built-in Color Palettes

MakiePublication provides 15 built-in color palettes which are adopt from well-known quality color schemes. 14 of them are from the quality color schemes in the ColorSchemes.jl package with the same name. `wong` is from the Makie default. The order of colors in some of these color palettes has been adjusted to have a consistent manner with the `seaborn_deep` color palette.

### Methods for creating color palettes

```@docs
MakiePublication.seaborn_deep
MakiePublication.seaborn_dark
MakiePublication.seaborn_bright
MakiePublication.seaborn_muted
MakiePublication.seaborn_colorblind
MakiePublication.tab10
MakiePublication.tableau_10
MakiePublication.tableau_superfishel_stone
MakiePublication.wong
MakiePublication.tol_bright
MakiePublication.okabe_ito
MakiePublication.mk_8
MakiePublication.dark2_8
MakiePublication.set1_8
MakiePublication.glasbey_hv_n256
```

### `COLORS`

The order is following how strongly we recommend the corresponding color palette.

```julia
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
```

## Default Line Styles



```julia
const LINESTYLES = [nothing,  # solid line
                    :dash,
                    :dot,
                    :dashdot,
                    :dashdotdot
                    ]
```

## Default Marker Types

```julia
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
```

## Default Cycler

The default cycler, which is a `Makie.Cycle` object, is used by both `Line` and `Scatter` plots.

```julia
const CYCLE = Cycle([:color, :marker], covary=true)
```

## Default Image Height/Width Ratio

```julia
const HWRATIO = 0.68  # = figure_height / figure_width
```

## Utility Methods

```@docs
MakiePublication.alpharize
figsize
savefig
```