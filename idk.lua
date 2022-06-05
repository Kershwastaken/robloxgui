repeat wait() until game:IsLoaded() == true
if setclipboard then setclipboard("https://discord.gg/VjzccAHzR4")  end
local Library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = Library:MakeWindow({Name = "ThanosDaGamer's Hub", HidePremium = false, SaveConfig = false, ConfigFolder = "ThanosDaGamerHub"})

Library:MakeNotification({
    Name = "Welcome!",
    Content = "And by the way, you should join our discord!\nInvite: VjzccAHzR4",
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
})
Library:Init()
