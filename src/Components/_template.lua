--[[
	This is not a component meant to be used. This is a template to provide boilerplate and
	guidance for contributors.
]]

local Fusion = require(script.Parent.Parent.Fusion)
local New, Children, OnEvent, OnChange, Value, Observer, Computed, ComputedPairs, Spring = Fusion.New, Fusion.Children, Fusion.OnEvent, Fusion.OnChange, Fusion.Value, Fusion.Observer, Fusion.Computed, Fusion.ComputedPairs, Fusion.Spring

-- Dependencies
-- local otherComponent = require(script.Parent.otherComponent)

--[[ ComponentName
	props: table = {
		propName: type = description of prop
	}
--]]
return function(props: {[any]: any})
	return New "Frame" {
		Name = props.Name or "defaultName",
		ZIndex = props.ZIndex,
		BackgroundTransparency = props.BackgroundTransparency or 1,

		[Children] = {

		}
	}
end
