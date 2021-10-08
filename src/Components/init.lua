local Children = script:GetChildren()
local Components = table.create(#Children)

for _, module in pairs(Children) do
	if string.find(module.Name, "^_") then
		-- Children prefixed with _ are not exposed to users
		continue
	end
	Components[module.Name] = require(module)
end

return Components
