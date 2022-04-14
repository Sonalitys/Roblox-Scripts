-- // MEGA NOOB SIMULATOR GRAB ALL 2022 EASTER EGGS \\
-- // MADE BY: NOLIX \\
-- // REQUESTED BY: JAWMAN2000 ON WRD \\

-- checks if local player exists
if game:GetService("Players").LocalPlayer.Character.Humanoid then
    -- gets all the eggs which are in game
    for _, egg in next, game:GetService("Workspace").Map.EventEggs:GetChildren() do
        -- teleports to the current found egg
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = egg.CFrame
        -- delays a little to not cause issues with the teleporting sequence
        task.wait(0.3)
    end
    
    -- teleports local player to spawn, signifying that the script has finished getting all the eggs (or this may occur when the script cant find any eggs)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4.73750019, 1333.75171, 34.0114212, -0.0132105853, 6.80028867e-10, 0.999912739, 1.51578339e-09, 1, -6.60062061e-10, -0.999912739, 1.50693125e-09, -0.0132105853)
end
