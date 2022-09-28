if game.PlaceId ~= 10895555747 then return end

local localPlr = game:GetService("Players").LocalPlayer

if not game:IsLoaded() then
    game.Loaded:Wait()
end

repeat wait() until localPlr ~= nil

local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport

if teleportFunc then
    teleportFunc([[loadstring(game:HttpGet("https://raw.githubusercontent.com/Kitzoon/Roblox-Scripts/main/WalmartLand.lua", true))()]])
end

for _,v in pairs(workspace["DAILY_TOKENS"]:GetChildren()) do
    firetouchinterest(localPlr.Character.HumanoidRootPart, v, 0)
    firetouchinterest(localPlr.Character.HumanoidRootPart, v, 1)
end

for _,v in pairs(workspace["UNIQUE_TOKENS"]:GetChildren()) do
    firetouchinterest(localPlr.Character.HumanoidRootPart, v, 0)
    firetouchinterest(localPlr.Character.HumanoidRootPart, v, 1)
end

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Success",
	Text = "Collected all Coins",
	Duration = 5
})

task.wait(0.2)

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Hopping Servers",
	Text = "Teleporting to another server",
	Duration = 5
})

game:GetService("TeleportService"):Teleport(game.PlaceId)
