-- // SLAP BATTLES SLAPPLES SERVERHOP FARM \\
-- // MADE BY KITZOON#7750 \\

--getgenv().farmEnabled = false
-- uncomment this variable if you're loading from this source code and not the original loadstring.

if game.PlaceId ~= 6403373529 or not getgenv().farmEnabled then return end

-- waits for the game to load
if not game:IsLoaded() then
    game.Loaded:Wait()
end

local localPlr = game:GetService("Players").LocalPlayer

repeat task.wait() until localPlr.Character ~= nil and localPlr.Character:FindFirstChild("HumanoidRootPart")

if not localPlr.Character:FindFirstChild("entered") and localPlr.Character:FindFirstChild("HumanoidRootPart") then
    repeat wait(0.5)
        firetouchinterest(localPlr.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 0)
        firetouchinterest(localPlr.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 1)
    until localPlr.Character:FindFirstChild("entered") ~= nil
end

for _,v in pairs(workspace.Arena:GetDescendants()) do
    if string.find(v.Name, "Slapple") and v:FindFirstChild("Glove") and v.Glove:FindFirstChildOfClass("TouchTransmitter") then
        firetouchinterest(localPlr.Character.HumanoidRootPart, v.Glove, 0)
        firetouchinterest(localPlr.Character.HumanoidRootPart, v.Glove, 1)
        
        wait(0.05)
    end
end

-- credits to: inf yield for there serverhop
local serverList = {}

for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
	if v.playing and type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
		serverList[#serverList + 1] = v.id
	end
end

if #serverList > 0 then
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, serverList[math.random(1, #serverList)])
else
    error("No servers found")
end
