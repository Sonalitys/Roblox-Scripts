-- trash remote spy I wrote lol

local mt = getrawmetatable(game)
local namecall = mt.__namecall

-- sets the read only to false, allowing for hooking and editing of metatable stuff
setreadonly(mt, false)

-- kool hacker man synapse functions
mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    
    -- checks if called remote is a remote event
    if tostring(method) == "FireServer" then
        -- letting you know its been fired
        print("\n Remote Event has been fired!" .. "\n Event Name: " .. tostring(self))
    end
    
    -- returns namecall to make the remote event code still work
    return namecall(self, ...)
end)

-- sets the read only to true
setreadonly(mt, true)

-- when this has been printed it lets you know everything worked out fine and the remote spy is loaded
print("Short remote spy made by Kitzoon#0420")
