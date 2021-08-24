"""
    figsize(width_in_inch, height_width_ratio=0.68)

    Convert figure size in inches (which is often required by publishers) to that in points (which is the unit for CairoMakie). Note that 1 point in CairoMakie is equal to 1/72 inch.
"""
function figsize(width_in_inch, height_width_ratio=0.68)
    width_in_point = floor(Int, 72width_in_inch)
    height_in_point = floor(Int, width_in_point*height_width_ratio)
    return width_in_point, height_in_point
end

savefig(f, fig) = save(f, fig, pt_per_unit=1)