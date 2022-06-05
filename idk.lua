repeat wait() until game:IsLoaded() == true
if setclipboard then setclipboard("https://discord.gg/VjzccAHzR4")  end
local Library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = Library:MakeWindow({Name = "beta roblox gui", HidePremium = false, SaveConfig = false, ConfigFolder = "ThanosDaGamerHub"})

Library:MakeNotification({
    Name = "Welcome!",
    Content = "And by the way, you should join my discord!\nInvite: discord.gg/VjzccAHzR4 (copied to clipboard!)",
    Image = "rbxassetid://4483345998",
    Time = 10,
})

local movement = Window:MakeTab({
    Name = "Movmeent",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false,
})

movement:AddSlider({
    Name = "WalkSpeed",
    Min = 16,
    Max = 54,
    Default = 5,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(v)
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = v
    end    
})
movement:AddSlider({
    Name = "Gravity",
    Min = 0,
    Max = 197,
    Default = 5,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "GravityToSet",
    Callback = function(v)
        game:GetService("Workspace").Gravity = v
    end
    local combat = Window:MakeTab({
    Name = "Combat",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local combat = Window:MakeTab({
    Name = "Combat",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
combat:AddButton({
    Name = "aimbot",
    Callback = function()
              --> variables
local UIS = game:GetService("UserInputService")
local camera = game.Workspace.CurrentCamera
--> getting the closest player
function getClosest()
local closestPlayer = nil
local closesDist = math.huge
for i,v in pairs(game.Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer then
local Dist = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
if Dist < closesDist then
closesDist = Dist
closestPlayer = v
end
end
end
return closestPlayer
end

--> starting the aimbot
_G.aim = false
UIS.InputBegan:Connect(function(inp)
    if inp.UserInputType == Enum.UserInputType.MouseButton2 then
    _G.aim = true
    while wait() do
        camera.CFrame = CFrame.new(camera.CFrame.Position,getClosest().Character.Head.Position)
        if _G.aim == false then return end
    end
    end
end)
--> ending the aimbot
UIS.InputEnded:Connect(function(inp)
    if inp.UserInputType == Enum.UserInputType.MouseButton2 then
    _G.aim = false
    end
end)
      end    
})
})
Library:Init()

