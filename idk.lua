repeat wait() until game:IsLoaded() == true
if setclipboard then setclipboard("https://discord.gg/VjzccAHzR4a")  end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = Library:MakeWindow({Name = "Thanos hub", HidePremium = false, SaveConfig = false, ConfigFolder = "ThanosDaGamerHub"})

Library:MakeNotification({
    Name = "Welcome!",
    Content = "And by the way, you should join my discord!\nInvite: VjzccAHzR4(copied to clipboard)",
    Image = "rbxassetid://4483345998",
    Time = 10,
})

local movement = Window:MakeTab({
    Name = "Movmeent",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false,
})
local combat = Window:MakeTab({
    Name = "Combat",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false,
})
local render = Window:MakeTab({
    Name = "Render",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false,
})
local credits = Window:MakeTab({
    Name = "credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false,
})
local bedwars = Window:MakeTab({
	Name = "bedwars",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local gui = Window:MakeTab({
    Name = "gui",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false,
})


movement:AddSlider({
    Name = "WalkSpeed",
    Min = 16,
    Max = 300,
    Default = 5,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(v)
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = v
    end
})
movement:AddToggle({
     Name = "UseCFRame",
     Default = false,
     Callback = function(v)
          shared.USE_CF_INSTEAD = v
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Thanosdagamer/cframe/main/code"))()
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
combat:AddButton({
    Name = "Aimbot",
    Callback = function()
        _G.AimbotInput = "RightClick"
        _G.AimbotEasing = 0.000000000000001
        _G.TeamCheck = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-aimbot/main/script.lua"))()
    end
})
render:AddButton({
    Name = "ESP",
    Callback = function()
	_G.FriendColor = Color3.fromRGB(0, 0, 255)
	_G.EnemyColor = Color3.fromRGB(255, 0, 0)
	_G.UseTeamColor = false
	loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-esp/main/esp.lua"))()
    end
})
credits:AddLabel("a person i will not say cuz he asked")
credits:AddLabel("also me")

bedwars:AddButton({
	Name = "tpwalk (bypasses)",
	Callback = function()
      		local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
humanoid.Running:Connect(function(speed)
    humanoid.WalkSpeed = 0
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector 
    wait(.25)
    humanoid.WalkSpeed = 54
end)
 
	end
})

combat:AddButton({
    Name = "silent aim",
    Callback = function()
		loadstring(game:HttpGet("https://skillissue.com/getgood/premium/"))()
	end
})
gui:AddButton({
	Name = "owl hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
	end
})
Library:Init()repeat wait() until game:IsLoaded() == true
if setclipboard then setclipboard("https://discord.gg/VjzccAHzR4%22")  end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = Library:MakeWindow({Name = "Thanos hub", HidePremium = false, SaveConfig = false, ConfigFolder = "ThanosDaGamerHub"})

Library:MakeNotification({
    Name = "Welcome!",
    Content = "And by the way, you should join my discord!\nInvite: VjzccAHzR4(copied to clipboard)",
    Image = "rbxassetid://4483345998",
    Time = 10,
})

local movement = Window:MakeTab({
    Name = "Movmeent",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false,
})
local combat = Window:MakeTab({
    Name = "Combat",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false,
})
local render = Window:MakeTab({
    Name = "Render",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false,
})
local credits = Window:MakeTab({
    Name = "credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false,
})
local bedwars = Window:MakeTab({
	Name = "bedwars",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local gui = Window:MakeTab({
    Name = "gui",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false,
})


movement:AddSlider({
    Name = "WalkSpeed",
    Min = 16,
    Max = 300,
    Default = 5,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(v)
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = v
    end
})
movement:AddToggle({
     Name = "UseCFRame",
     Default = false,
     Callback = function(v)
          shared.USE_CF_INSTEAD = v
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Thanosdagamer/cframe/main/code"))()
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
combat:AddButton({
    Name = "Aimbot",
    Callback = function()
        _G.AimbotInput = "RightClick"
        _G.AimbotEasing = 0.000000000000001
        _G.TeamCheck = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-aimbot/main/script.lua"))()
    end
})
render:AddButton({
    Name = "ESP",
    Callback = function()
	_G.FriendColor = Color3.fromRGB(0, 0, 255)
	_G.EnemyColor = Color3.fromRGB(255, 0, 0)
	_G.UseTeamColor = false
	loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-esp/main/esp.lua"))()
    end
})
credits:AddLabel("a person i will not say cuz he asked")
credits:AddLabel("also me")

bedwars:AddButton({
	Name = "tpwalk (bypasses)",
	Callback = function()
      		local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
humanoid.Running:Connect(function(speed)
    humanoid.WalkSpeed = 0
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector 
    wait(.25)
    humanoid.WalkSpeed = 54
end)
 
	end
})

combat:AddButton({
    Name = "silent aim",
    Callback = function()
		loadstring(game:HttpGet("https://skillissue.com/getgood/premium/"))()
	end
})
gui:AddButton({
	Name = "owl hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
	end
})
Library:Init()
