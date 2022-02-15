local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Fusion = require(script.Parent.FusionProxy)
local Value = Fusion.Value

return {
	textSize = Value(15),
	headerSize = Value(18),
	subSize = Value(12),
	cornerSize = Value(4),

	mainBackground = Value(Color3.fromRGB(26, 27, 29)),
	lightBackground = Value(Color3.fromRGB(50, 52, 56)),
	darkBackground = Value(Color3.fromRGB(23, 23, 24)),

	brightText = Value(Color3.fromRGB(240, 240, 240)),
	mainText = Value(Color3.fromRGB(210, 210, 210)),
	subText = Value(Color3.fromRGB(120, 120, 120)),

	button = Value(Color3.fromRGB(56, 58, 61)),
	buttonText = Value(Color3.fromRGB(235, 235, 235)),

	accent = Value(Color3.fromRGB(3, 115, 189)),
	accentText = Value(Color3.new(1, 1, 1)),

	positive = Value(Color3.fromRGB(243, 96, 27)),
	negative = Value(Color3.fromRGB(74, 113, 255)),
	warning = Value(Color3.fromRGB(220, 110, 30)),
	error = Value(Color3.fromRGB(230, 70, 70)),
    dark = Value(Color3.fromRGB(19, 19, 22)),
	light = Value(Color3.fromRGB(71, 73, 74)),

    scriptBackground = Value(Color3.fromRGB(27, 28, 29)),
	scriptText = Value(Color3.fromRGB(234, 234, 234)),
	scriptKeyword = Value(Color3.fromRGB(215, 174, 255)),
	scriptBuiltin = Value(Color3.fromRGB(131, 206, 255)),
	scriptNumber = Value(Color3.fromRGB(255, 125, 125)),
	scriptOperator = Value(Color3.fromRGB(255, 239, 148)),
	scriptString = Value(Color3.fromRGB(196, 255, 193)),
	scriptComment = Value(Color3.fromRGB(140, 140, 155)),
	scriptCustom = Value(Color3.fromRGB(119, 122, 255)),
}