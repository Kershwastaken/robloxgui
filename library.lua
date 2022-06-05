local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "betagui", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "movment",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
OrionLib:MakeNotification({
	Name = "betagui",
	Content = "thanks for using my script",
	Image = "rbxassetid://4483345998",
	Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]
Tab:AddButton({
	Name = "speed",
	Callback = function()
      		local walkspeed = true
if walkspeed == true then
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = "54"
  	end    
})

--[[
Name = <gravity 0> - The name of the button.
Callback = <function> - The function of the button.
  Tab:AddButton({
	Name = "Button!",
	Callback = function()
      		shared.guiprivate = true
if shared.guiprivate  == true then
game:GetService("Workspace").Gravity = "1"

  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
]]
OrionLib:Init()
