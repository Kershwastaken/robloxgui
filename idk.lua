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
})
thanosdagamer — Today at 10:52 AM
```local ESP = Render.CreateOptionsButton({
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
    ["ExtraText"] = function() return " Placeholder" end -- text that goes next to the button in Text GUI (optional)
})
ESP.CreateSlider({
    ["Name"] = "Slider1", -- name of object
    ["Min"] = 0,
    ["Max"] = 100,
    ["Function"] = function(val) -- function that is called when the slider changes
        print(val)
    end,
    ["HoverText"] = "Placeholder", -- text that will show up after hovering over the button (optional)
    ["Default"] = 50 -- default value (optional)
})
ESP.CreateColorSlider({
    ["Name"] = "Slider1", -- name of object
    ["HoverText"] = "Placeholder", -- text that will show up after hovering over the button (optional)
    ["Function"] = function(val) -- function that is called when the slider changes
        print(val)
    end
})
ESP.CreateToggle({
    ["Name"] = "Toggle1", -- name of object
    ["HoverText"] = "Placeholder", -- text that will show up after hovering over the button (optional)
    ["Function"] = function(callback) -- function that is called when toggled
        if callback then
            print("Toggle Enabled")
        else
            print("Toggle Disabled")
        end
    end,
    ["Default"] = true -- Value upon launch (optional)
})
ESP.CreateDropdown({
	["Name"] = "Mode", -- name of object
	["List"] = {"apple", "banana"}, -- list of strings to choose from
	["Function"] = function(val) -- function that is called when you choose a string
            print(val)
	end
})
ESP.CreateTextList({
	["Name"] = "TextList1", -- name of the object
	["TempText"] = "Placeholder", -- text that is shown
	["AddFunction"] = function(val) -- called when a entry is added (optional)
		print("Added : ", val)
    	end,
   	["RemoveFunction"] = function(val) -- called when a entry is removed (optional)
    	   print("Removed : ", val)
   	end,
   	["CustomFunction"] = function(obj, val) -- called when the entry is finished rendering so you can add custom rendering (optional)
   	    print("Finished Rendering : ", obj, " : ", val)
   	end
})
local overlay = GuiLibrary.CreateCustomWindow({
	["Name"] = "Overlay", 
	["Icon"] = "vape/assets/TargetIcon1.png", -- currently you have to use vape assets for icons, this may change in the future
	["IconSize"] = 16 -- size in width to not look ugly
})
overlay["Bypass"] = true -- making the window position save properly
--overlay.SetVisible(true) -- not a toggle, pass in true or false
-- you can put objects in
-- overlay.GetCustomChildren()
 -- button name + OptionsButton
 -- button can be a var, else you use GuiLibrary["ObjectsThatCanBeSaved"]["ESPOptionsButton"]["Api"] to get objects outside your code.
button["ToggleButton"](false) -- toggles button
button["SetKeybind"]("KeyCode in text, example LeftShift") -- sets keybind
GuiLibrary["ObjectsThatCanBeSaved"]["ESPOptionsButton"]["Object"] -- gets the object of the button for customization and what not
