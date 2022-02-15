local Fusion = require(script.Parent.Parent.FusionProxy)
local New, Children, OnEvent, OnChange, Value, Observer, Computed, ComputedPairs, Spring = Fusion.New, Fusion.Children, Fusion.OnEvent, Fusion.OnChange, Fusion.Value, Fusion.Observer, Fusion.Computed, Fusion.ComputedPairs, Fusion.Spring
local theme = require(script.Parent.Parent.Theme)

-- Dependencies
local transparencySequence = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(0.5001, 1),
	NumberSequenceKeypoint.new(1, 1),
})

--[[ Radial
	props: table = {
		thickness: State<number> = how many px thick the radial bar is
		alpha: State<number> = how complete the radial bar is (0-1)
		color: State<Color3> = the color of the radial bar
	}
--]]
return function(props)
	return New "Frame" {
		Name = props.Name or "Radial",
		BackgroundTransparency = 1,
		Size = props.Size,
		Position = props.Position,
		AnchorPoint = props.AnchorPoint,
		Visible = props.Visible,

		[Children] = {
			New "UIAspectRatioConstraint" {},

			New "Frame" {
				Name = "Right",
				BackgroundTransparency = 1,
				Position = UDim2.new(0.5, -1, 0, 0),
				Size = UDim2.fromScale(0.5, 1),
				ClipsDescendants = true,

				[Children] = New "Frame" {
					Name = "RightBar",
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0, 0.5),
					Size = Computed(function()
						local offset = props.thickness:get()*-2
						return UDim2.new(2, offset, 1, offset)
					end),

					[Children] = {
						New "UICorner" { CornerRadius = UDim.new(1, 0) },
						New "UIStroke" {
							ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
							Thickness = props.thickness,
							Color = props.color or theme.accent,

							[Children] = New "UIGradient" {
								Transparency = transparencySequence,
								Rotation = Computed(function()
									return math.clamp(props.alpha:get() * 360, 0, 180)
								end),
							}
						}
					}
				}
			},

			New "Frame" {
				Name = "Left",
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 1, 0, 0),
				Size = UDim2.fromScale(0.5, 1),
				ClipsDescendants = true,
				Visible = Computed(function()
					return props.alpha:get() > 0.5
				end),

				[Children] = New "Frame" {
					Name = "LeftBar",
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(1, 0.5),
					Size = Computed(function()
						local offset = props.thickness:get()*-2
						return UDim2.new(2, offset, 1, offset)
					end),

					[Children] = {
						New "UICorner" { CornerRadius = UDim.new(1, 0) },
						New "UIStroke" {
							ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
							Thickness = props.thickness,
							Color = props.color or theme.accent,

							[Children] = New "UIGradient" {
								Transparency = transparencySequence,
								Rotation = Computed(function()
									return props.alpha:get() * 360
								end),
							}
						}
					}
				}
			},
		}
	}
end
