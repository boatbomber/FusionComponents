local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Fusion = ReplicatedStorage:FindFirstChild("Fusion", true)

if not Fusion then
	Fusion = script.Parent.Parent:FindFirstChild("Fusion", true)
end

if not Fusion then
	error("Fusion not found, make sure Fusion is in ReplicatedStorage or the parent of FusionComponents")
end

return require(Fusion)
