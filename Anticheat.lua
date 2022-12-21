-- // random script I made lol \\
-- // works good if you wanna detect other exploiters in your game \\

local timesTped = 0
local localPlr = game:GetService("Players").LocalPlayer

local function anticheat(v)
    if v == localPlr then return end
    
    v.Character:WaitForChild("Humanoid")
    if v.Character and v.Character:FindFirstChild("Humanoid") then
        v.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
            if v.Character.Humanoid.WalkSpeed >= 50 then
                print(v.Name .. " has " .. v.Character.Humanoid.WalkSpeed .. " walkspeed")
            end
        end)
        
        if v.Character.Humanoid.WalkSpeed >= 50 then
            print(v.Name .. " has " .. v.Character.Humanoid.WalkSpeed .. " walkspeed")
        end
        
        v.Character:WaitForChild("HumanoidRootPart")
        
        v.Character.HumanoidRootPart:GetPropertyChangedSignal("CFrame"):Connect(function()
            if timesTped >= 2 then
                print(v.Name .. " changed his cframe more than 2 times.")
                timesTped = timesTped + 1
            else
                timesTped = timesTped + 1
            end
        end)
    end
    
    v.CharacterAdded:Connect(function()
        v.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
            if v.Character.Humanoid.WalkSpeed >= 50 then
                print(v.Name .. " has " .. v.Character.Humanoid.WalkSpeed .. " walkspeed.")
            end
        end)
    end)
end

for _,player in pairs(game:GetService("Players"):GetPlayers()) do
    anticheat(player)
end

game:GetService("Players").PlayerAdded:Connect(function(player)
    anticheat(player)
end)
