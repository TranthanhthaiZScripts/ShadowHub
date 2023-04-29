-- Booting Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Values & Functions
_G.Key = "TranthanhthaiZScripts"
_G.KeyInput = "string"

function CorrectKey()
OrionLib:MakeNotification({
	Name = "Key!",
	Content = "You have entered the correct key!",
	Image = "",
	Time = 4
})
end


-- Creating Window
local Window = OrionLib:MakeWindow({Name = "Key System Tutorial", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = false})

-- Tabs
local tab1 = Window:MakeTab({
	Name = "Key System",
	Icon = "",
	PremiumOnly = false
})

-- Define tab1
local section1 = tab1:AddSection({
	Name = "Key"
})

tab1:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

tab1:AddButton({
	Name = "Check Key!",
	Callback = function()
            if _G.KeyInput == _G.Key then                
                wait(0.5)
                CorrectKey()
            end
  	end    
})
-- made by TranthanhthaiZScripts

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(183, 101, 255)
Frame.Position = UDim2.new(0.369825214, 0, 0.423832893, 0)
Frame.Size = UDim2.new(0, 316, 0, 325)
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(128, 55, 255)
TextLabel.Size = UDim2.new(0, 316, 0, 50)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Jack Hub Beta"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 30.000

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(128, 55, 255)
TextLabel_2.Position = UDim2.new(0, 0, 0.846153915, 0)
TextLabel_2.Size = UDim2.new(0, 316, 0, 50)
TextLabel_2.Font = Enum.Font.SciFi
TextLabel_2.Text = "TranthanhthaiZScripts Pretent"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 28.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(125, 102, 255)
TextButton.Position = UDim2.new(0.0664556995, 0, 0.212307781, 0)
TextButton.Size = UDim2.new(0, 274, 0, 184)
TextButton.Font = Enum.Font.Cartoon
TextButton.Text = "Activate!"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 50.000
TextButton.MouseButton1Down:connect(function()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()



function Script()
    local Window = Library.CreateLib("Jack Hub Beta Kavo Ui", "No Description")



    local Main = Window:NewTab("Script Hub")
    local MainSection = Main:NewSection("Script Sections")


    -- Sections

    MainSection:NewSlider("Walkspeed", "Changes how fast you walk.", 250, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    MainSection:NewSlider("JumpPower", "Changes how fast you jump.", 250, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    MainSection:NewButton("Fly Script", "Give you infinite yield script.", function()
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()

    end)

    MainSection:NewToggle("Infinite Jump", "Lets you infinitely jump", function()
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
    end)


    -- Credits


    local Credits = Window:NewTab("Credits")
    local CreditsSection = Credits:NewSection("Credits")


    CreditsSection:NewLabel("Created by TranthanhthaiZ")
    


end
end)    
