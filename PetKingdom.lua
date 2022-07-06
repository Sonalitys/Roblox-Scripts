-- unfinished auto farm, couldnt really bother making it to work

local function playerPet()
    for _, v in next, game:GetService("Workspace").Debris.Pets:GetChildren() do
        if game:GetService("Players").LocalPlayer:DistanceFromCharacter(v.Position) > 5 then
            return v
        end
    end
end

for _, v in next, game:GetService("Workspace").Debris.Coins:GetChildren() do
    if v:FindFirstChildOfClass("Part") then
        game:GetService("ReplicatedStorage").Assets.Events.RemoteEvent:FireServer("Change Pet Target", tostring(playerPet()), "Coin", v.Name)
        
        repeat wait()
        until v == nil
    end
end
