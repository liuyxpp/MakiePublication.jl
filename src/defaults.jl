# Good candidates: tab10 (glasbey_category10_n256), tableau_10, seaborn_colorblind
const COLORS = ColorSchemes.glasbey_hv_n256.colors

const MARKERS = [:circle, :rect, :dtriangle, :utriangle, :cross, :diamond, :ltriangle, :rtriangle, :pentagon, :xcross, :hexagon]

const CYCLE = Cycle([:color, :marker], covary=true)

# = figure_height / figure_width
const HWRATIO = 0.68