-- MADE BY KITZOON#7750 AKA NOLIX ON FORUMS --
-- SKIDS NEVER WIN, ONLY USE THIS SOURCE TO LEARN --

local asset = getcustomasset or syn and getsynasset

if not asset or isfile and writefile then
    print("Exploit unsupported")    
end

if not isfile("dababy.png") then
    writefile("dababy.png", game:HttpGet("https://i.imgur.com/LzqvARK.png"))
end

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local localPlr = game:GetService("Players").LocalPlayer

local function espCreate(player)
    local billboard = Instance.new("BillboardGui", player.Parent)
    billboard.Adornee = player
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.new(0,6,0,6)
    
    local frame = Instance.new("Frame", billboard)
    frame.ZIndex = 4
    frame.BackgroundTransparency = 1
    frame.Size = UDim2.new(10,0,10,0)
    
    local dababy = Instance.new("ImageLabel", frame)
    dababy.Image = asset("dababy.png")
    dababy.Position = UDim2.new(0,0,0,0)
    dababy.Size = UDim2.new(0,98,0,78)
end

for _, player in next, game:GetService("Players"):GetPlayers() do
    if player ~= localPlr then
        espCreate(player.Character:WaitForChild("Head"))
        
        player.CharacterAdded:Connect(function(playerChar)
            espCreate(playerChar:WaitForChild("Head"))
        end)
    end
end

game:GetService("Players").PlayerAdded:Connect(function(player)
	if player ~= localPlr and player.Character  then
	    espCreate(player.Character:WaitForChild("Head"))
	elseif player ~= localPlr then
        player.CharacterAdded:Connect(function(playerChar)
            espCreate(playerChar:WaitForChild("Head"))
        end)
    end
end)
