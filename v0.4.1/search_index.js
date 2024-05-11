var documenterSearchIndex = {"docs":
[{"location":"quickstart/#Quick-Start","page":"Quick Start","title":"Quick Start","text":"","category":"section"},{"location":"quickstart/","page":"Quick Start","title":"Quick Start","text":"MakiePublication provides a number of theme_* methods to generate themes (Makie.Theme instances) which can be given to Makie's theming methods: set_theme!, update_theme!, and with_theme. A typical usage pattern is","category":"page"},{"location":"quickstart/","page":"Quick Start","title":"Quick Start","text":"using MakiePublication\nusing CairoMakie\n\nwith_theme(theme_web()) do\n    lines(0..10, sin)\n    lines!(0..10, cos)\n    current_figure()\nend","category":"page"},{"location":"quickstart/","page":"Quick Start","title":"Quick Start","text":"Or if you have a more complicated plotting function,","category":"page"},{"location":"quickstart/","page":"Quick Start","title":"Quick Start","text":"function myplot()\n    fig = Figure(figure_padding=(2, 6, 1, 6))\n    ax = Axis(fig, xlabel=L\"x\", ylabel=L\"f(x)\")\n    lines!(ax, 0..10, sin)\n    lines!(ax, 0..10, cos)\n\n    fig[1,1] = ax\n    fig\nend\n\nwith_theme(myplot, theme_web())","category":"page"},{"location":"manual/#User-Manual","page":"User Manual","title":"User Manual","text":"","category":"section"},{"location":"manual/#Makie-Themes","page":"User Manual","title":"Makie Themes","text":"","category":"section"},{"location":"manual/","page":"User Manual","title":"User Manual","text":"MakiePublication provides various Makie themes suitable for creating publication quality figures and 1 theme for web presentation.","category":"page"},{"location":"manual/","page":"User Manual","title":"User Manual","text":"theme_acs\ntheme_acs_1col\ntheme_acs_2col\ntheme_aps\ntheme_aps_1col\ntheme_aps_2col\ntheme_jcap\ntheme_jhep\ntheme_joss\ntheme_rsc\ntheme_rsc_1col\ntheme_rsc_2col\ntheme_web","category":"page"},{"location":"manual/#MakiePublication.theme_acs","page":"User Manual","title":"MakiePublication.theme_acs","text":"theme_acs(; kwargs...)\n\nGenerate Makie theme for producing figures for ACS (American Chemical Society).\n\nSave the figure using savefig(\"path_to_figure.pdf\", fig) or save(\"path_to_figure.pdf\", fig, pt_per_unit=1.0).\n\nAuguments\n\nwidth=3.25: width of figure in unit of inches.\ncolors=COLORS[1]: color palette specified by a list of colors.\nlinestyles=LINESTYLES: a list of line styles to be cycled.\nmarkers=MARKERS: a list of markers to be cycled.\nishollowmarkers: a list of true or false values, which indicates whether the current marker is hollow.\npalette=nothing: a palette to be used by Makie. It is a NamedTuple when it is not nothing. Example: (color=COLORS[1], marker=MARKERS). It is key will be referenced by cycle, linecycle and scattercycle.\ncycle=CYCLE: a Makie Cycle instance tell how Makie will cycle figure properties.\nlinecycle=nothing: Cycle instance used by Line plots. If it is nothing, then cycle value will be used instead.\nscattercycle=nothing: Cycle instance used by Scatter plots. If it is nothing, then cycle value will be used instead.\nmarkerstrokewidth=0: customize the stroke width of markers.\nheightwidthratio=HWRATIO: set the aspect ratio of the figure as a multiple of width.\nusetexfont=true: set if Makie should use the ComputerModern font provided by MathTexEngine.jl.\n\nSee also theme_aps, theme_rsc, and theme_web.\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.theme_acs_1col","page":"User Manual","title":"MakiePublication.theme_acs_1col","text":"One-column figure for ACS, which is identical to theme_acs.\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.theme_acs_2col","page":"User Manual","title":"MakiePublication.theme_acs_2col","text":"Two-column figure for ACS.\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.theme_aps","page":"User Manual","title":"MakiePublication.theme_aps","text":"theme_aps(; kwargs...)\n\nGenerate Makie theme for producing figures for APS (American Physical Society). The usage is the same as theme_acs except figure width=3.375 which following the guideline of the APS publisher.\n\nSee also theme_acs, theme_rsc, and theme_web.\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.theme_aps_1col","page":"User Manual","title":"MakiePublication.theme_aps_1col","text":"One-column figure for APS, which is identical to theme_aps.\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.theme_aps_2col","page":"User Manual","title":"MakiePublication.theme_aps_2col","text":"Two-column figure for APS.\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.theme_jcap","page":"User Manual","title":"MakiePublication.theme_jcap","text":"theme_jcap(; kwargs...)\n\nGenerate Makie theme for producing figures for JCAP (Journal of Cosmology and Astroparticle Physics).\n\nThe usage is the same as theme_acs except figure width=6.08948. The value of width is obtained from \\uselengthunit{in}\\printlength{\\linewidth} and corresponds to 440pt.\n\nJCAP is single column, so theme_jcap_1col and theme_jcap_2col are not defined.\n\nSee also theme_acs, theme_aps, theme_jhep, theme_rsc, and theme_web.\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.theme_jhep","page":"User Manual","title":"MakiePublication.theme_jhep","text":"theme_jhep(; kwargs...)\n\nGenerate Makie theme for producing figures for JHEP (Journal of High Energy Physics).\n\nThe usage is the same as theme_acs except figure width=5.95393. The value of width is obtained from \\uselengthunit{in}\\printlength{\\linewidth}.\n\nJHEP is single column, so theme_jhep_1col and theme_jhep_2col are not defined.\n\nSee also theme_acs, theme_aps, theme_jcap, theme_rsc, and theme_web.\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.theme_joss","page":"User Manual","title":"MakiePublication.theme_joss","text":"theme_joss(; kwargs...)\n\nGenerate Makie theme for producing figures for JOSS (The Journal of Open Source Software).\n\nThe usage is the same as theme_acs except figure width=5.36066. The value of width is obtained from \\uselengthunit{in}\\printlength{\\linewidth}.\n\nJOSS is single column, so theme_joss_1col and theme_joss_2col are not defined.\n\nSee also theme_acs, theme_aps, theme_jcap, theme_rsc, and theme_web.\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.theme_rsc","page":"User Manual","title":"MakiePublication.theme_rsc","text":"theme_rsc(; kwargs...)\n\nGenerate Makie theme for producing figures for RSC (Royal Society of Chemistry). The usage is the same as theme_acs except figure width=3.26 which following the guideline of the RSC publisher.\n\nSee also theme_acs, theme_aps, and theme_web.\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.theme_rsc_1col","page":"User Manual","title":"MakiePublication.theme_rsc_1col","text":"One-column figure for RSC, which is identical to theme_rsc.\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.theme_rsc_2col","page":"User Manual","title":"MakiePublication.theme_rsc_2col","text":"Two-column figure for RSC.\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.theme_web","page":"User Manual","title":"MakiePublication.theme_web","text":"theme_web(width=600, colors=COLORS, markers=MARDERS, cycle=CYCLE)\n\nGenerate Makie theme for producing figures for web publishing. The usage is the same as theme_acs except figure width which following the guideline of the Makie default.\n\nSee also theme_acs, theme_aps, and theme_rsc.\n\n\n\n\n\n","category":"function"},{"location":"manual/#Built-in-Color-Palettes","page":"User Manual","title":"Built-in Color Palettes","text":"","category":"section"},{"location":"manual/","page":"User Manual","title":"User Manual","text":"MakiePublication provides 15 built-in color palettes which are adopt from well-known quality color schemes. 14 of them are from the quality color schemes in the ColorSchemes.jl package with the same name. wong is from the Makie default. The order of colors in some of these color palettes has been adjusted to have a consistent manner with the seaborn_deep color palette.","category":"page"},{"location":"manual/#Methods-for-creating-color-palettes","page":"User Manual","title":"Methods for creating color palettes","text":"","category":"section"},{"location":"manual/","page":"User Manual","title":"User Manual","text":"MakiePublication.seaborn_deep\nMakiePublication.seaborn_dark\nMakiePublication.seaborn_bright\nMakiePublication.seaborn_muted\nMakiePublication.seaborn_colorblind\nMakiePublication.tab10\nMakiePublication.tableau_10\nMakiePublication.tableau_superfishel_stone\nMakiePublication.wong\nMakiePublication.tol_bright\nMakiePublication.okabe_ito\nMakiePublication.mk_8\nMakiePublication.dark2_8\nMakiePublication.set1_8\nMakiePublication.glasbey_hv_n256","category":"page"},{"location":"manual/#MakiePublication.seaborn_deep","page":"User Manual","title":"MakiePublication.seaborn_deep","text":"Color palette: seaborn_deep\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.seaborn_dark","page":"User Manual","title":"MakiePublication.seaborn_dark","text":"Color palette: seaborn_dark\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.seaborn_bright","page":"User Manual","title":"MakiePublication.seaborn_bright","text":"Color palette: seaborn_bright\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.seaborn_muted","page":"User Manual","title":"MakiePublication.seaborn_muted","text":"Color palette: seaborn_muted\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.seaborn_colorblind","page":"User Manual","title":"MakiePublication.seaborn_colorblind","text":"Color palette: seaborn_colorblind\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.tab10","page":"User Manual","title":"MakiePublication.tab10","text":"Color palette: tab10\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.tableau_10","page":"User Manual","title":"MakiePublication.tableau_10","text":"Color palette: tableau_10\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.tableau_superfishel_stone","page":"User Manual","title":"MakiePublication.tableau_superfishel_stone","text":"Color palette: tableausuperfishelstone\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.wong","page":"User Manual","title":"MakiePublication.wong","text":"Color palette: wong\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.tol_bright","page":"User Manual","title":"MakiePublication.tol_bright","text":"Color palette: tol_bright\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.okabe_ito","page":"User Manual","title":"MakiePublication.okabe_ito","text":"Color palette: okabe_ito\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.mk_8","page":"User Manual","title":"MakiePublication.mk_8","text":"Color palette: mk_8\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.dark2_8","page":"User Manual","title":"MakiePublication.dark2_8","text":"Color palette: dark2_8\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.set1_8","page":"User Manual","title":"MakiePublication.set1_8","text":"Color palette: set1_8\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.glasbey_hv_n256","page":"User Manual","title":"MakiePublication.glasbey_hv_n256","text":"Color palette: glasbeyhvn256\n\n\n\n\n\n","category":"function"},{"location":"manual/#COLORS","page":"User Manual","title":"COLORS","text":"","category":"section"},{"location":"manual/","page":"User Manual","title":"User Manual","text":"The order is following how strongly we recommend the corresponding color palette.","category":"page"},{"location":"manual/","page":"User Manual","title":"User Manual","text":"const COLORS = [seaborn_deep(),  # 10 colors\n                tab10(),  # 10 colors\n                tableau_10(),  # 10 colors\n                wong(),  # 7 colors\n                tol_bright(),  # 7 colors\n                okabe_ito(),  # 8 colors\n                mk_8(),  # 8 colors\n                tableau_superfishel_stone(),  # 10 colors\n                dark2_8(),  # 8 colors\n                set1_8(),  # 8 colors\n                glasbey_hv_n256(),  # 10 colors\n                seaborn_dark(),  # 10 colors\n                seaborn_muted(),  # 10 colors\n                seaborn_bright(),  # 10 colors\n                seaborn_colorblind()  # 10 colors\n                ]","category":"page"},{"location":"manual/#Default-Line-Styles","page":"User Manual","title":"Default Line Styles","text":"","category":"section"},{"location":"manual/","page":"User Manual","title":"User Manual","text":"const LINESTYLES = [nothing,  # solid line\n                    :dash,\n                    :dot,\n                    :dashdot,\n                    :dashdotdot\n                    ]","category":"page"},{"location":"manual/#Default-Marker-Types","page":"User Manual","title":"Default Marker Types","text":"","category":"section"},{"location":"manual/","page":"User Manual","title":"User Manual","text":"const MARKERS = [:circle,\n                 :rect,\n                 :dtriangle,\n                 :utriangle,\n                 :cross,\n                 :diamond,\n                 :ltriangle,\n                 :rtriangle,\n                 :pentagon,\n                 :xcross,\n                 :hexagon\n                 ]","category":"page"},{"location":"manual/#Default-Cycler","page":"User Manual","title":"Default Cycler","text":"","category":"section"},{"location":"manual/","page":"User Manual","title":"User Manual","text":"The default cycler, which is a Makie.Cycle object, is used by both Line and Scatter plots.","category":"page"},{"location":"manual/","page":"User Manual","title":"User Manual","text":"const CYCLE = Cycle([:color, :marker], covary=true)","category":"page"},{"location":"manual/#Default-Image-Height/Width-Ratio","page":"User Manual","title":"Default Image Height/Width Ratio","text":"","category":"section"},{"location":"manual/","page":"User Manual","title":"User Manual","text":"const HWRATIO = 0.68  # = figure_height / figure_width","category":"page"},{"location":"manual/#Utility-Methods","page":"User Manual","title":"Utility Methods","text":"","category":"section"},{"location":"manual/","page":"User Manual","title":"User Manual","text":"MakiePublication.alpharize\nfigsize\nsavefig","category":"page"},{"location":"manual/#MakiePublication.alpharize","page":"User Manual","title":"MakiePublication.alpharize","text":"alpharize(alpha, colors)\n\nAdd a alpha value to RGB colors or modify the alpha channel value of RGBA colors.\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.figsize","page":"User Manual","title":"MakiePublication.figsize","text":"figsize(width_in_inch, height_width_ratio=0.68)\n\nConvert figure size in inches (which is often required by publishers) to that in points (which is the unit for CairoMakie).\n\nNote that 1 point in CairoMakie is equal to 1/72 inch.\n\n\n\n\n\n","category":"function"},{"location":"manual/#MakiePublication.savefig","page":"User Manual","title":"MakiePublication.savefig","text":"savefig(f, fig, pt_per_unit=1)\n\nSave the Figure instance fig as an image file. f is the path to the image file, like /path/to/figure.svg. Many image format are supported. The most common ones are: svg, pdf, eps, and png.\n\n\n\n\n\n","category":"function"},{"location":"tutorial/#Tutorial","page":"Tutorial","title":"Tutorial","text":"","category":"section"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"The tutorial as a Pluto notebook is available here","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"To use MakiePublication, we need to import it together with the CairoMakie.jl package. MakiePublication use CairoMakie since it aims to produce figures for journal publishing which often requires vector graphics in the formats of PDF, EPS, and SVG.","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"using MakiePublication\nusing CairoMakie","category":"page"},{"location":"tutorial/#Simple-Plots","page":"Tutorial","title":"Simple Plots","text":"","category":"section"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"For simple plots, we can use with_theme block:","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"with_theme(theme_web()) do\n    lines(0..10, sin)\n    lines!(0..10, cos)\n    current_figure()\nend","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"The output figure is:","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"(Image: simple plot with MakiePublication default theme)","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"As compared to the Makie default theme:","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"(Image: simple plot with Makie default theme)","category":"page"},{"location":"tutorial/#Complicated-Plots","page":"Tutorial","title":"Complicated Plots","text":"","category":"section"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"with_theme can be also called with a plotting function. The following plotting function demonstrates how to:","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"plot fitted lines and data points together\ndraw a legend at desired location and its padding, columns.\ntune the padding of a figure with respect to canvas\ntune axis limits","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"# web theme: figure_padding=(2, 16, 2, 8), legend_margin=((15,0,0,10)\n# other themes: figure_padding=(2, 6, 1, 6), legend_margin=((5,0,0,0)\nfunction myplot(; figure_padding=(2,6,1,6), legend_margin=((5,0,0,0)))\n    x = 0:0.001:1.0\n    xs = 0:0.08:1.0\n    fig = Figure(figure_padding=figure_padding)\n    ax = Axis(fig, xlabel=L\"x\", ylabel=L\"f(x)\")\n\n    l1 = lines!(ax, x, x.^(5/8), label=L\"x^{5/8}\")\n    s1 = scatter!(ax, xs, xs.^(5/8))\n    l2 = lines!(ax, x, x.^(3/4), label=L\"x^{3/4}\")\n    s2 = scatter!(ax, xs, xs.^(3/4))\n    l3 = lines!(ax, x, x, label=L\"x\")\n    s3 = scatter!(ax, xs, xs)\n    l4 = lines!(ax, x, x.^(5/4), label=L\"x^{5/4}\")\n    s4 = scatter!(ax, xs, xs.^(5/4))\n    l5 = lines!(ax, x, x.^(3/2), label=L\"x^{3/2}\")\n    s5 = scatter!(ax, xs, xs.^(3/2))\n    l6 = lines!(ax, x, x.^2, label=L\"x^2\")\n    s6 = scatter!(ax, xs, xs.^2)\n    l7 = lines!(ax, x, x.^3, label=L\"x^3\")\n    s7 = scatter!(ax, xs, xs.^3)\n    l8 = lines!(ax, x, x.^4, label=L\"x^4\")\n    s8 = scatter!(ax, xs, xs.^4)\n    l9 = lines!(ax, x, x.^6, label=L\"x^6\")\n    s9 = scatter!(ax, xs, xs.^6)\n    l10 = lines!(ax, x, x.^8, label=L\"x^8\")\n    s10 = scatter!(ax, xs, xs.^8)\n\n    xlims!(0, 1)\n    ylims!(0, 1)\n\n    axislegend(ax, [[l1, s1], [l2, s2], [l3, s3], [l4, s4], [l5, s5], [l6, s6], [l7, s7], [l8, s8], [l9, s9], [l10, s10]],\n        [L\"x^{5/8}\", L\"x^{3/4}\", L\"x\", L\"x^{5/4}\", L\"x^{3/2}\", L\"x^2\", L\"x^3\", L\"x^4\", L\"x^6\", L\"x^8\"], nbanks=3, position=:lt, margin=legend_margin, padding=(0,0,0,0))\n    \n    fig[1,1] = ax\n    \n    return fig\nend\n\nmyplot_web() = myplot(figure_padding=(2, 16, 2, 8), legend_margin=(15,0,0,10))","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Applying CairoMakie default theme with following code","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"myplot_web()","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"which produces","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"(Image: complicated plot with Makie default theme)","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Theming it by MakiePublication web theme with following code","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"with_theme(myplot_web, theme_web())","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"which produces","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"(Image: complicated plot with MakiePublication web theme)","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Notable changes are:","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Resolution and figure aspect ratio\nColor palette from Makie.wong_colors to seaborn_deep\nFrameless figure legend\nVisible minor ticks\nMarker size\nSpine width\nLabel font size","category":"page"},{"location":"tutorial/#Color-Palettes","page":"Tutorial","title":"Color Palettes","text":"","category":"section"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"MakiePublication has 15 built-in color palettes. We can choose a color palette from the array MakiePublication.COLORS and use it like this:","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"with_theme(myplot_web, theme_web(colors=MakiePublication.COLORS[5]))","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Note we arrange the order of the color palettes in COLORS by how strongly we recommend it. The first is the most recommended color palette which is the MakiePublication default, i.e. seaborn_deep.","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Or obtain the color palette by calling a function:","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"with_theme(myplot_web, theme_web(colors=MakiePublication.tol_bright()))","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"The resulted figure is","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"(Image: Choose color palette)","category":"page"},{"location":"tutorial/#Line-Styles","page":"Tutorial","title":"Line Styles","text":"","category":"section"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"By default, the line styles are given by MakiePublication.LINESTYLES. You can overwrite it with linestyles keyword of theme_* methods.","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Moreover, the default cycle for Line plots does not cycle line styles. To cycle line styles, you have to pass a proper cycle using either cycle or linecycle keyword argument. See the example below:","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"lc = Cycle([:color, :linestyle], covary=true)\n# Only solid and dashed line styles are cycled.\nwith_theme(myplot_web, theme_web(linecycle=lc, linestyles=[nothing, :dash]))","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"which produces","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"(Image: Choose line styles)","category":"page"},{"location":"tutorial/#Markers","page":"Tutorial","title":"Markers","text":"","category":"section"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"By default, the markers are given by MakiePublication.MARKERS. You can overwrite it with markers keyword of theme_* methods.","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"# Only circle and diamond markers are cycled.\nwith_theme(myplot_web, theme_web(markers=[:circle, :diamond]))","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"which produces","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"(Image: Choose marker types)","category":"page"},{"location":"tutorial/#Hollow-Markers","page":"Tutorial","title":"Hollow Markers","text":"","category":"section"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"MakiePublicaion supports drawing hollow markers by using transparent color for marker face and drawing strokes only.","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"To draw hollow markers, we have to explicitly define a marker cycle including both :color=>:markercolor and :strokecolor=>:color, e.g.","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Cycle([:color=>:markercolor, :strokecolor=>:color])","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Moreover, we have to define a list of true or false values which indicates the ordering of whether the marker is hollow, and pass it to the ishollowmarkers keyword argument. For example,","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"[false, true]","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"It will make every second marker hollow.","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"You can also change the stroke width by passing the value to the makerstrokewidth keyword argument.","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"A full example is:","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"sc = Cycle([:color=>:markercolor, :strokecolor=>:color], covary=true)\nwith_theme(myplot_web, theme_web(scattercycle=sc, ishollowmarkers=[false, true], markerstrokewidth=1.5))","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"which produces","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"(Image: Create hollo markers)","category":"page"},{"location":"tutorial/#Cyclers","page":"Tutorial","title":"Cyclers","text":"","category":"section"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Cycler is extremely powerful. Using it properly can produce very complicated figures. See the example below:","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"lc = Cycle([:color, :linestyle], covary=true)\nsc = Cycle([:color=>:markercolor, :strokecolor=>:color, :marker], covary=true)\nwith_theme(myplot_web,\ntheme_web(\n    colors=MakiePublication.tableau_10(),\n    linestyles=[nothing, :dash, :dash],\n    ishollowmarkers=[false, true, false],\n    markers=[:circle, :diamond, :rtriangle],\n    linecycle=lc,\n    scattercycle=sc,\n    markerstrokewidth=1.5)\n)","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"which produces","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"(Image: Demonstrate how to use cyclers)","category":"page"},{"location":"tutorial/#Saving-A-Figure-As-An-Image-File","page":"Tutorial","title":"Saving A Figure As An Image File","text":"","category":"section"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"There are two ways to save a figure as an image file.","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Use savefig. Provide a file path with desired extension, such as pdf, eps, svg, png, etc., such as","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"fig = with_theme(myplot, theme_acs())\nsavefig(\"plot.svg\", fig)","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"For web display, we recommend use svg format for the image file.","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"Use save. The image size can be further customized with keyword px_per_unit, whose default value is 1. Increasing it will increase the resolution as well as the image size.","category":"page"},{"location":"tutorial/","page":"Tutorial","title":"Tutorial","text":"fig_web = with_theme(myplot_web, theme_web())\nsave(\"plot_web.png\", fig_web, px_per_unit=4)","category":"page"},{"location":"#MakiePublication.jl","page":"Home","title":"MakiePublication.jl","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"(Image: APS)","category":"page"},{"location":"","page":"Home","title":"Home","text":"MakiePublication.jl is a Julia package for producing publication quality figures based on Makie.jl. It aims to provide equivalent functionalities as the Python package mpltex.","category":"page"},{"location":"#Features","page":"Home","title":"Features","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Provide a collection of custom themes for journal publishers (ACS, APS, RSC) and some individual journals (JCAP, JHEP).\nCustom theme for making figures suitable for web pages.\n15 color palettes based on well-known quality color schemes with special tweaked ordering for scientific publishing. (since v0.3.0)\nSupport hollow markers. (since v0.3.1)","category":"page"},{"location":"#Installation","page":"Home","title":"Installation","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"MakiePublication can be installed from the Julia REPL.","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia> # Press the key \"]\"\n\n(@v1.8) pkg> add MakiePublication","category":"page"},{"location":"#Showcase-of-Themes","page":"Home","title":"Showcase of Themes","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Note that all MakiePublication themes (except theme_web) are essentially the same except the physical size of the figure. Hence following figures only different in the image sizes.","category":"page"},{"location":"","page":"Home","title":"Home","text":"theme_acs for American Chemical Society (ACS)","category":"page"},{"location":"","page":"Home","title":"Home","text":"(Image: ACS theme)","category":"page"},{"location":"","page":"Home","title":"Home","text":"theme_aps for American Physical Society (APS) and American Institute of Physics (AIP)","category":"page"},{"location":"","page":"Home","title":"Home","text":"(Image: APS theme)","category":"page"},{"location":"","page":"Home","title":"Home","text":"theme_rsc for Royal Society of Chemistry (RSC)","category":"page"},{"location":"","page":"Home","title":"Home","text":"(Image: RSC theme)","category":"page"},{"location":"","page":"Home","title":"Home","text":"theme_web for web presentation.","category":"page"},{"location":"","page":"Home","title":"Home","text":"(Image: Web theme)","category":"page"},{"location":"#Contribute","page":"Home","title":"Contribute","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Star the package on github.com.\nFile an issue or make a pull request on github.com.\nPull requests of new schemes for other publishers and journals are highly appreciated.\nContact the author via email <lyx@fudan.edu.cn>.","category":"page"}]
}
