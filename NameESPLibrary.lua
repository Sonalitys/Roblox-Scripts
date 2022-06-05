-- // thanks to 0x83 for the cool esp tutorials on youtube, wouldnt of been able to really write this without them \\
-- // I use this for rogue hub lol \\

espLib = {}

function espLib:esp(object, text)
    local espText = Drawing.new("Text")
    espText.Visible = false
    espText.Center = true
    espText.Font = 3
    espText.Color = Color3.fromRGB(255,255,255)
    espText.Size = 15
    
    game:GetService("RunService").RenderStepped:Connect(function()
        local objectPos, onScreen = game:GetService("Workspace").Camera:WorldToViewportPoint(object.Position)
        
        if object.Parent:FindFirstChildOfClass("Humanoid").Health == 0 or object == nil then
            espText.Visible = false
            espText:Remove()
        end
        
        if onScreen and object ~= nil and espText then
            espText.Position = Vector2.new(objectPos.X, objectPos.Y)
            espText.Text = text
            espText.Visible = true
        else
            espText.Visible = false
        end
    end)
end

return espLib
