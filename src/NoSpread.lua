local module = {}

function module:ApplyNoSpread(player)
    -- Check if the player has a tool equipped
    local character = player.Character
    if not character then return end
    
    local tool = character:FindFirstChildOfClass("Tool")
    if not tool then return end
    
    -- Check if the tool is a gun
    local handle = tool:FindFirstChild("Handle")
    if not handle then return end
    
    -- Apply no spread to the gun
    local spread = tool:FindFirstChild("Spread")
    if spread then
        spread.Value = 0
    end

    -- Apply force shoot to the gun
    local autoFire = tool:FindFirstChild("AutoFire")
    if autoFire then
        autoFire.Value = true
    end
end

return module