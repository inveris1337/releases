-- made it a little more readable than before

local signal = {}

function signal.new()
    local s = setmetatable({}, signal)
    s.connections = {}
    return s
end

function signal:fire(...)
    for i = 1, #self.connections do
        local f = self.connections[i]
        if f then f(...) end
    end
end

function signal:connect(f)
    if type(f) ~= "function" then error("u a need function", 2) end
    table.insert(self.connections, f)
    local i = #self.connections
    return {disconnect = function() self.connections[i] = nil end}
end

function signal:destroy()
    for i = 1, #self.connections do
        self.connections[i] = nil
    end
    setmetatable(self, nil)
end

return signal
