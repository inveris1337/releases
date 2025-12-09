-- idk

local notifications = {}
local center = workspace.CurrentCamera.ViewportSize/2

task.spawn(function()
    while true do
        for i=1,#notifications do
            local n = notifications[i]
            local pos = Vector2.new(center.X,center.Y+150+(i*18))
            n.Position = n.Position:Lerp(pos,0.15)
        end
        task.wait()
    end
end)

function notification(param)
    param = param or {}
    local color = param.color or param.Color or Color3.fromRGB(255,255,255)
    local text = param.text or param.Text or param.message or param.Message or "fuck you"
    local outline = param.outline or param.Outline or false
    local duration = param.duration or param.Duration or param.durex or param.Durex or param.time or param.Time or 3

    task.spawn(function()
        local nigga = Drawing.new("Text")
        nigga.Size = 13
        nigga.Font = 2
        nigga.Text = text
        nigga.Visible = true
        nigga.ZIndex = 3
        nigga.Center = true
        nigga.Color = color
        nigga.Outline = outline
        nigga.Position = Vector2.new(center.X,center.Y+150)
        nigga.Transparency = 1

        table.insert(notifications,nigga)

        local t = 0
        while t < duration do
            t += task.wait()
        end

        if table.find(notifications,nigga) then table.remove(notifications,table.find(notifications,nigga)) end

        for i=1,25 do
            nigga.Transparency = nigga.Transparency - 0.04
            --nigga.Size = nigga.Size - 0.1
            task.wait()
        end

        --nigga.Size = 1
        nigga.Transparency = 0
        nigga:Remove()
    end)
end

notification({text = "hi", outline = false, durex = 99})
