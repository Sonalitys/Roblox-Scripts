-- // HOOPZ AIMBOT SCRIPT MADE BY NOLIX AKA Kitzoon#7750 \\
-- // some reason all the script devs like to make there scripts paid if they make it for this game lol, garbage ass money milkers \\
-- // https://www.roblox.com/games/6229116934 \\

-- // uncomment the settings table below if you are running from source (highly not recommended, I constantly update my scripts with better code) \\

-- getgenv().settings = {
--     Enabled = true,
--     
--     Distance = 200,
--     
--     AimbotHowFarUp = 20,
--
--     Keybind = Enum.UserInputType.MouseButton3
-- }

if not getgenv().settings.Enabled then return end

local aiming = false

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.UserInputType == getgenv().settings.Keybind and aiming == false then
        aiming = true
    elseif input.UserInputType == getgenv().settings.Keybind and aiming then
        aiming = false
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    local distance = getgenv().settings.Distance
    local closestHoop
    
    if aiming then
        for _, v in next, game:GetService("Workspace").Courts:GetDescendants() do
            if v:IsA("Model") and v.Name == "Basketball Hoop" and v.rim then
                local partPos, onScreen = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(v.rim.Position)
                    
                if onScreen then
                    local mag = (Vector2.new(game:GetService("Players").LocalPlayer:GetMouse().X, game:GetService("Players").LocalPlayer:GetMouse().Y) - Vector2.new(partPos.X, partPos.Y)).magnitude
                        
                    if mag < distance then
                        distance = mag
                        closestHoop = v.rim
                    end
                end
            end
        end
        
        if closestHoop ~= nil then
            game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.Position, closestHoop.Position) * CFrame.new(0, getgenv().settings.AimbotHowFarUp, 0)
        end
    end
end)

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Aimbot Loaded",
    Text = "Celtmane Hub",
    Duration = 5
})
