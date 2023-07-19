

local tweenservice = game:GetService("TweenService")



uilibrary = {}
function uilibrary:init(title)
	--// Instances
	local ScreenGui = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local MainFrameCorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local TitlePadding = Instance.new("UIPadding")
	local SecondaryFrame = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Watermark = Instance.new("Frame")
	local SideBar = Instance.new("ScrollingFrame")
	local Sidebarcorner = Instance.new("UICorner")
	local Sidebarlistlayout = Instance.new("UIListLayout")
	local Sidebarpadding = Instance.new("UIPadding")
	local TabFolder = Instance.new("Folder")
	local ControlButtons = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")
	local A = Instance.new("ImageButton")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local minimize = false
	--// Properties


	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.Name = "ui"

	

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = ScreenGui
	MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.359186739, 0, 0.288029939, 0)
	MainFrame.Size = UDim2.new(0, 524, 0, 50)

	MainFrameCorner.Name = "MainFrameCorner"
	MainFrameCorner.Parent = MainFrame

	Watermark.Name = "Watermark"
	Watermark.Parent = MainFrame
	Watermark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Watermark.BackgroundTransparency = 1.000
	Watermark.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Watermark.BorderSizePixel = 0
	Watermark.Size = UDim2.new(0, 140, 0, 50)

	Title.Name = "Title"
	Title.Parent = Watermark
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(-0.0152671756, 0, 0.0029498525, 0)
	Title.Size = UDim2.new(0, 165, 0, 50)
	Title.Font = Enum.Font.SourceSansBold
	Title.Text = "Rate my poop v3"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 17.000
	Title.TextTransparency = 0.500

	TitlePadding.Name = "TitlePadding"
	TitlePadding.Parent = Title
	TitlePadding.PaddingRight = UDim.new(0, 25)

	UIListLayout.Parent = Watermark
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	ControlButtons.Name = "ControlButtons"
	ControlButtons.Parent = MainFrame
	ControlButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ControlButtons.BackgroundTransparency = 1.000
	ControlButtons.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ControlButtons.BorderSizePixel = 0
	ControlButtons.Position = UDim2.new(0.697, 0, 0.236, 0)
	ControlButtons.Size = UDim2.new(0, 155, 0, 26)

	UIListLayout_2.Parent = ControlButtons
	UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

	UIPadding.Parent = ControlButtons
	UIPadding.PaddingRight = UDim.new(0, 10)

	A.Name = "A"
	A.Parent = ControlButtons
	A.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	A.BackgroundTransparency = 1.000
	A.BorderColor3 = Color3.fromRGB(0, 0, 0)
	A.BorderSizePixel = 0
	A.Size = UDim2.new(0, 32, 0, 20)
	A.Image = "rbxassetid://10734895530"
	
	A.MouseButton1Click:Connect(function()
		
		if minimize then
			
			SecondaryFrame:TweenSize(UDim2.new(0, 524, 0, 347), "Out", "Quart", 0.15)
			SideBar:TweenSize(UDim2.new(0, 155, 0, 347), "Out", "Quart", 0.15)
			SideBar.ScrollBarThickness = 5
			for i,v in pairs(TabFolder:GetChildren()) do
				if v:IsA("ScrollingFrame") then
					v:TweenSize(UDim2.new(0, 369, 0 , 347), "Out", "Quart", 0.15)
					v.ScrollBarThickness = 5
				end
			end
			
		else
			SecondaryFrame:TweenSize(UDim2.new(0, 524, 0, 0), "Out", "Quart", 0.15)
			SideBar:TweenSize(UDim2.new(0, 155, 0, 0), "Out", "Quart", 0.15)
			SideBar.ScrollBarThickness = 0
			for i,v in pairs(TabFolder:GetChildren()) do
				if v:IsA("ScrollingFrame") then
					v:TweenSize(UDim2.new(0, 369, 0 , 0), "Out", "Quart", 0.15)
					v.ScrollBarThickness = 0
				end
			end
		end
		minimize = not minimize
		
		
	end)

	UIAspectRatioConstraint.Parent = A

	SecondaryFrame.Name = "SecondaryFrame"
	SecondaryFrame.Parent = MainFrame
	SecondaryFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	SecondaryFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SecondaryFrame.BorderSizePixel = 0
	SecondaryFrame.Position = UDim2.new(0, 0, 0, 45)
	SecondaryFrame.Size = UDim2.new(0, 524, 0, 347)
	TabFolder.Name = "TabFolder"
	TabFolder.Parent = SecondaryFrame
	TabFolder.Name = "TabFolder"
	TabFolder.Parent = SecondaryFrame

	SideBar.Name = "SideBar"
	SideBar.Parent = SecondaryFrame
	SideBar.Active = true
	SideBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	SideBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SideBar.BorderSizePixel = 0
	SideBar.Size = UDim2.new(0, 155, 0, 347)
	SideBar.CanvasSize = UDim2.new(0, 0, 5, 0)
	SideBar.ScrollBarThickness = 5

	Sidebarcorner.Name = "Sidebarcorner"
	Sidebarcorner.Parent = SideBar

	Sidebarlistlayout.Name = "Sidebarlistlayout"
	Sidebarlistlayout.Parent = SideBar
	Sidebarlistlayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	Sidebarlistlayout.SortOrder = Enum.SortOrder.LayoutOrder
	Sidebarlistlayout.Padding = UDim.new(0, 5)


	Sidebarpadding.Name = "Sidebarpadding"
	Sidebarpadding.Parent = SideBar
	Sidebarpadding.PaddingTop = UDim.new(0, 5)


	local UIS = game:GetService("UserInputService")
	local function dragify(Frame)
		local startPos = nil
		local	dragToggle = nil
		local	dragSpeed = 0.15
		local	dragInput = nil
		local	dragStart = nil
		local	dragPos = nil
		local function updateInput(input)
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end
	dragify(MainFrame)



	local tabstuff = {}
	function tabstuff:NewPage(pagetitle)
		local TabExample = Instance.new("ScrollingFrame")
		local TabPadding = Instance.new("UIPadding")
		local TabGridLayout = Instance.new("UIGridLayout")
		local TabSideBarBtn = Instance.new("TextButton")
		local TabSideBarBtnCorner = Instance.new("UICorner")
		TabExample.Name = "TabExample"
		TabExample.Parent = TabFolder
		TabExample.Active = true
		TabExample.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		TabExample.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabExample.BorderSizePixel = 0
		TabExample.Position = UDim2.new(0.29580152, 0, 0, 0)
		TabExample.Size = UDim2.new(0, 369, 0, 347)
		TabExample.CanvasSize = UDim2.new(0, 0, 1, 2048)
		TabExample.ScrollBarThickness = 5
		TabPadding.Name = "TabPadding"
		TabPadding.Parent = TabExample

		TabGridLayout.Name = "TabGridLayout"
		TabGridLayout.Parent = TabExample
		TabGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		TabGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
		TabGridLayout.CellPadding = UDim2.new(0, 9, 0, 5)
		TabGridLayout.CellSize = UDim2.new(0, 325, 0, 40)

		TabSideBarBtn.Name = pagetitle
		TabSideBarBtn.Parent = SideBar
		TabSideBarBtn.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
		TabSideBarBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabSideBarBtn.BorderSizePixel = 0
		TabSideBarBtn.Position = UDim2.new(0.0496453904, 0, 0.0144092217, 0)
		TabSideBarBtn.Size = UDim2.new(0, 126, 0, 38)
		TabSideBarBtn.Font = Enum.Font.SourceSansBold
		TabSideBarBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabSideBarBtn.TextSize = 17.000
		TabSideBarBtn.Text = pagetitle


		TabSideBarBtn.MouseButton1Click:Connect(function()
			for i,v in pairs(TabFolder:GetChildren()) do
				if v:IsA("ScrollingFrame") then
					if v.Visible == true then
						v.Visible = false
					end
				end
			end


			TabExample.Visible = true
		end)

		TabSideBarBtnCorner.CornerRadius = UDim.new(0, 4)
		TabSideBarBtnCorner.Name = "SideBarButtonCorner"
		TabSideBarBtnCorner.Parent = TabSideBarBtn


		local tabtools = {}
		function tabtools:Button(ButtonName, callmebackbabe)
			callmebackbabe = callmebackbabe or function() end

			local NewButton = Instance.new("TextButton")
			local ExampleButtonPadding = Instance.new("UIPadding")
			local ExampleButtonCorner = Instance.new("UICorner")

			NewButton.Name = ButtonName
			NewButton.Parent = TabExample
			NewButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			NewButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			NewButton.BorderSizePixel = 0
			NewButton.Position = UDim2.new(0.0596205965, 0, 0, 0)
			NewButton.Size = UDim2.new(0, 330, 0, 50)
			NewButton.Font = Enum.Font.GothamBold
			NewButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			NewButton.TextSize = 15.000
			NewButton.TextXAlignment = Enum.TextXAlignment.Left
			NewButton.Text = ButtonName
			ExampleButtonPadding.Name = "ExampleButtonPadding"
			ExampleButtonPadding.Parent = NewButton
			ExampleButtonPadding.PaddingLeft = UDim.new(0, 10)

			ExampleButtonCorner.CornerRadius = UDim.new(0, 4)
			ExampleButtonCorner.Name = "ExampleButtonCorner"
			ExampleButtonCorner.Parent = NewButton

			NewButton.MouseButton1Click:Connect(function()
				callmebackbabe()
			end)
		end




		function tabtools:Toggle(ToggleName, callmebackbabe)

			local toggled = false

			callmebackbabe = callmebackbabe or function() end


			local Toggle = Instance.new("Frame")
			local ToggleCorner = Instance.new("UICorner")
			local ToggleText = Instance.new("TextLabel")
			local TogglePadding = Instance.new("UIPadding")
			local ActualToggle = Instance.new("TextButton")
			local ActualToggleCorner = Instance.new("UICorner")

			--Properties:













			Toggle.Name = ToggleName
			Toggle.Parent = TabExample
			Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Toggle.BorderSizePixel = 0
			Toggle.Size = UDim2.new(0, 100, 0, 100)

			ToggleCorner.CornerRadius = UDim.new(0, 4)
			ToggleCorner.Name = "ToggleCorner"
			ToggleCorner.Parent = Toggle

			ToggleText.Name = "ToggleText"
			ToggleText.Parent = Toggle
			ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleText.BackgroundTransparency = 1.000
			ToggleText.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ToggleText.BorderSizePixel = 0
			ToggleText.Position = UDim2.new(0.00307692308, 0, 0.224999994, 0)
			ToggleText.Size = UDim2.new(0, 200, 0, 20)
			ToggleText.Font = Enum.Font.GothamBold
			ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleText.TextSize = 15.000
			ToggleText.TextXAlignment = Enum.TextXAlignment.Left
			ToggleText.Text = ToggleName

			TogglePadding.Name = "TogglePadding"
			TogglePadding.Parent = Toggle
			TogglePadding.PaddingLeft = UDim.new(0, 10)

			ActualToggle.Name = "ActualToggle"
			ActualToggle.Parent = Toggle
			ActualToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
			ActualToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ActualToggle.BorderSizePixel = 0
			ActualToggle.Position = UDim2.new(0.870769203, 0, 0.150000006, 0)
			ActualToggle.Size = UDim2.new(0, 31, 0, 28)
			ActualToggle.Font = Enum.Font.SourceSans
			ActualToggle.Text = ""
			ActualToggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			ActualToggle.TextSize = 14.000

			ActualToggleCorner.CornerRadius = UDim.new(0, 5)
			ActualToggleCorner.Name = "ActualToggleCorner"
			ActualToggleCorner.Parent = ActualToggle

			ActualToggle.MouseButton1Click:Connect(function()

				toggled = not toggled
				callmebackbabe(toggled)	
				if toggled then 
					tweenservice:Create(ActualToggle, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(8, 189, 38)
					}):Play()

				else
					tweenservice:Create(ActualToggle, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(198, 0, 3)
					}):Play()

				end
			end)








		end


		function tabtools:Textbox(TextBoxName, valuetext, youaregay)
			youaregay = youaregay or function() end


			local TextInput = Instance.new("Frame")
			local TextInputCorner = Instance.new("UICorner")
			local TextInputText = Instance.new("TextLabel")
			local TextInputPadding = Instance.new("UIPadding")
			local TextBox = Instance.new("TextBox")
			local UICorner = Instance.new("UICorner")


			TextInput.Name = TextBoxName
			TextInput.Parent = TabExample
			TextInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			TextInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextInput.BorderSizePixel = 0
			TextInput.Position = UDim2.new(0.0596205965, 0, 0.259366006, 0)
			TextInput.Size = UDim2.new(0, 100, 0, 100)

			TextInputCorner.CornerRadius = UDim.new(0, 4)
			TextInputCorner.Name = "TextInputCorner"
			TextInputCorner.Parent = TextInput

			TextInputText.Name = "TextInputText"
			TextInputText.Parent = TextInput
			TextInputText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextInputText.BackgroundTransparency = 1.000
			TextInputText.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextInputText.BorderSizePixel = 0
			TextInputText.Position = UDim2.new(0.00307692308, 0, 0.224999994, 0)
			TextInputText.Size = UDim2.new(0, 200, 0, 20)
			TextInputText.Font = Enum.Font.GothamBold
			TextInputText.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextInputText.TextSize = 15.000
			TextInputText.TextXAlignment = Enum.TextXAlignment.Left
			TextInputText.Text = TextBoxName

			TextInputPadding.Name = "TextInputPadding"
			TextInputPadding.Parent = TextInput
			TextInputPadding.PaddingLeft = UDim.new(0, 10)

			TextBox.Parent = TextInput
			TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextBox.BorderSizePixel = 0
			TextBox.Position = UDim2.new(0.636742413, 0, 0.200000018, 0)
			TextBox.Size = UDim2.new(0, 103, 0, 23)
			TextBox.Font = Enum.Font.Gotham
			TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.TextSize = 17.000
			TextBox.Text = valuetext

			UICorner.Parent = TextBox

			TextBox.FocusLost:Connect(function()
				youaregay(TextBox.Text)
			end)
		end
		return tabtools
	end
	return tabstuff

end

return uilibrary
