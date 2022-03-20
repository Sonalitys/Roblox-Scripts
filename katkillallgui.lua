-- // KAT! KILL ALL GUI \\
-- // ORIGINALLY MADE BY: UNKNOWN \\
-- // IMPROVED BY: NOLIX \\

-- // PLEASE NOTE: YOU MUST HAVE YOUR WEAPONS LOADED AND NONE OF THEM EQUIPPED IF YOU WANT THE SCRIPT TO WORK \\

-- gui code
local KillAllGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local CreditsBox = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Credits2 = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local Credits1 = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local KeybindBox = Instance.new("TextBox")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

KillAllGui.Name = "KillAllGui"
KillAllGui.Parent = game.CoreGui
KillAllGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = KillAllGui
MainFrame.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
MainFrame.BorderSizePixel = 5
MainFrame.Position = UDim2.new(0.104244232, 0, 0.623312891, 0)
MainFrame.Size = UDim2.new(0.138495907, 0, 0.246625766, 0)

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Title.BorderSizePixel = 5
Title.Size = UDim2.new(1, 0, 0.248756215, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "KAT! kill all"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 30.000
Title.TextStrokeTransparency = 0.000
Title.TextWrapped = true

UITextSizeConstraint.Parent = Title
UITextSizeConstraint.MaxTextSize = 30

CreditsBox.Name = "CreditsBox"
CreditsBox.Parent = MainFrame
CreditsBox.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
CreditsBox.BorderSizePixel = 5
CreditsBox.Position = UDim2.new(0, 0, 0.75621891, 0)
CreditsBox.Size = UDim2.new(1, 0, 0.24378109, 0)
CreditsBox.Font = Enum.Font.GothamBold
CreditsBox.Text = ""
CreditsBox.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditsBox.TextScaled = true
CreditsBox.TextSize = 15.000
CreditsBox.TextStrokeTransparency = 0.000
CreditsBox.TextWrapped = true

UITextSizeConstraint_2.Parent = CreditsBox
UITextSizeConstraint_2.MaxTextSize = 15

Credits2.Name = "Credits2"
Credits2.Parent = MainFrame
Credits2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Credits2.BackgroundTransparency = 1.000
Credits2.BorderSizePixel = 0
Credits2.Position = UDim2.new(0, 0, 0.870646775, 0)
Credits2.Size = UDim2.new(1, 0, 0.099502489, 0)
Credits2.Font = Enum.Font.GothamBold
Credits2.Text = "Improved by: Nolix"
Credits2.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits2.TextScaled = true
Credits2.TextSize = 13.000
Credits2.TextStrokeTransparency = 0.000
Credits2.TextWrapped = true

UITextSizeConstraint_3.Parent = Credits2
UITextSizeConstraint_3.MaxTextSize = 13

Credits1.Name = "Credits1"
Credits1.Parent = MainFrame
Credits1.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Credits1.BackgroundTransparency = 1.000
Credits1.BorderSizePixel = 0
Credits1.Position = UDim2.new(0, 0, 0.75621891, 0)
Credits1.Size = UDim2.new(1, 0, 0.114427857, 0)
Credits1.Font = Enum.Font.GothamBold
Credits1.Text = "Original by: Unknown"
Credits1.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits1.TextScaled = true
Credits1.TextSize = 15.000
Credits1.TextStrokeTransparency = 0.000
Credits1.TextWrapped = true

UITextSizeConstraint_4.Parent = Credits1
UITextSizeConstraint_4.MaxTextSize = 15

KeybindBox.Name = "KeybindBox"
KeybindBox.Parent = MainFrame
KeybindBox.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
KeybindBox.BorderSizePixel = 0
KeybindBox.Position = UDim2.new(0, 0, 0.373134315, 0)
KeybindBox.Size = UDim2.new(1, 0, 0.248756215, 0)
KeybindBox.Font = Enum.Font.GothamBold
KeybindBox.Text = "Type Keybind Here"
KeybindBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeybindBox.TextScaled = true
KeybindBox.TextSize = 25.000
KeybindBox.TextStrokeTransparency = 0.000
KeybindBox.TextWrapped = true

UITextSizeConstraint_5.Parent = KeybindBox
UITextSizeConstraint_5.MaxTextSize = 50

UIAspectRatioConstraint.Parent = KillAllGui
UIAspectRatioConstraint.AspectRatio = 1.648

MainFrame.Active = true
MainFrame.Draggable = true

-- writes the keybind setting file
if writefile and not isfile("KAT_Kill_All.NOLIX") then writefile("KAT_Kill_All.NOLIX", game:GetService("HttpService"):JSONEncode(KeybindBox.Text)) end

-- save function, writes the current keybind text from the gui
function save()
    if writefile then writefile("KAT_Kill_All.NOLIX", game:GetService("HttpService"):JSONEncode(KeybindBox.Text)) end
end

-- loads the saved keybind
if readfile and isfile("KAT_Kill_All.NOLIX") then KeybindBox.Text = game:GetService("HttpService"):JSONDecode(readfile("KAT_Kill_All.NOLIX")) end

-- user input function
game:GetService("UserInputService").InputBegan:Connect(function(input)
    -- checks if the input pressed is the keybind
	if input.KeyCode == Enum.KeyCode[KeybindBox.Text] then
	    save()
	    -- finds the knife in local player's backpack, if it cant find the kill all wont run
		if game:GetService("Players").LocalPlayer.Backpack["Knife"] then
		    -- equips the knife
			game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack["Knife"])
			-- waits a bit for the animation to finish, if not you cant kill anyone
			wait(0.5)
			mainCode()
		end
	end
end)

function mainCode()
    -- main for loop
	for _, player in pairs(game:GetService("Players"):GetPlayers()) do
	    -- checks if the player in the loop isnt the local player, you cant teleport to yourself lol
		if player ~= game:GetService("Players").LocalPlayer then
		    -- teleports to the player currently caught in the loop
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.Head.CFrame * CFrame.new(0,0,.4)
			-- left clicks to attack
			mouse1click()
			-- waits a little until going to the next target
			wait(0.3)
		end
	end
end
