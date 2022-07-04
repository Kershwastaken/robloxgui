local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("thanos hub", "Ocean")

local main = Window:NewTab("main")

local movement = main:NewSection("movement")

local combat = main:NewSection("combat")

local render = main:NewSection("render")

local credits = main:NewSection("credits")

movement:NewSlider("speed", "changes speed", 100, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

movement:NewSlider("SliderText", "SliderInfo",500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game:GetService("Workspace").Gravity = s
end)

combat:NewButton("aimbot", "rightclick to lock screen on people who arent on team", function()
    G.AimbotInput = "RightClick"
        _G.AimbotEasing = 0.000000000000001
        _G.TeamCheck = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-aimbot/main/script.lua"))()
end)
combat:NewButton("silent aim", "auto aim no screen lock", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Thanosdagamer/silentaimscript/main/silentaim.lua"))()
end)

render:NewButton("esp", "easily see players", function()
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
	_G.EnemyColor = Color3.fromRGB(255, 0, 0)
	_G.UseTeamColor = false
	loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-esp/main/esp.lua"))()
end)

credits:NewLabel("me (thanosdagamer#6469)")

credits:NewLabel("someone i wont mention cuz they asked")

