-- Functions for using color in Corona.

local color = {}

-- Converts rgb colors to Corona colors (where all channels lie between [0.0, 1.0]).
-- Channels r, g, b must be between [0, 255].
function color.rgb(r, g, b)
	assert(r >= 0 and r <= 255, "Red channel must be between [0, 255].")
	assert(g >= 0 and g <= 255, "Green channel must be between [0, 255].")
	assert(b >= 0 and b <= 255, "Blue channel must be between [0, 255].")
	return (r or 0) / 255, (g or 0) / 255, (b or 0) / 255
end

-- Converts rgb(a) colors to Corona colors (where all channels lie between [0.0, 1.0]).
-- Channels r, g, b must be between [0, 255].
-- Alpha channel a must be between [0.0, 1.0] and defaults to 1 if omitted.
local rgb = color.rgb
function color.rgba(r, g, b, a)
	assert(not a or a >= 0 and a <= 1, "Alpha channel must be between [0.0, 1.0].")
	local r, g, b = rgb(r, g, b)
	return r, g, b, a or 1
end

return color
