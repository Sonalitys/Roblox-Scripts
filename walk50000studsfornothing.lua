if game.PlaceId == 8603729161 then
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("LocalScript")
    	game.Players.LocalPlayer.Character.LocalScript.Disabled = true
    end)
    
    if game.Players.LocalPlayer.Character.LocalScript then
        game.Players.LocalPlayer.Character.LocalScript.Disabled = true
        
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.2199347, 4.25081158, -50021.3867, -0.105432481, 7.62504992e-09, 0.994426489, -2.83407142e-09, 1, -7.96826427e-09, -0.994426489, -3.65838937e-09, -0.105432481)
        
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success!",
            Text = "Successfully teleported you to the end!",
            Duration = 5
       	 })
    end
else
print("You executed this script in the wrong game!")
print("Correct game ID: 8603729161")
end