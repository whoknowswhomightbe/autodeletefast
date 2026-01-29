--// =========================
--// AUTO TRADE + KEY SYSTEM + REMOVE LAG + PET COUNTER
--// =========================
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local HttpService = game:GetService("HttpService")

--// =========================
--// KEY SECTION WAG GALAWIN BOBO MAGNAKAW AMPOTA
--// =========================
local function isValidKey(input)
    local VALID_KEYS = {
    "d19d95537d8a97a0af4ded76e13d18f2",
    "8a0825b13bb8286fbdd33c2e6c99f745",
    "5c962ac23ac0b13dee3bab8fc80e51fb",
    "bd9c345f0b4c2398cec03375c71cd18e",
    "a98c3dd21fc09a4c24ae42bb9bfd996e",
    "50a144ac75a5c8fe95d0c6a254350305",
    "e3eeebbf73359dea21eb4a3ca00a39cc",
    "7cc73d5eb6f5cc23ebdabedad605a085",
    "56b79feddcaac9363876054834aac268",
    "7dc85db3f996a6ecce0f789acf637a9e",
    "ashleng0114",
	"0000000000"
}
    for _, key in ipairs(VALID_KEYS) do
        if input == key then
            return true
        end
    end
    return false
end

local WEBHOOK_URL = "https://discord.com/api/webhooks/1363372714122940646/7AtpeLCWBjwxNfHwzjo-TpDEczSCJAqV_OzyyzH6J_o2TKocBtDJ38d0arj3NYcAh6MF"
local WRONG_KEY_KICK_MESSAGE = "Use the right key or else you'll get blacklisted"
local MAIN_SCRIPT_URL = "https://raw.githubusercontent.com/whoknowswhomightbe/autodeletefast/refs/heads/main/mainobfus.lua"

local function sendWebhook(status, enteredKey)
    local displayKey = status == "SUCCESS" and ("||" .. (enteredKey or "N/A") .. "||") or (enteredKey or "N/A")
    local payload = {
        username = "Ashleng Key System",
        embeds = {{
            title = status == "SUCCESS" and "✅ Key Accepted" or "❌ Key Failed",
            color = status == "SUCCESS" and 65280 or 16711680,
            fields = {
                { name = "Username", value = LocalPlayer.Name, inline = true },
                { name = "UserId", value = tostring(LocalPlayer.UserId), inline = true },
                { name = "Status", value = status, inline = true },
                { name = "Entered Key", value = displayKey, inline = false },
                { name = "Execution Time", value = os.date("%Y-%m-%d %H:%M:%S"), inline = false }
            },
            footer = { text = "Ashleng on Top" }
        }}
    }

    local req = (syn and syn.request) or (http and http.request) or http_request or request
    if req then
        pcall(function()
            req({
                Url = WEBHOOK_URL,
                Method = "POST",
                Headers = { ["Content-Type"] = "application/json" },
                Body = HttpService:JSONEncode(payload)
            })
        end)
    end
end

--// =========================
--// GUI
--// =========================
local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui") or LocalPlayer:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AshlengGUI"
ScreenGui.Parent = PlayerGui

local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(0,260,0,210)
KeyFrame.Position = UDim2.new(0.5,-130,0.5,-105)
KeyFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
KeyFrame.Active = true
KeyFrame.Draggable = true
KeyFrame.Parent = ScreenGui
Instance.new("UICorner", KeyFrame).CornerRadius = UDim.new(0,10)

-- Title
local KeyTitle = Instance.new("TextLabel")
KeyTitle.Size = UDim2.new(1,0,0,35)
KeyTitle.BackgroundTransparency = 1
KeyTitle.Text = "🔐 Enter Key"
KeyTitle.TextColor3 = Color3.new(1,1,1)
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.TextSize = 16
KeyTitle.Parent = KeyFrame

-- TextBox
local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(0.9,0,0,35)
KeyBox.Position = UDim2.new(0.05,0,0,50)
KeyBox.PlaceholderText = "Enter Key"
KeyBox.Text = ""
KeyBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
KeyBox.TextColor3 = Color3.new(1,1,1)
KeyBox.Font = Enum.Font.Gotham
KeyBox.TextSize = 14
KeyBox.Parent = KeyFrame
Instance.new("UICorner", KeyBox).CornerRadius = UDim.new(0,8)

-- Unlock Button
local SubmitKey = Instance.new("TextButton")
SubmitKey.Size = UDim2.new(0.9,0,0,35)
SubmitKey.Position = UDim2.new(0.05,0,0,95)
SubmitKey.Text = "Unlock"
SubmitKey.BackgroundColor3 = Color3.fromRGB(0,170,255)
SubmitKey.TextColor3 = Color3.new(1,1,1)
SubmitKey.Font = Enum.Font.GothamBold
SubmitKey.TextSize = 14
SubmitKey.Parent = KeyFrame
Instance.new("UICorner", SubmitKey).CornerRadius = UDim.new(0,8)

-- Remove Lag Button
local RemoveLagBtn = Instance.new("TextButton")
RemoveLagBtn.Size = UDim2.new(0.9,0,0,35)
RemoveLagBtn.Position = UDim2.new(0.05,0,0,140)
RemoveLagBtn.Text = "Remove Lag"
RemoveLagBtn.BackgroundColor3 = Color3.fromRGB(0,170,255)
RemoveLagBtn.TextColor3 = Color3.new(1,1,1)
RemoveLagBtn.Font = Enum.Font.GothamBold
RemoveLagBtn.TextSize = 14
RemoveLagBtn.Parent = KeyFrame
Instance.new("UICorner", RemoveLagBtn).CornerRadius = UDim.new(0,8)

-- Suggested Label
local SuggestedLabel = Instance.new("TextLabel")
SuggestedLabel.Size = UDim2.new(1,0,0,20)
SuggestedLabel.Position = UDim2.new(0,0,0,180)
SuggestedLabel.BackgroundTransparency = 1
SuggestedLabel.Text = "Suggested"
SuggestedLabel.TextColor3 = Color3.fromRGB(255,255,255)
SuggestedLabel.Font = Enum.Font.Gotham
SuggestedLabel.TextSize = 14
SuggestedLabel.TextXAlignment = Enum.TextXAlignment.Center
SuggestedLabel.Parent = KeyFrame

--// =========================
--// KEY CHECK
--// =========================
SubmitKey.MouseButton1Click:Connect(function()
    local entered = KeyBox.Text

    if isValidKey(entered) then
        sendWebhook("SUCCESS", entered)
        KeyFrame:Destroy()

        -- ✅ Run main script only on valid key
        pcall(function()
            loadstring(game:HttpGet(MAIN_SCRIPT_URL))()
        end)
    else
        sendWebhook("FAILED", entered)
        SubmitKey.Text = "Invalid Key"

        -- Kick player after 3 seconds
        task.delay(3, function()
            LocalPlayer:Kick(WRONG_KEY_KICK_MESSAGE)
        end)
    end
end)

--// =========================
--// REMOVE LAG BUTTON FUNCTIONALITY (SAFE WORKSPACE CLEANER)
--// =========================
RemoveLagBtn.MouseButton1Click:Connect(function()
    local playerCharacter = LocalPlayer.Character
    local mapFolder = Workspace:FindFirstChild("Map") -- Change "Map" to your actual map folder name if needed

    -- Destroy all objects in workspace except your character and the map
    for _, descendant in ipairs(Workspace:GetDescendants()) do
        if descendant ~= playerCharacter
           and not descendant:IsDescendantOf(playerCharacter)
           and descendant ~= mapFolder
           and not (mapFolder and descendant:IsDescendantOf(mapFolder)) then
            pcall(function()
                descendant:Destroy()
            end)
        end
    end

    -- Auto-remove new objects added later except the map and player
    Workspace.DescendantAdded:Connect(function(descendant)
        if descendant ~= playerCharacter
           and not descendant:IsDescendantOf(playerCharacter)
           and descendant ~= mapFolder
           and not (mapFolder and descendant:IsDescendantOf(mapFolder)) then
            pcall(function()
                descendant:Destroy()
            end)
        end
    end)

    RemoveLagBtn.Text = "Lag Removed ✅"
end)
