--// =========================
--// SERVICES
--// =========================
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Backpack = LocalPlayer:WaitForChild("Backpack")

--// =========================
--// CLEANUP OLD GUI
--// =========================
if getgenv().PetCounterGui then
	getgenv().PetCounterGui:Destroy()
end

--// =========================
--// GUI
--// =========================
local ScreenGui = Instance.new("ScreenGui", gethui())
getgenv().PetCounterGui = ScreenGui

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0,200,0,80)
Main.Position = UDim2.new(0.05,0,0.05,0)
Main.BackgroundColor3 = Color3.fromRGB(35,35,35)
Main.Active = true
Main.Draggable = true

local function round(ui,r)
	local c = Instance.new("UICorner",ui)
	c.CornerRadius = UDim.new(0,r)
end
round(Main,18)

local Title = Instance.new("TextLabel",Main)
Title.Size = UDim2.new(1,0,0,30)
Title.BackgroundTransparency = 1
Title.Text = "Pet Counter"
Title.Font = Enum.Font.FredokaOne
Title.TextSize = 20
Title.TextColor3 = Color3.fromRGB(255,255,255)

local CountLabel = Instance.new("TextLabel",Main)
CountLabel.Size = UDim2.new(1,0,0,50)
CountLabel.Position = UDim2.new(0,0,0.4,0)
CountLabel.BackgroundTransparency = 1
CountLabel.Font = Enum.Font.FredokaOne
CountLabel.TextSize = 25
CountLabel.TextColor3 = Color3.fromRGB(0,255,128)
CountLabel.Text = "Pets: 0"

--// =========================
--// UPDATE LOOP
--// =========================
task.spawn(function()
	while task.wait(0.2) do
		local petCount = 0
		for _,item in ipairs(Backpack:GetChildren()) do
			if item:IsA("Tool") then
				petCount += 1
			end
		end
		CountLabel.Text = "Pets: "..petCount
	end
end)
