-- // random script that spams staff's ban logs \\ --

game:GetService("RunService").RenderStepped:Connect(function()
    game:GetService("ReplicatedStorage").AdminGUI:FireServer()
end)
