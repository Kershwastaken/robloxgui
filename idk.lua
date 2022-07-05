--thanks to robloxscripts.com for having a lot of the coding i need

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("thanos hub v2.1", "Ocean")


local movement = Window:NewTab("movement")

local combat = Window:NewTab("combat")

local render = Window:NewTab("render")

local credits = Window:NewTab("credits")

local movementsection = movement:NewSection("movement")

local combatsection = combat:NewSection("combat")

local rendersection = render:NewSection("render")

local creditssection = credits:NewSection("credits")

movementsection:NewSlider("speed", "changes speed", 100, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

movementsection:NewSlider("gravity", "change ur gravity",500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game:GetService("Workspace").Gravity = s
end)

combatsection:NewButton("aimbot", "rightclick to lock screen on people who arent on team", function()
    G.AimbotInput = "RightClick"
        _G.AimbotEasing = 0.000000000000001
        _G.TeamCheck = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-aimbot/main/script.lua"))()
end)
combatsection:NewButton("silent aim", "auto aim no screen lock", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Thanosdagamer/silentaimscript/main/silentaim.lua"))()
end)

rendersection:NewButton("esp", "easily see players", function()
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
	_G.EnemyColor = Color3.fromRGB(255, 0, 0)
	_G.UseTeamColor = false
	loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-esp/main/esp.lua"))()
end)

creditssection:NewLabel("me (thanosdagamer#6469)")

creditssection:NewLabel("someone i wont mention cuz they asked")

