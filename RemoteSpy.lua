-- trash remote spy I wrote lol

local mt = getrawmetatable(game)
local namecall = mt.__namecall

setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()

    if tostring(method) == "FireServer" then
        print("\n Remote Event has been fired!" .. "\n Event Name: " .. tostring(self))
    end

    return namecall(self, ...)
end)

setreadonly(mt, true)

print("Short remote spy made by Kitzoon#0420")
