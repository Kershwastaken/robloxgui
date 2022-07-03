--thanks to robloxscripts.com for providing a lot of the coding i need

repeat wait() until game:IsLoaded() == true
if setclipboard then setclipboard("https://discord.gg/VjzccAHzR4a")  end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = Library:MakeWindow({Name = "Thanos hub", HidePremium = false, SaveConfig = true, ConfigFolder = "ThanosDaGamerHub"})

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
		local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local mouse = LocalPlayer:GetMouse()
local Camera = workspace.CurrentCamera
local Debris = game:GetService("Debris")
local UserInputService = game:GetService("UserInputService")
local target = false
local RunService = game:GetService("RunService")


getfenv().lock = "Head" -- Head or Hitbox or Random

fov = 250;
local fovCircle = true;
local st = tonumber(tick());
warn("Loading script...")

if fovCircle then
	function createcircle()
	    local a=Drawing.new('Circle');a.Transparency=1;a.Thickness=1.5;a.Visible=true;a.Color=Color3.fromRGB(0,255,149);a.Filled=false;a.Radius=fov;
	    return a;
	end;  
	local fovc = createcircle();
	spawn(function()
	    RunService:BindToRenderStep("FovCircle",1,function()
	        fovc.Position = Vector2.new(mouse.X,mouse.Y)
	    end);
	end);
end;

function isFfa()
	local am = #Players:GetChildren();
	local amm = 0;
	for i , v in pairs(Players:GetChildren()) do
		if v.Team == LocalPlayer.Team then
			amm = amm + 1;
		end;
	end;
	return am == amm;
end;
function getnearest()
	local nearestmagnitude = math.huge
	local nearestenemy = nil
	local vector = nil
	local ffa = isFfa();
	for i,v in next, Players:GetChildren() do
		if ffa == false and v.Team ~= LocalPlayer.Team or ffa == true then
			if v.Character and  v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
				local vector, onScreen = Camera:WorldToScreenPoint(v.Character["HumanoidRootPart"].Position)
				if onScreen then
					local ray = Ray.new(
					Camera.CFrame.p,
					(v.Character["Head"].Position-Camera.CFrame.p).unit*500
					)
					local ignore = {
					LocalPlayer.Character,
					}
					local hit,position,normal=workspace:FindPartOnRayWithIgnoreList(ray,ignore)
					if hit and hit:FindFirstAncestorOfClass("Model") and Players:FindFirstChild(hit:FindFirstAncestorOfClass("Model").Name)then
						local magnitude = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(vector.X, vector.Y)).magnitude
						if magnitude < nearestmagnitude and magnitude <= fov then
							nearestenemy = v
							nearestmagnitude = magnitude
						end
					end
				end
			end
		end
	end
	return nearestenemy
end


local meta = getrawmetatable(game)
setreadonly(meta, false)
local oldNamecall = meta.__namecall
meta.__namecall = newcclosure(function(...)
    
	local method = getnamecallmethod()
	local args = {...}
	if string.find(method,'Ray') then
		if target then
		    if args[1].Name ~= "Workspace" then
   		        print(args[1])
   		    end;
			args[2] = Ray.new(workspace.CurrentCamera.CFrame.Position, (target.Position + Vector3.new(0,(workspace.CurrentCamera.CFrame.Position-target.Position).Magnitude/500,0) - workspace.CurrentCamera.CFrame.Position).unit * 5000)
		end
	end
	return oldNamecall(unpack(args))
end)

warn("Script loaded!\nTime taken: "..math.abs(tonumber(tick())-st))
RunService:BindToRenderStep("SilentAim",1,function()
	if UserInputService:IsMouseButtonPressed(0) and Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("Humanoid") and Players.LocalPlayer.Character.Humanoid.Health > 0 then
		local enemy = getnearest()
		if enemy and enemy.Character and enemy.Character:FindFirstChild("Humanoid") and enemy.Character.Humanoid.Health > 0 then                
			local vector, onScreen = Camera:WorldToScreenPoint(enemy.Character["Head"].Position)
			local head = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(vector.X, vector.Y)).magnitude
			local vector, onScreen = Camera:WorldToScreenPoint(enemy.Character["HumanoidRootPart"].Position)
			local hitbox = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(vector.X, vector.Y)).magnitude
			if head <= hitbox then
				magnitude = head
			else
				magnitude = hitbox;
			end;
			if getfenv().lock == "Head" then
				target = workspace[enemy.Name]["Head"]
			else
				if getfenv().lock == "Random" then
					if magnitude == hitbox then
						target = workspace[enemy.Name]["HumanoidRootPart"];
					else
						target = workspace[enemy.Name]["Head"]
					end;
				else
					target = workspace[enemy.Name]["HumanoidRootPart"];
				end;

			end;
		else
			target = nil
		end
	end
end)

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
credits:AddLabel("also me (Ham#6469)")

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
		loadstring(game:HttpGet("https://raw.githubusercontent.com/thanosdagamer/silentaim/main/code.lua"))();
	end
})
gui:AddButton({
	Name = "owl hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
	end
})
Library:Init()
