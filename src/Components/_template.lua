--[[
	This is not a component meant to be used. This is a template to provide boilerplate and
	guidance for contributors.
]]

local Fusion = require(script.Parent.Parent.Fusion)

local New = Fusion.New
local Children = Fusion.Children
local State = Fusion.State
local Computed = Fusion.Computed
local ComputedPairs = Fusion.ComputedPairs
local Spring = Fusion.Spring
local Compat = Fusion.Compat
local OnEvent = Fusion.OnEvent
local OnChange = Fusion.OnChange

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
