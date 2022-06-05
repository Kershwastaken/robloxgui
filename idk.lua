local walkspeed = true
if walkspeed == true then
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = "54"

end
shared.guiprivate = true
if shared.guiprivate  == true then
game:GetService("Workspace").Gravity = "1"
end
local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
humanoid.Running:Connect(function(speed)
    humanoid.WalkSpeed = 0
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector 
    wait(.25)
    humanoid.WalkSpeed = 16
end)
