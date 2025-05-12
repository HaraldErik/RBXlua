-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Player and GUI setup
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CoordinateDisplay"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Create Coordinate TextLabel
local coordLabel = Instance.new("TextLabel")
coordLabel.Size = UDim2.new(0, 320, 0, 50)
coordLabel.Position = UDim2.new(0.5, -160, 1, -55) -- Bottom center
coordLabel.BackgroundTransparency = 0.3
coordLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
coordLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
coordLabel.Font = Enum.Font.Gotham
coordLabel.TextScaled = true
coordLabel.Text = "Position: (0, 0, 0) | Team: N/A"
coordLabel.AnchorPoint = Vector2.new(0, 0)
coordLabel.Parent = screenGui

-- Optional: Rounded corners and stroke
local corner = Instance.new("UICorner", coordLabel)
corner.CornerRadius = UDim.new(0, 8)

local stroke = Instance.new("UIStroke", coordLabel)
stroke.Color = Color3.fromRGB(180, 180, 180)
stroke.Thickness = 1.2

-- Update coordinates and team every frame
RunService.RenderStepped:Connect(function()
	local character = player.Character
	local teamName = player.Team and player.Team.Name or "N/A"

	if character and character:FindFirstChild("HumanoidRootPart") then
		local pos = character.HumanoidRootPart.Position
		coordLabel.Text = string.format("Position: (%.1f, %.1f, %.1f) | Team: %s", pos.X, pos.Y, pos.Z, teamName)
	end
end)
