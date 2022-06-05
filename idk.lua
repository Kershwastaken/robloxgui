shared.VapeIndependent = true
shared.CustomSaveVape = "name of file to save"
local uilib = loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
local ESP = Render.CreateOptionsButton({
    ["Name"] = "ESP", -- name of object
    ["Function"] = function(callback) -- function that is called when toggled
        if callback then
            print("enabled")
        else
            print("disabled")
        end
    end,
    ["HoverText"] = "Placeholder", -- text that will show up after hovering over the button (optional)
    ["Default"] = true, -- enabled on startup (optional)
