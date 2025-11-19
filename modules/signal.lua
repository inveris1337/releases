-- made it a little more readable than before
-- i realized that connect wasnt working

local signal = {}
signal.__index = signal

function signal.new()
    local self = setmetatable({}, signal)
    self.connections = {}
    return self
end

function signal:connect(func)
    if type(func) ~= "function" then error("u need a function", 2) end
    local key = {}
    self.connections[key] = func
    return {
        disconnect = function()
            self.connections[key] = nil
        end
    }
end

function signal:fire(...)
    for _, func in pairs(self.connections) do
        func(...)
    end
end

function signal:destroy()
    self.connections = {}
    setmetatable(self, nil)
end

return signal

