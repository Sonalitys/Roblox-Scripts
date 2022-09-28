if game.PlaceId ~= 10895555747 then return end

local localPlr = game:GetService("Players").LocalPlayer

for _,v in pairs(workspace["DAILY_TOKENS"]:GetChildren()) do
    firetouchinterest(localPlr.Character.HumanoidRootPart, v, 0)
    firetouchinterest(localPlr.Character.HumanoidRootPart, v, 1)
end

for _,v in pairs(workspace["UNIQUE_TOKENS"]:GetChildren()) do
    firetouchinterest(localPlr.Character.HumanoidRootPart, v, 0)
    firetouchinterest(localPlr.Character.HumanoidRootPart, v, 1)
end
