local Radial = require(script.Parent.Radial)

local Fusion = require(script.Parent.Parent.FusionProxy)
local New, Children, OnEvent, OnChange, Value, Observer, Computed, ComputedPairs, Spring = Fusion.New, Fusion.Children, Fusion.OnEvent, Fusion.OnChange, Fusion.Value, Fusion.Observer, Fusion.Computed, Fusion.ComputedPairs, Fusion.Spring

return function(screen)
	local alpha = Value(0)

	local active = true
	task.defer(function()
		while active do
			alpha:set(math.clamp((math.sin(os.clock()*2)+1)/2, 0, 1))
			task.wait(1/60)
		end
	end)

	local inst = Radial {
		alpha = alpha,
		thickness = Value(8),
		Size = UDim2.fromOffset(80, 80),
	}
	inst.Parent = screen

	return function()
		active = false
		inst:Destroy()
	end
end