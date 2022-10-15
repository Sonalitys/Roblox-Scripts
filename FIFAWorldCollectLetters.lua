-- // FIFA WORLD COLLECT ALL LETTERS FROM TREASURE HUNTS \\
-- // SKIDS NEVER WIN, ONLY USE THIS SOURCE CODE TO LEARN B) \\
-- // https://www.roblox.com/games/9486506804 \\

if not game:IsLoaded() then
    game.Loaded:Wait()
end

if game.PlaceId ~= 9486506804 then return end

local localPlr = game:GetService("Players").LocalPlayer

for _, letter in pairs(workspace.ScavengerHunt.Step1.Objects:GetChildren()) do
    if string.find(letter.Name, "Symbol") and localPlr.Character ~= nil then
        firetouchinterest(localPlr.Character.HumanoidRootPart, letter.Root, 0)
        firetouchinterest(localPlr.Character.HumanoidRootPart, letter.Root, 1)
    end
end
