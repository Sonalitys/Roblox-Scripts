-- Roblox Hoopz Aimbot Script
-- INCOMPLETE, DOESN'T ACTUALLY WORK DONT USE!
-- https://www.roblox.com/games/6229116934

local keyPressed = false
local hoop

function closestHoop()
    for _, v in next, game:GetService("Workspace").Courts:GetDescendants() do
        if v:IsA("Model") and v.Name == "Basketball Hoop" and v.rim then
            local magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.rim.Position).magnitude
            
            if magnitude < 65 then
                hoop = v.rim
                return hoop
            end
        end
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.V and keyPressed == false then
        keyPressed = true
        
        while keyPressed and wait() do
            game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position, closestHoop().Position)
        end
    elseif input.KeyCode == Enum.KeyCode.V and keyPressed then
        keyPressed = false
    end
end)
