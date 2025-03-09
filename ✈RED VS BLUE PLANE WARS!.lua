local UserInputService = game:GetService("UserInputService")
local Player = game.Players.LocalPlayer
local Library = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local GameModes = Instance.new("TextLabel")
local CaptureButton = Instance.new("TextButton")
local ColonizerButton = Instance.new("TextButton")
local KingButton = Instance.new("TextButton")
local Credits = Instance.new("TextLabel") 

Library.Name = "CustomGUI"
Library.ResetOnSpawn = false 
Library.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = Library
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Size = UDim2.new(0, 220, 0, 240)
Frame.Position = UDim2.new(0.5, -110, 0.5, -110)
Frame.BorderSizePixel = 2
Frame.Active = true
Frame.Draggable = true

Title.Parent = Frame
Title.Text = "✈RED VS BLUE PLANE WARS!"
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18

GameModes.Parent = Frame
GameModes.Text = "Game Modes"
GameModes.Size = UDim2.new(1, 0, 0, 20)
GameModes.Position = UDim2.new(0, 0, 0, 30)
GameModes.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
GameModes.TextColor3 = Color3.fromRGB(255, 255, 255)
GameModes.Font = Enum.Font.SourceSansBold
GameModes.TextSize = 16

CaptureButton.Parent = Frame
CaptureButton.Text = "Capture The Flag"
CaptureButton.Size = UDim2.new(1, 0, 0, 40)
CaptureButton.Position = UDim2.new(0, 0, 0, 50)
CaptureButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
CaptureButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CaptureButton.Font = Enum.Font.SourceSansBold
CaptureButton.TextSize = 16

ColonizerButton.Parent = Frame
ColonizerButton.Text = "Colonizer"
ColonizerButton.Size = UDim2.new(1, 0, 0, 40)
ColonizerButton.Position = UDim2.new(0, 0, 0, 100)
ColonizerButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ColonizerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ColonizerButton.Font = Enum.Font.SourceSansBold
ColonizerButton.TextSize = 16

KingButton.Parent = Frame
KingButton.Text = "King of the Hill ᵃˡᵖʰᵃ"
KingButton.Size = UDim2.new(1, 0, 0, 40)
KingButton.Position = UDim2.new(0, 0, 0, 150)
KingButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
KingButton.TextColor3 = Color3.fromRGB(255, 255, 255)
KingButton.Font = Enum.Font.SourceSansBold
KingButton.TextSize = 16

Credits.Parent = Frame
Credits.Text = "Close Menu(Del) - LiteFarm"
Credits.Size = UDim2.new(1, 0, 0, 30)
Credits.Position = UDim2.new(0, 0, 1, -30)
Credits.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Credits.TextColor3 = Color3.fromRGB(200, 200, 200)
Credits.Font = Enum.Font.SourceSansBold
Credits.TextSize = 14

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Delete then
        Library.Enabled = not Library.Enabled
    end
end)

CaptureButton.MouseButton1Click:Connect(function()
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    
    local RedBase = CFrame.new(262.353759765625, 0.7881783246994019, -663.831298828125)
    local BlueBase = CFrame.new(188.01919555664062, 2.532822370529175, -2872.580078125)
    local BlueWalk1 = CFrame.new(190, 2.5, -2870)
    local BlueWalk2 = CFrame.new(185, 2.5, -2875)

    for i = 1, 4 do
        HumanoidRootPart.CFrame = BlueBase
        wait(0.3)
        HumanoidRootPart.CFrame = BlueWalk1
        wait(0.3)
        HumanoidRootPart.CFrame = BlueWalk2
        wait(0.3)
        HumanoidRootPart.CFrame = BlueBase
        wait(0.5)
        HumanoidRootPart.CFrame = RedBase
        wait(1.5)
    end
end)

ColonizerButton.MouseButton1Click:Connect(function()
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    
    local Locations = {
        CFrame.new(2620.143, 3.063, -1733.865),
        CFrame.new(1593.807, 3.063, -1733.401),
        CFrame.new(-2206.592, -0.009, -1730.540),
        CFrame.new(-956.446, 3.063, -1751.963),
        CFrame.new(-158.789, 42.492, -1737.155),
        CFrame.new(306.236, 3.063, -1801.884),
        CFrame.new(852.324, 146.564, -1722.556),
        CFrame.new(189.847, 2.953, -2870.853),
        CFrame.new(259.333, 1.208, -664.724)
    }
    
    for _, location in ipairs(Locations) do
        HumanoidRootPart.CFrame = location
        wait(0.5)
    end
end)

KingButton.MouseButton1Click:Connect(function()
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    
    local skyPlatform = Instance.new("Part")
    skyPlatform.Size = Vector3.new(500, 20, 500)
    skyPlatform.Position = Vector3.new(500, 5000, -1800)
    skyPlatform.Anchored = true
    skyPlatform.Transparency = 1
    skyPlatform.Parent = game.Workspace

    while true do
        HumanoidRootPart.CFrame = CFrame.new(305.9568, 3.0931, -1805.4818)
        wait(0.5)
        HumanoidRootPart.CFrame = CFrame.new(skyPlatform.Position + Vector3.new(0, 76, 0))
        wait(7)
    end
end)