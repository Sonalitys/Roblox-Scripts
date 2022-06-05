-- // thanks to 0x83 for the cool esp tutorials on youtube, wouldnt of been able to really write this without them \\
-- // I use this for rogue hub lol \\

espLib = {}

function espLib:esp(player)
    if player == game:GetService("Players").LocalPlayer then return end
    
    local rootPart = player.Character:WaitForChild("HumanoidRootPart")
    
    local espText = Drawing.new("Text")
    espText.Visible = false
    espText.Center = true
    espText.Outline = true
    espText.Font = 3
    espText.Color = Color3.fromRGB(255,255,255)
    espText.Size = 13
    
    local c1
    local c2
    
    local function disconnect()
        espText.Visible = false
        espText:Remove()
        
        if c1 then
            c1:Disconnect()
            c1 = nil 
        elseif c2 then
            c2:Disconnect()
            c2 = nil 
        end
    end
    
    c1 = player.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("Health"):Connect(function(health)
        if player == nil or health == 0 or player.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Dead then
            disconnect()
        end
    end)
    
    c2 = player.Character.AncestryChanged:Connect(function(_, parent)
        if not parent then
            disconnect()
        end
    end)
    
    game:GetService("RunService").RenderStepped:Connect(function()
        local playerPos, onScreen = game:GetService("Workspace").Camera:WorldToViewportPoint(rootPart.Position)
    
        if onScreen and player ~= nil and player.Character:WaitForChild("Humanoid").Health ~= 0 then
            espText.Position = Vector2.new(playerPos.X, playerPos.Y)
            espText.Text = player.Name
            espText.Visible = true
        else
            espText.Visible = false
        end
    end)
end

return espLib
