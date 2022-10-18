"""
    figsize(width_in_inch, height_width_ratio=0.68)

Convert figure size in inches (which is often required by publishers) to that in points (which is the unit for CairoMakie).

Note that 1 point in CairoMakie is equal to 1/72 inch.
"""
function figsize(width_in_inch, height_width_ratio=HWRATIO)
    width_in_point = floor(Int, 72width_in_inch)
    height_in_point = floor(Int, width_in_point*height_width_ratio)
    return width_in_point, height_in_point
end

"""
    savefig(f, fig, pt_per_unit=1)

Save the `Figure` instance `fig` as an image file. `f` is the path to the image file, like `/path/to/figure.svg`. Many image format are supported. The most common ones are: `svg`, `pdf`, `eps`, and `png`.
"""
savefig(f, fig) = save(f, fig, pt_per_unit=1)