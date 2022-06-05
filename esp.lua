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
