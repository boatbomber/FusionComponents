local Fusion = require(script.Parent.Fusion)
local State = Fusion.State

local theme = State(nil)

-- If this is running in a plugin, automatically make the theme match Studio's theme values
local isPlugin, studioTheme = pcall(function()
	return settings().Studio.Theme
end)

if isPlugin then
	theme:set(studioTheme)
	settings().Studio.ThemeChanged:Connect(function()
		studioTheme = settings().Studio.Theme
		theme:set(studioTheme)
	end)
else
	-- Mock the StudioTheme API when used in games
	local colorData = require(script.colorData)
	local mockTheme = table.create(2)

	function mockTheme:GetColor(Color, Modifier)
		return colorData[Color][Modifier or Enum.StudioStyleGuideModifier.Default]
	end

	function mockTheme:SetColor(Color, Modifier, Value)
		colorData[Color][Modifier] = Value
		-- Trigger dependencies update
		theme:set(mockTheme, true)
	end

	theme:set(mockTheme)
end

return theme
