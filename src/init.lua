local Components = require(script.Components)
local Theme = require(script.Theme)

-- Add theme to the Components table to expose Theme to users
Components["Theme"] = Theme

return Components
