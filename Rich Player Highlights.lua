-- https://www.roblox.com/games/8916037983
-- rich player highlights/chams
-- skids never win, only use this source to learn B)
-- made by Kitzoon#7750

if not game:IsLoaded() then
    game.Loaded:Wait()
end

if game.PlaceId ~= 8916037983 then return end

-- getgenv().settings = {
--     minBought = 100, -- the minimum amount of robux someone has bought for art in the past
--     highlightColor = Color3.fromRGB(49, 145, 34) -- the color of the highlight/chams
-- }

-- ^^^ add this back if your running from source code

for _, richTarget in next, game:GetService("Players"):GetPlayers() do
    if richTarget ~= game:GetService("Players").LocalPlayer and richTarget.leaderstats.Bought.Value >= getgenv().settings.minBought and richTarget.Character then
        local highlight = Instance.new("Highlight")
        highlight.Parent = richTarget.Character
        highlight.Adornee = richTarget.Character
        
        highlight.FillColor = getgenv().settings.highlightColor
        highlight.FillTransparency = 0
        highlight.OutlineTransparency = 0
        
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Found Rich Player!",
            Text = "Gave " .. richTarget.Name .. " a highlight so you can see them.",
            Duration = 5
        })
        
        richTarget.CharacterAdded:Connect(function()
            local highlight = Instance.new("Highlight")
            highlight.Parent = richTarget.Character
            highlight.Adornee = richTarget.Character
            
            highlight.FillColor = getgenv().settings.highlightColor
            highlight.FillTransparency = 0
            highlight.OutlineTransparency = 0
        end)
    end
end
