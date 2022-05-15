-- made this in like 30 seconds lol, still useful tho
-- https://www.roblox.com/games/8554378337

getgenv().toggle = true

while getgenv().toggle and wait() do
    for _, rewards in next, game:GetService("Workspace").Rewards:GetChildren() do
        rewards.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
    end
end
