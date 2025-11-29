local players = game:GetService("Players")
local user_input = game:GetService("UserInputService")
local localplayer = players.LocalPlayer
local cam = workspace.CurrentCamera

local utils = {} do
    local sig = {}
    sig.__index = sig

    function sig.new()
        local s = setmetatable({}, sig)
        s.c = {}
        return s
    end

    function sig:fire(...)
        for i = 1, #self.c do
            local f = self.c[i]
            if f then f(...) end
        end
    end

    function sig:connect(f)
        if type(f) ~= "function" then error("u a need function", 2) end
        table.insert(self.c, f)
        local i = #self.c
        return {disconnect = function() self.c[i] = nil end}
    end

    function sig:destroy()
        for i = 1, #self.c do self.c[i] = nil end
        setmetatable(self, nil)
    end

    utils.signal = sig
    utils._connections = {}
    utils.player_added = sig.new()
    utils.player_removed = sig.new()

    players.PlayerAdded:Connect(function(p) 
        utils.player_added:fire(p) 
    end)
    players.PlayerRemoving:Connect(function(p) 
        utils.player_removed:fire(p) 
    end)

    function utils.is_visible(p, ign)
        ign = ign or {localplayer.Character}
        local o = cam.CFrame.Position
        local dir = (p.Position - o).Unit * (p.Position - o).Magnitude
        local rp = RaycastParams.new()
        rp.FilterDescendantsInstances = ign
        rp.FilterType = Enum.RaycastFilterType.Blacklist
        local r = workspace:Raycast(o, dir, rp)
        return not r or r.Instance == p
    end

    function utils.is_enemy(p, ign_n)
        if not p or not p.Team then return not ign_n end
        return p.Team ~= localplayer.Team
    end

    function utils.getclosestplayertomouse(opt)
        opt = opt or {}
        local fov = opt.fov or 9e9
        local vis = opt.check_visible ~= false
        local maxd = opt.max_dist
        local ene = opt.enemies_only ~= false
        local ignf = opt.ignore_fov == true
        local m = user_input:GetMouseLocation()
        local c
        local sd = fov

        for _, p in pairs(players:GetPlayers()) do
            if p ~= localplayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                if not ene or utils.is_enemy(p) then
                    local h = p.Character.HumanoidRootPart
                    if not vis or utils.is_visible(h) then
                        local sp, on = cam:WorldToViewportPoint(h.Position)
                        local d
                        if ignf then d = (h.Position - cam.CFrame.Position).Magnitude
                        else d = (Vector2.new(sp.X, sp.Y) - Vector2.new(m.X, m.Y)).Magnitude end
                        local wd = (h.Position - cam.CFrame.Position).Magnitude
                        if d < sd and (not maxd or wd <= maxd) and (ignf or on) then
                            sd = d
                            c = p
                        end
                    end
                end
            end
        end

        return c
    end

    function utils.getclosestplayerstomouse(opt)
        opt = opt or {}
        local fov = opt.fov or 9e9
        local vis = opt.check_visible ~= false
        local maxd = opt.max_dist
        local ene = opt.enemies_only ~= false
        local ignf = opt.ignore_fov == true
        local m = user_input:GetMouseLocation()
        local tobal = {}

        for _, p in pairs(players:GetPlayers()) do
            if p ~= localplayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                if not ene or utils.is_enemy(p) then
                    local h = p.Character.HumanoidRootPart
                    if not vis or utils.is_visible(h) then
                        local sp, on = cam:WorldToViewportPoint(h.Position)
                        local d
                        if ignf then d = (h.Position - cam.CFrame.Position).Magnitude
                        else d = (Vector2.new(sp.X, sp.Y) - Vector2.new(m.X, m.Y)).Magnitude end
                        local wd = (h.Position - cam.CFrame.Position).Magnitude
                        if d <= fov and (not maxd or wd <= maxd) and (ignf or on) then
                            table.insert(tobal, {p = p, d = d})
                        end
                    end
                end
            end
        end

        table.sort(tobal, function(a, b) return a.d < b.d end)
        local res = {}
        for _, v in pairs(tobal) do table.insert(res, v.p) end
        return res
    end

    function utils.getaliveplayers()
        local r = {}
        for _, p in pairs(players:GetPlayers()) do
            if p.Character and p.Character:FindFirstChild("Humanoid") and p.Character.Humanoid.Health > 0 then
                table.insert(r, p)
            end
        end
        return r
    end

    function utils.getrandomplayer(opt)
        opt = opt or {}
        local en = opt.enemies_only or false
        local alive = opt.alive_only or false
        local pls = {}
        for _, p in pairs(players:GetPlayers()) do
            if p ~= localplayer then
                if (en == false or utils.is_enemy(p)) and
                   (not alive or (p.Character and p.Character:FindFirstChild("Humanoid") and p.Character.Humanoid.Health > 0)) then
                    table.insert(pls, p)
                end
            end
        end
        if #pls == 0 then return nil end
        return pls[math.random(1, #pls)]
    end

    function utils.dist3(pos1, pos2) -- distance3d
        return (pos1 - pos2).Magnitude 
    end
    function utils.dist2(pos1, pos2) -- distance2d
        return (Vector2.new(pos1.X, pos1.Y) - Vector2.new(pos2.X, pos2.Y)).Magnitude 
    end

    function utils.play_sound(id, par, vol, spd)
        vol = vol or 1
        spd = spd or 1
        local s = Instance.new("Sound")
        s.SoundId = id
        s.Parent = par or workspace
        s.Volume = vol
        s.PlaybackSpeed = spd
        s:Play()
        s.Ended:Connect(function()
            s:Destroy()
        end)
    end

    -- ^^ oopsies made a woopsies
   
    function utils.connect(name, ev, cb)
        if not name or not ev or not cb then return end
        if typeof(ev.Connect) ~= "function" or typeof(cb) ~= "function" then return end

        local conn = ev:Connect(cb)
        utils._connections[name] = conn
        return conn
    end
    --[[utils.connect("something", game:GetService("RunService").RenderStepped, function()
        print("hi")
    end)]]
    --?? dmb ass
    function utils.get_screen_center()
        return Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y / 2)
    end

    function utils.get_mouse_pos()
        local m = localplayer:GetMouse()
        return Vector2.new(m.X, m.Y)
    end
    
    function utils.disconnect(name)
        local conn = utils._connections[name]
        if conn then
            conn:Disconnect()
            utils._connections[name] = nil
        end
    end
end

return utils
