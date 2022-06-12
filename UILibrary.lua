-- really shit ui library I made for a script lol

local library = {}

function library:CreateWindow(titleText, guiToggleKey)
	local altControlGUI = Instance.new("ScreenGui")
	local UICorner = Instance.new("UICorner")
	local Frame_2 = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local UICorner_2 = Instance.new("UICorner")
	local UICorner_3 = Instance.new("UICorner")
	local Frame_3 = Instance.new("Frame")
	
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
	
    Frame_2.Active = true
    Frame_2.Draggable = true

	altControlGUI.Name = "altControlGUI"
	altControlGUI.Parent = game.CoreGui
	altControlGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	UICorner.CornerRadius = UDim.new(0, 20)
	UICorner.Parent = Frame
	
	UIAspectRatioConstraint.Parent = Frame
    UIAspectRatioConstraint.AspectRatio = 1.855
    
    Frame_2.Name = "Frame2"
	Frame_2.Parent = altControlGUI
	Frame_2.BackgroundColor3 = Color3.fromRGB(71, 108, 193)
	Frame_2.Position = UDim2.new(0.655151129, 0, 0.550264537, 0)
	Frame_2.Size = UDim2.new(0, 366, 0, 193)

	Title.Name = titleText
	Title.Parent = Frame_2
	Title.BackgroundColor3 = Color3.fromRGB(71, 108, 193)
	Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Title.BorderSizePixel = 5
	Title.Position = UDim2.new(-0.00273224036, 0, -0.0310880821, 0)
	Title.Size = UDim2.new(0, 366, 0, 50)
	Title.Font = Enum.Font.Oswald
	Title.Text = titleText
	Title.TextColor3 = Color3.fromRGB(0, 0, 0)
	Title.TextSize = 40.000
	Title.TextWrapped = true
	
	UITextSizeConstraint.Parent = Title
    UITextSizeConstraint.MaxTextSize = 40
    
    UIAspectRatioConstraint_2.Parent = Title
    UIAspectRatioConstraint_2.AspectRatio = 7.320

	UICorner_2.CornerRadius = UDim.new(0, 20)
	UICorner_2.Parent = Title

	UICorner_3.CornerRadius = UDim.new(0, 20)
	UICorner_3.Parent = Frame_2
	
	Frame_3.Parent = Frame_2
	Frame_3.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
	Frame_3.Position = UDim2.new(0, 0, 0.232219487, 0)
	Frame_3.Size = UDim2.new(0, 365, 0, 3)
	
	local Container = Instance.new("Frame")
	Container.Name = "Container"
	Container.Parent = Frame_2
	Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container.BackgroundTransparency = 1.000
	Container.Position = UDim2.new(0, 0, 0.243523315, 0)
	Container.Size = UDim2.new(0, 365, 0, 146)
	
	UIAspectRatioConstraint_4.Parent = Container
    UIAspectRatioConstraint_4.AspectRatio = 2.500

	local UIGridLayout = Instance.new("UIGridLayout")
	UIGridLayout.Parent = Container
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellSize = UDim2.new(0, 100, 0, 35)

	local UICorner_4 = Instance.new("UICorner")
	UICorner_4.CornerRadius = UDim.new(0, 20)
	UICorner_4.Parent = Container
	
	game:GetService("UserInputService").InputBegan:connect(function(input)
	    if input.KeyCode == guiToggleKey then
	        if Frame_2.Visible then
	            Frame_2.Visible = false   
            else
                Frame_2.Visible = true
            end
        end
    end)
	
	-- idk why tf I need to add a new table lol
	local buttonLibrary = {}
	
	function buttonLibrary:CreateButton(nameText, callback)
		local Button = Instance.new("TextButton")
		Button.Name = nameText
		Button.Parent = game.CoreGui.altControlGUI.Frame2.Container
		Button.BackgroundColor3 = Color3.fromRGB(71, 108, 193)
		Button.BorderSizePixel = 3
		Button.Position = UDim2.new(0.301369876, 0, 0.918996453, 0)
		Button.Size = UDim2.new(0, 76, 0, 29)
		Button.Font = Enum.Font.Oswald
		Button.TextColor3 = Color3.fromRGB(0, 0, 0)
		Button.TextScaled = true
		Button.TextSize = 30.000
		Button.TextWrapped = true
		Button.Text = nameText
		
		UITextSizeConstraint_2.Parent = Button
        UITextSizeConstraint_2.MaxTextSize = 35
        
        UIAspectRatioConstraint_3.Parent = Button
        UIAspectRatioConstraint_3.AspectRatio = 2.857
		
		Button.MouseButton1Click:Connect(function()
		    callback()
        end)
	end
	
	return buttonLibrary
end

return library
