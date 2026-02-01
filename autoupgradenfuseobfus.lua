--// SERVICES
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

--// GUI SETUP
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "AutoUpgradeFuseGUI"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- MAIN FRAME
local MainFrameBorder = Instance.new("Frame")
MainFrameBorder.Name = "MainFrameBorder"
MainFrameBorder.Parent = ScreenGui
MainFrameBorder.BackgroundColor3 = Color3.fromRGB(30, 35, 65)
MainFrameBorder.BorderSizePixel = 0
MainFrameBorder.Position = UDim2.new(0.198, 0, 0.21, 0)
MainFrameBorder.Size = UDim2.new(0, 750, 0, 500)

local UICorner = Instance.new("UICorner", MainFrameBorder)
UICorner.CornerRadius = UDim.new(0, 15)

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = MainFrameBorder
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 41, 77)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.006, 0, 0.01, 0)
MainFrame.Size = UDim2.new(0, 740, 0, 490)

local UICorner2 = Instance.new("UICorner", MainFrame)
UICorner2.CornerRadius = UDim.new(0, 15)

-- CLOSE BUTTON
local CloseBtnBorder = Instance.new("Frame", MainFrame)
CloseBtnBorder.Size = UDim2.new(0,40,0,40)
CloseBtnBorder.Position = UDim2.new(0.963,0,-0.024,0)
CloseBtnBorder.BackgroundColor3 = Color3.fromRGB(85,0,0)
CloseBtnBorder.BorderSizePixel = 0

local UICorner3 = Instance.new("UICorner", CloseBtnBorder)
UICorner3.CornerRadius = UDim.new(0,12)

local CloseBtn = Instance.new("TextButton", CloseBtnBorder)
CloseBtn.Size = UDim2.new(0,35,0,35)
CloseBtn.Position = UDim2.new(0.05,0,0.05,0)
CloseBtn.BackgroundColor3 = Color3.fromRGB(170,0,0)
CloseBtn.BorderSizePixel = 0
CloseBtn.Font = Enum.Font.FredokaOne
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255,255,255)
CloseBtn.TextSize = 25

local UICorner4 = Instance.new("UICorner", CloseBtn)
UICorner4.CornerRadius = UDim.new(0,12)

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- LEFT FRAME (Player Info + Stats)
local LeftFrame = Instance.new("Frame", MainFrame)
LeftFrame.Size = UDim2.new(0,200,0,460)
LeftFrame.Position = UDim2.new(0.01,0,0.03,0)
LeftFrame.BackgroundColor3 = Color3.fromRGB(30,35,65)
LeftFrame.BorderSizePixel = 0

local UICorner5 = Instance.new("UICorner", LeftFrame)
UICorner5.CornerRadius = UDim.new(0,25)

local PlayerImg = Instance.new("ImageLabel", LeftFrame)
PlayerImg.Size = UDim2.new(0,50,0,50)
PlayerImg.Position = UDim2.new(0.375,0,0.054,0)
PlayerImg.BackgroundColor3 = Color3.fromRGB(255,255,255)
PlayerImg.BorderSizePixel = 0

local UICorner6 = Instance.new("UICorner", PlayerImg)
UICorner6.CornerRadius = UDim.new(0,50)

local Username = Instance.new("TextLabel", LeftFrame)
Username.Size = UDim2.new(0,200,0,50)
Username.Position = UDim2.new(0,0,0.134,0)
Username.BackgroundTransparency = 1
Username.Font = Enum.Font.FredokaOne
Username.TextColor3 = Color3.fromRGB(0,255,255)
Username.TextSize = 14
Username.Text = "@"..LocalPlayer.Name

local HideUserBtn = Instance.new("TextButton", LeftFrame)
HideUserBtn.Size = UDim2.new(0,100,0,25)
HideUserBtn.Position = UDim2.new(0.25,0,0.213,0)
HideUserBtn.BackgroundColor3 = Color3.fromRGB(35,41,77)
HideUserBtn.Text = "Hide Username"
HideUserBtn.Font = Enum.Font.FredokaOne
HideUserBtn.TextColor3 = Color3.fromRGB(255,255,255)
HideUserBtn.TextSize = 14

local UICorner7 = Instance.new("UICorner", HideUserBtn)
UICorner7.CornerRadius = UDim.new(0,15)

-- STATS LABELS
local StatsLabel = Instance.new("TextLabel", LeftFrame)
StatsLabel.Size = UDim2.new(0,200,0,50)
StatsLabel.Position = UDim2.new(0,0,0.321,0)
StatsLabel.BackgroundTransparency = 1
StatsLabel.Font = Enum.Font.FredokaOne
StatsLabel.TextColor3 = Color3.fromRGB(170,255,255)
StatsLabel.TextSize = 14
StatsLabel.Text = "Stats :"

local RebirthLabel = Instance.new("TextLabel", LeftFrame)
RebirthLabel.Size = UDim2.new(0,200,0,50)
RebirthLabel.Position = UDim2.new(0,0,0.465,0)
RebirthLabel.BackgroundTransparency = 1
RebirthLabel.Font = Enum.Font.FredokaOne
RebirthLabel.TextColor3 = Color3.fromRGB(0,209,209)
RebirthLabel.TextSize = 14
RebirthLabel.Text = "Rebirth : 0"

local SpeedLabel = Instance.new("TextLabel", LeftFrame)
SpeedLabel.Size = UDim2.new(0,200,0,50)
SpeedLabel.Position = UDim2.new(0,0,0.573,0)
SpeedLabel.BackgroundTransparency = 1
SpeedLabel.Font = Enum.Font.FredokaOne
SpeedLabel.TextColor3 = Color3.fromRGB(0,209,209)
SpeedLabel.TextSize = 14
SpeedLabel.Text = "Speed : 0"

local MoneyLabel = Instance.new("TextLabel", LeftFrame)
MoneyLabel.Size = UDim2.new(0,200,0,50)
MoneyLabel.Position = UDim2.new(0,0,0.682,0)
MoneyLabel.BackgroundTransparency = 1
MoneyLabel.Font = Enum.Font.FredokaOne
MoneyLabel.TextColor3 = Color3.fromRGB(0,209,209)
MoneyLabel.TextSize = 14
MoneyLabel.Text = "Money : $0"

local GenLabel = Instance.new("TextLabel", LeftFrame)
GenLabel.Size = UDim2.new(0,200,0,50)
GenLabel.Position = UDim2.new(0,0,0.791,0)
GenLabel.BackgroundTransparency = 1
GenLabel.Font = Enum.Font.FredokaOne
GenLabel.TextColor3 = Color3.fromRGB(0,209,209)
GenLabel.TextSize = 14
GenLabel.Text = "Generating : 0"

-- HIDE USERNAME LOGIC
local hideUsername = false
HideUserBtn.MouseButton1Click:Connect(function()
    hideUsername = not hideUsername
    if hideUsername then
        Username.Text = "@Hidden"
    else
        Username.Text = "@"..LocalPlayer.Name
    end
end)

-- UPDATE LOOP FOR STATS
task.spawn(function()
    while task.wait(0.25) do
        PlayerImg.Image =
            "https://www.roblox.com/headshot-thumbnail/image?userId="
            .. LocalPlayer.UserId
            .. "&width=420&height=420&format=png"

        local pg = LocalPlayer:FindFirstChild("PlayerGui")
        if not pg then continue end

        local rebObj = pg:FindFirstChild("Menus") and pg.Menus:FindFirstChild("Rebirth")
        if rebObj and rebObj:FindFirstChild("CurrentRebirth") then
            local txt = rebObj.CurrentRebirth.Rebirth.Text
            local num = string.match(txt, "%d+")
            RebirthLabel.Text = "Rebirth : " .. (num or "0")
        end

        local hud = pg:FindFirstChild("HUD") and pg.HUD:FindFirstChild("BottomLeft")
        if hud then
            if hud:FindFirstChild("PlayerSpeed") then
                SpeedLabel.Text = "Speed : " .. hud.PlayerSpeed.Speed.Text
            end
            if hud:FindFirstChild("Money") then
                MoneyLabel.Text = "Money : " .. hud.Money.Text
            end
        end

        if LocalPlayer:FindFirstChild("leaderstats") then
            local gen = LocalPlayer.leaderstats:FindFirstChild("Gen/s")
            if gen then
                GenLabel.Text = "Generating : " .. gen.Value
            end
        end
    end
end)


-- RIGHT FRAME (Auto Upgrade / Fuse)
local RightFrame = Instance.new("Frame", MainFrame)
RightFrame.Size = UDim2.new(0,480,0,460)
RightFrame.Position = UDim2.new(0.317,0,0.03,0)
RightFrame.BackgroundColor3 = Color3.fromRGB(30,35,65)
RightFrame.BorderSizePixel = 0

local UICorner8 = Instance.new("UICorner", RightFrame)
UICorner8.CornerRadius = UDim.new(0,25)

-- Titles
local AutoUpgradeTitle = Instance.new("TextLabel", RightFrame)
AutoUpgradeTitle.Size = UDim2.new(0,200,0,50)
AutoUpgradeTitle.Position = UDim2.new(0.29,0,0.02,0)
AutoUpgradeTitle.Text = "Auto Upgrade"
AutoUpgradeTitle.Font = Enum.Font.FredokaOne
AutoUpgradeTitle.TextColor3 = Color3.fromRGB(170,255,255)
AutoUpgradeTitle.BackgroundTransparency = 1
AutoUpgradeTitle.TextSize = 14

local AutoFuseTitle = Instance.new("TextLabel", RightFrame)
AutoFuseTitle.Size = UDim2.new(0,200,0,50)
AutoFuseTitle.Position = UDim2.new(0.29,0,0.46,0)
AutoFuseTitle.Text = "Auto Fuse"
AutoFuseTitle.Font = Enum.Font.FredokaOne
AutoFuseTitle.TextColor3 = Color3.fromRGB(170,255,255)
AutoFuseTitle.BackgroundTransparency = 1
AutoFuseTitle.TextSize = 14

-- Upgrade Buttons
local SelectBrainrotUpg = Instance.new("TextButton", RightFrame)
SelectBrainrotUpg.Size = UDim2.new(0,400,0,30)
SelectBrainrotUpg.Position = UDim2.new(0.083,0,0.135,0)
SelectBrainrotUpg.Text = "Selected Brainrots: None"
SelectBrainrotUpg.TextColor3 = Color3.fromRGB(0,255,255)
SelectBrainrotUpg.Font = Enum.Font.FredokaOne
SelectBrainrotUpg.TextSize = 14
SelectBrainrotUpg.BackgroundColor3 = Color3.fromRGB(35,41,77)
local UICorner9 = Instance.new("UICorner", SelectBrainrotUpg)
UICorner9.CornerRadius = UDim.new(0,25)

local SelectLevelUpg = Instance.new("TextButton", RightFrame)
SelectLevelUpg.Size = UDim2.new(0,400,0,30)
SelectLevelUpg.Position = UDim2.new(0.083,0,0.243,0)
SelectLevelUpg.Text = "Selected Level : 125"
SelectLevelUpg.TextColor3 = Color3.fromRGB(0,255,255)
SelectLevelUpg.Font = Enum.Font.FredokaOne
SelectLevelUpg.TextSize = 14
SelectLevelUpg.BackgroundColor3 = Color3.fromRGB(35,41,77)
local UICorner10 = Instance.new("UICorner", SelectLevelUpg)
UICorner10.CornerRadius = UDim.new(0,25)

-- Fuse Buttons
local SelectBrainrotFuse = Instance.new("TextButton", RightFrame)
SelectBrainrotFuse.Size = UDim2.new(0,400,0,30)
SelectBrainrotFuse.Position = UDim2.new(0.083,0,0.593,0)
SelectBrainrotFuse.Text = "Selected Brainrots : None"
SelectBrainrotFuse.TextColor3 = Color3.fromRGB(0,255,255)
SelectBrainrotFuse.Font = Enum.Font.FredokaOne
SelectBrainrotFuse.TextSize = 14
SelectBrainrotFuse.BackgroundColor3 = Color3.fromRGB(35,41,77)
local UICorner12 = Instance.new("UICorner", SelectBrainrotFuse)
UICorner12.CornerRadius = UDim.new(0,25)

local SelectLevelFuse = Instance.new("TextButton", RightFrame)
SelectLevelFuse.Size = UDim2.new(0,400,0,30)
SelectLevelFuse.Position = UDim2.new(0.083,0,0.702,0)
SelectLevelFuse.Text = "Refresh List"
SelectLevelFuse.TextColor3 = Color3.fromRGB(0,255,255)
SelectLevelFuse.Font = Enum.Font.FredokaOne
SelectLevelFuse.TextSize = 14
SelectLevelFuse.BackgroundColor3 = Color3.fromRGB(35,41,77)
local UICorner13 = Instance.new("UICorner", SelectLevelFuse)
UICorner13.CornerRadius = UDim.new(0,25)

-- Toggle buttons
local AutoUpgToggle = Instance.new("TextButton", RightFrame)
AutoUpgToggle.Size = UDim2.new(0,400,0,30)
AutoUpgToggle.Position = UDim2.new(0.083,0,0.356,0)
AutoUpgToggle.Text = "Auto Upgrade : OFF"
AutoUpgToggle.TextColor3 = Color3.fromRGB(170,0,0)
AutoUpgToggle.Font = Enum.Font.FredokaOne
AutoUpgToggle.TextSize = 14
AutoUpgToggle.BackgroundColor3 = Color3.fromRGB(22,26,48)
local UICorner11 = Instance.new("UICorner", AutoUpgToggle)
UICorner11.CornerRadius = UDim.new(0,25)

local AutoFuseToggle = Instance.new("TextButton", RightFrame)
AutoFuseToggle.Size = UDim2.new(0,400,0,30)
AutoFuseToggle.Position = UDim2.new(0.083,0,0.815,0)
AutoFuseToggle.Text = "Auto Fuse : OFF"
AutoFuseToggle.TextColor3 = Color3.fromRGB(170,0,0)
AutoFuseToggle.Font = Enum.Font.FredokaOne
AutoFuseToggle.TextSize = 14
AutoFuseToggle.BackgroundColor3 = Color3.fromRGB(22,26,48)
local UICorner14 = Instance.new("UICorner", AutoFuseToggle)
UICorner14.CornerRadius = UDim.new(0,25)

AutoFuseToggle.MouseButton1Click:Connect(function()
end)


--// DRAG FUNCTIONALITY
local dragging = false
local dragInput, dragStart, startPos
local function update(input)
    local delta = input.Position - dragStart
    MainFrameBorder.Position = UDim2.new(
        startPos.X.Scale, startPos.X.Offset + delta.X,
        startPos.Y.Scale, startPos.Y.Offset + delta.Y
    )
end

MainFrameBorder.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = MainFrameBorder.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

MainFrameBorder.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

--// BRAINROT LIST
local BrainrotList = {
    "All", -- you can replace this with your full Brainrot list
}

-- DROPDOWN PADDING
local dropdownPadding = 5

--// BRAINROT DROPDOWN WITH MULTI-SELECTION
local selectedBrainrotsUpg = {} -- table to store selected brainrots

local BrainrotDropdown = Instance.new("Frame", RightFrame)
BrainrotDropdown.Size = UDim2.new(0, 400, 0, 250)
BrainrotDropdown.Position = UDim2.new(
    SelectBrainrotUpg.Position.X.Scale,
    SelectBrainrotUpg.Position.X.Offset,
    SelectBrainrotUpg.Position.Y.Scale,
    SelectBrainrotUpg.Position.Y.Offset + SelectBrainrotUpg.AbsoluteSize.Y + dropdownPadding
)
BrainrotDropdown.Visible = false
BrainrotDropdown.BackgroundColor3 = Color3.fromRGB(22, 26, 48)

local UICornerDD = Instance.new("UICorner", BrainrotDropdown)
UICornerDD.CornerRadius = UDim.new(0, 15)

local SearchBox = Instance.new("TextBox", BrainrotDropdown)
SearchBox.Size = UDim2.new(1, -10, 0, 30)
SearchBox.Position = UDim2.new(0, 5, 0, 5)
SearchBox.PlaceholderText = "Search Brainrot..."
SearchBox.Text = ""
SearchBox.TextColor3 = Color3.fromRGB(0, 255, 255)
SearchBox.Font = Enum.Font.FredokaOne
SearchBox.TextSize = 14
SearchBox.BackgroundColor3 = Color3.fromRGB(35, 41, 77)
local UICornerSearch = Instance.new("UICorner", SearchBox)
UICornerSearch.CornerRadius = UDim.new(0, 15)

local Scroll = Instance.new("ScrollingFrame", BrainrotDropdown)
Scroll.Size = UDim2.new(1, -10, 1, -45)
Scroll.Position = UDim2.new(0, 5, 0, 40)
Scroll.ScrollBarThickness = 6
Scroll.BackgroundTransparency = 1

local function updateBrainrotButtonText()
    if #selectedBrainrotsUpg == 0 then
        SelectBrainrotUpg.Text = "Selected Brainrots: None"
    else
        SelectBrainrotUpg.Text = "Selected Brainrots: "..table.concat(selectedBrainrotsUpg, ", ")
    end
end

local function populateButtons(filter)
    Scroll:ClearAllChildren()
    local yPos = 0
    for i, name in ipairs(BrainrotList) do
        if not filter or name:lower():find(filter:lower()) then
            local btn = Instance.new("TextButton", Scroll)
            btn.Size = UDim2.new(1, 0, 0, 30)
            btn.Position = UDim2.new(0, 0, 0, yPos)
            btn.Text = name
            btn.Font = Enum.Font.FredokaOne
            btn.TextColor3 = Color3.fromRGB(0, 255, 255)
            btn.TextSize = 14
            btn.BackgroundColor3 = Color3.fromRGB(35, 41, 77)
            local UIC = Instance.new("UICorner", btn)
            UIC.CornerRadius = UDim.new(0, 15)

            btn.MouseButton1Click:Connect(function()
                if name == "All" then
                    selectedBrainrotsUpg = {"All"}
                    updateBrainrotButtonText()
                    BrainrotDropdown.Visible = false
                    return
                end

                -- Remove "All" if selecting others
                for i, v in ipairs(selectedBrainrotsUpg) do
                    if v == "All" then
                        table.remove(selectedBrainrotsUpg, i)
                        break
                    end
                end

                -- Toggle selection
                local found = false
                for index, b in ipairs(selectedBrainrotsUpg) do
                    if b == name then
                        table.remove(selectedBrainrotsUpg, index)
                        found = true
                        break
                    end
                end
                if not found then
                    table.insert(selectedBrainrotsUpg, name)
                end

                updateBrainrotButtonText()
            end)

            yPos = yPos + 35
        end
    end
    Scroll.CanvasSize = UDim2.new(0,0,0,yPos)
end

populateButtons()
SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    populateButtons(SearchBox.Text)
end)

SelectBrainrotUpg.MouseButton1Click:Connect(function()
    BrainrotDropdown.Visible = not BrainrotDropdown.Visible
end)



-- FUSE BRAINROT LIST
local brainrotsList = {
    -- Divine Tier
    "Strawberry Elephant",
    "Burgarini Birini",
    "Bulbito",

    -- Celestial Tier
    "Esok Sekolah",
    "Alessio",
    "Bisonte Gupitere",
    "Dug Dug Dug",
    "Job Job Sahur",

    -- Secret Tier
    "Fragola La La La",
    "Rainbow 67",
    "Aura Farma",
    "Los Tungtungtungcitos",
    "Espresso Signora",
    "Unclito Samito",
    "Gattatino Nyanino",
    "Gattatino Neonino",
    "Statutino Libertino",
    "Matteo",

    -- Cosmic Tier
    "Chimpanzini Spiderini",
    "Agarrini la Palini",
    "Dragon Cannelloni",
    "Nuclearo Dinossauro",
    "Garama",
    "Madundung",
    "La Grande Combinasion",
    "La Vacca Saturno Saturnita",
    "Las Vaquitas Saturnitas",
    "Las Tralaleritas",
    "Los Tralaleritos",
    "Chicleteira Bicicleteira",
    "Pot Hotspot",
    "Torrtuginni Dragonfrutini"
}


-- FUSE BRAINROT DROPDOWN WITH MAX 3 SELECTIONS
local selectedBrainrotsFuse = {} -- table to store selected brainrots
local dropdownPadding = 5 -- same padding as upgrade dropdown

-- Create dropdown frame
local FuseDropdown = Instance.new("Frame", RightFrame)
FuseDropdown.Size = UDim2.new(0, 400, 0, 250)
FuseDropdown.Position = UDim2.new(
    SelectBrainrotFuse.Position.X.Scale,
    SelectBrainrotFuse.Position.X.Offset,
    SelectBrainrotFuse.Position.Y.Scale,
    SelectBrainrotFuse.Position.Y.Offset + SelectBrainrotFuse.AbsoluteSize.Y + dropdownPadding
)
FuseDropdown.Visible = false
FuseDropdown.BackgroundColor3 = Color3.fromRGB(22, 26, 48)

local UICornerFuse = Instance.new("UICorner", FuseDropdown)
UICornerFuse.CornerRadius = UDim.new(0, 15)

-- Search Box
local FuseSearchBox = Instance.new("TextBox", FuseDropdown)
FuseSearchBox.Size = UDim2.new(1, -10, 0, 30)
FuseSearchBox.Position = UDim2.new(0, 5, 0, 5)
FuseSearchBox.PlaceholderText = "Search Brainrot..."
FuseSearchBox.Text = ""
FuseSearchBox.TextColor3 = Color3.fromRGB(0, 255, 255)
FuseSearchBox.Font = Enum.Font.FredokaOne
FuseSearchBox.TextSize = 14
FuseSearchBox.BackgroundColor3 = Color3.fromRGB(35, 41, 77)
local UICornerFuseSearch = Instance.new("UICorner", FuseSearchBox)
UICornerFuseSearch.CornerRadius = UDim.new(0, 15)

-- Scrolling frame for buttons
local FuseScroll = Instance.new("ScrollingFrame", FuseDropdown)
FuseScroll.Size = UDim2.new(1, -10, 1, -45)
FuseScroll.Position = UDim2.new(0, 5, 0, 40)
FuseScroll.ScrollBarThickness = 6
FuseScroll.BackgroundTransparency = 1

-- Update Fuse Button text
local function updateFuseButtonText()
    if #selectedBrainrotsFuse == 0 then
        SelectBrainrotFuse.Text = "Selected Brainrots: None"
    else
        SelectBrainrotFuse.Text = "Selected Brainrots: "..table.concat(selectedBrainrotsFuse, ", ")
    end
end

-- Populate fuse buttons
local function populateFuseButtons(filter)
    FuseScroll:ClearAllChildren()
    local yPos = 0
    for i, name in ipairs(brainrotsList) do
        if not filter or name:lower():find(filter:lower()) then
            local btn = Instance.new("TextButton", FuseScroll)
            btn.Size = UDim2.new(1, 0, 0, 30)
            btn.Position = UDim2.new(0, 0, 0, yPos)
            btn.Text = name
            btn.Font = Enum.Font.FredokaOne
            btn.TextColor3 = Color3.fromRGB(0, 255, 255)
            btn.TextSize = 14
            btn.BackgroundColor3 = Color3.fromRGB(35, 41, 77)
            local UIC = Instance.new("UICorner", btn)
            UIC.CornerRadius = UDim.new(0, 15)

            -- Allow duplicates, max 3
            btn.MouseButton1Click:Connect(function()
                if #selectedBrainrotsFuse >= 3 then
                    SelectBrainrotFuse.Text = "Max 3 Brainrots!"
                    task.delay(1, function()
                        updateFuseButtonText()
                    end)
                    return
                end

                table.insert(selectedBrainrotsFuse, name)
                updateFuseButtonText()
            end)

            yPos = yPos + 35
        end
    end
    FuseScroll.CanvasSize = UDim2.new(0,0,0,yPos)
end

-- Refresh List (FUSE DROPDOWN)
SelectLevelFuse.MouseButton1Click:Connect(function()
    -- Clear selected fuse brainrots
    selectedBrainrotsFuse = {}
    
    -- Update the button text
    SelectBrainrotFuse.Text = "Selected Brainrots : None"
    
    -- Optional: clear search box
    FuseSearchBox.Text = ""
    
    -- Optional: close dropdown
    FuseDropdown.Visible = false
end)



-- Initial populate
populateFuseButtons()
FuseSearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    populateFuseButtons(FuseSearchBox.Text)
end)

-- Toggle dropdown visibility
SelectBrainrotFuse.MouseButton1Click:Connect(function()
    FuseDropdown.Visible = not FuseDropdown.Visible
end)

task.spawn(function()
    while task.wait(0.1) do
        if BrainrotDropdown.Visible then
            BrainrotDropdown.Position = UDim2.new(
                SelectBrainrotUpg.Position.X.Scale,
                SelectBrainrotUpg.Position.X.Offset,
                SelectBrainrotUpg.Position.Y.Scale,
                SelectBrainrotUpg.Position.Y.Offset
                    + SelectBrainrotUpg.AbsoluteSize.Y
                    + dropdownPadding
            )
        end

        if FuseDropdown.Visible then
            FuseDropdown.Position = UDim2.new(
                SelectBrainrotFuse.Position.X.Scale,
                SelectBrainrotFuse.Position.X.Offset,
                SelectBrainrotFuse.Position.Y.Scale,
                SelectBrainrotFuse.Position.Y.Offset
                    + SelectBrainrotFuse.AbsoluteSize.Y
                    + dropdownPadding
            )
        end
    end
end)




--------------------------------------------------
-- AUTO UPGRADE LOGIC (ADDED ONLY)
--------------------------------------------------

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local autoUpgradeEnabled = false

-- Find player's base UUID using DisplayName
local function getPlayerBaseUUID()
    local bases = workspace:FindFirstChild("Bases")
    if not bases then return nil end

    for _, base in ipairs(bases:GetChildren()) do
        local nameLabel =
            base:FindFirstChild("Title")
            and base.Title:FindFirstChild("TitleGui")
            and base.Title.TitleGui:FindFirstChild("Frame")
            and base.Title.TitleGui.Frame:FindFirstChild("PlayerName")

        if nameLabel and nameLabel.Text == LocalPlayer.DisplayName then
            return base.Name
        end
    end
    return nil
end

AutoUpgToggle.MouseButton1Click:Connect(function()
    local hasBrainrot = (typeof(selectedBrainrotsUpg) == "table" and #selectedBrainrotsUpg > 0)
    local hasLevel = (selectedLevelUpg ~= nil)


    local function resetToOff()
        task.delay(1.5, function()
            if not autoUpgradeEnabled then
                AutoUpgToggle.Text = "Auto Upgrade : OFF"
                AutoUpgToggle.TextColor3 = Color3.fromRGB(170, 0, 0)
            end
        end)
    end

    -- ❌ Missing brainrot
    if not hasBrainrot then
        AutoUpgToggle.Text = "Choose Brainrot..."
        AutoUpgToggle.TextColor3 = Color3.fromRGB(255, 170, 0)
        resetToOff()
        return
    end

    -- ✅ Valid → toggle normally
    autoUpgradeEnabled = not autoUpgradeEnabled

    if autoUpgradeEnabled then
        AutoUpgToggle.Text = "Auto Upgrade : ON"
        AutoUpgToggle.TextColor3 = Color3.fromRGB(0, 255, 0)
    else
        AutoUpgToggle.Text = "Auto Upgrade : OFF"
        AutoUpgToggle.TextColor3 = Color3.fromRGB(170, 0, 0)
    end
end)

--// HIDE/SHOW GUI BUTTON
local HideShowBtn = Instance.new("TextButton", ScreenGui)
HideShowBtn.Size = UDim2.new(0, 30, 0, 90)
HideShowBtn.Position = UDim2.new(0, 0, 0.21, 0) -- Left side
HideShowBtn.BackgroundColor3 = Color3.fromRGB(30, 35, 65) -- same as MainFrameBorder
HideShowBtn.Text = "III"
HideShowBtn.Draggable = true
HideShowBtn.TextColor3 = Color3.fromRGB(0, 255, 255)
HideShowBtn.Font = Enum.Font.FredokaOne
HideShowBtn.TextSize = 20
HideShowBtn.BorderSizePixel = 0

local UICornerHS = Instance.new("UICorner", HideShowBtn)
UICornerHS.CornerRadius = UDim.new(0, 10)

local guiVisible = true
HideShowBtn.MouseButton1Click:Connect(function()
    guiVisible = not guiVisible
    MainFrameBorder.Visible = guiVisible
end)

task.spawn(function()
    local CALLS_PER_TICK = 125
    local SLOTS_TO_UPGRADE = {6, 5}

    while true do
        task.wait(0.5)

        if not autoUpgradeEnabled then
            continue
        end

        local baseUUID = getPlayerBaseUUID()
        if not baseUUID then
            continue
        end

        for i = 1, CALLS_PER_TICK do
            if not autoUpgradeEnabled then break end

            -- Cycle only through slots 31–35
            local slot = SLOTS_TO_UPGRADE[((i - 1) % #SLOTS_TO_UPGRADE) + 1]

                pcall(function()
                    ReplicatedStorage.Packages.Net["RF/Plot.PlotAction"]
                        :InvokeServer("Upgrade Brainrot", baseUUID, tostring(slot))
                end)
            end)
        end
    end
end)



