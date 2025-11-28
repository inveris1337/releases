-- this is a really REALLY really old project....
-- very shit coded my point was just making it work
-- this was when i was (or still) a nn.

local o = os.clock()
if (getgenv()).Library then
    (getgenv()).Library:Unload()
end
local X
do
    local o = game:GetService("UserInputService")
    local x = game:GetService("Players")
    local V = game:GetService("Workspace")
    local C = game:GetService("HttpService")
    local y = game:GetService("TweenService")
    local E = game:GetService("RunService")
    local L = cloneref and cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui")
    gethui = gethui or function()
        return L
    end
    local d = x.LocalPlayer
    local v = V.CurrentCamera
    local s = d:GetMouse()
    local A = Color3.fromRGB
    local w = Color3.fromHSV
    local T = Color3.fromHex
    local g = ColorSequence.new
    local i = ColorSequenceKeypoint.new
    local I = NumberSequence.new
    local h = NumberSequenceKeypoint.new
    local e = UDim2.new
    local Y = UDim.new
    local t = Vector2.new
    local B = Instance.new
    local a = math.clamp
    local u = math.floor
    local K = math.abs
    local r = math.sin
    local b = table.insert
    local n = table.find
    local c = table.remove
    local D = table.concat
    local Z = table.clone
    local N = table.unpack
    local P = string.format
    local j = string.find
    local O = string.gsub
    X = {
        Flags = {};
        MenuKeybind = tostring(Enum.KeyCode.Insert);
        Tween = {
            Time = .25;
            Style = Enum.EasingStyle.Quad;
            Direction = Enum.EasingDirection.Out
        },
        Folders = {
            Directory = "mapsense.solutions",
            Configs = "mapsense.solutions/UserInterface/Configs";
            Assets = "mapsense.solutions/UserInterface/Assets",
            Themes = "mapsense.solutions/UserInterface/Themes";
            Sounds = "mapsense.solutions/UserInterface/Sounds"
        };
        Images = {
            Saturation = {
                "Saturation.png";
                "https://github.com/peke7374/Bin/blob/main/Fent.wtf/Assets/saturation.png?raw=true"
            },
            Value = {
                "Value.png";
                "https://github.com/peke7374/Bin/blob/main/Fent.wtf/Assets/value.png?raw=true"
            },
            Hue = {
                "Hue.png",
                "https://github.com/peke7374/Bin/blob/main/Fent.wtf/Assets/horizontalhue.png?raw=true"
            },
            Checkers = {
                "Checkers.png",
                "https://github.com/peke7374/Bin/blob/main/Fent.wtf/Assets/checkers.png?raw=true"
            };
            icon = {
                "Icon.png",
                "https://github.com/peke7374/storage/blob/main/image/schizohaxx_icon.png?raw=true"
            }
        };
        Pages = {},
        Sections = {},
        Connections = {};
        Threads = {};
        ThemeMap = {},
        ThemeItems = {};
        Themes = {},
        CurrentFrames = {};
        ThemeColorpickers = {},
        SetFlags = {};
        CopiedColor = nil;
        UnnamedConnections = 0,
        UnnamedFlags = 0;
        Holder = nil;
        NotifHolder = nil;
        Font = nil;
        KeyList = nil
    }
    local R = {
        Unknown = "Unknown",
        Backspace = "Back",
        Tab = "Tab";
        Clear = "Clear";
        Return = "Return";
        Pause = "Pause",
        Escape = "Escape";
        Space = "Space";
        QuotedDouble = "\"",
        Hash = "#",
        Dollar = "$";
        Percent = "%",
        Ampersand = "&",
        Quote = "'",
        LeftParenthesis = "(",
        RightParenthesis = " )";
        Asterisk = "*";
        Plus = "+";
        Comma = ",";
        Minus = "-",
        Period = ".",
        Slash = "`",
        Three = "3",
        Seven = "7";
        Eight = "8",
        Colon = ":";
        Semicolon = ";",
        LessThan = "<",
        GreaterThan = ">";
        Question = "?";
        Equals = "=",
        At = "@";
        LeftBracket = "LeftBracket",
        RightBracket = "RightBracked";
        BackSlash = "BackSlash",
        Caret = "^";
        Underscore = "_",
        Backquote = "`";
        LeftCurly = "{",
        Pipe = "|",
        RightCurly = "}",
        Tilde = "~";
        Delete = "Delete",
        End = "End";
        KeypadZero = "Keypad0",
        KeypadOne = "Keypad1",
        KeypadTwo = "Keypad2",
        KeypadThree = "Keypad3";
        KeypadFour = "Keypad4",
        KeypadFive = "Keypad5";
        KeypadSix = "Keypad6";
        KeypadSeven = "Keypad7",
        KeypadEight = "Keypad8";
        KeypadNine = "Keypad9",
        KeypadPeriod = "KeypadP",
        KeypadDivide = "KeypadD",
        KeypadMultiply = "KeypadM",
        KeypadMinus = "KeypadM",
        KeypadPlus = "KeypadP",
        KeypadEnter = "KeypadE";
        KeypadEquals = "KeypadE";
        Insert = "Insert",
        Home = "Home";
        PageUp = "PageUp",
        PageDown = "PageDown";
        RightShift = "RightShift";
        LeftShift = "LeftShift";
        RightControl = "RightControl",
        LeftControl = "LeftControl";
        LeftAlt = "LeftAlt",
        RightAlt = "RightAlt"
    }
    X.__index = X
    X.Pages.__index = X.Pages
    X.Sections.__index = X.Sections
    for o, X in X.Folders do
        if not isfolder(X) then
            makefolder(X)
        end
    end
    for o, x in X.Images do
        if not isfile(X.Folders.Assets .. ("/" .. (x)[1])) then
            writefile(X.Folders.Assets .. ("/" .. (x)[1]), game:HttpGet((x)[2]))
        end
    end
    local k = {
        Default = {
            ["Window Background"] = A(43, 43, 43);
            Inline = A(12, 12, 12),
            Text = A(180, 180, 180),
            ["Section Background"] = A(19, 19, 19);
            Element = A(63, 63, 63);
            Border = A(68, 68, 68),
            Outline = A(0, 0, 0);
            ["Dark Liner"] = A(56, 56, 56);
            Risky = A(255, 50, 50),
            Accent = A(31, 226, 130)
        };
        Bitchbot = {
            ["Window Background"] = A(33, 33, 33),
            Inline = A(14, 14, 14),
            Text = A(255, 255, 255),
            ["Section Background"] = A(18, 18, 18);
            Element = A(14, 14, 14),
            Border = A(0, 0, 0),
            Outline = A(19, 19, 19),
            ["Dark Liner"] = A(21, 21, 21),
            Risky = A(255, 50, 50);
            Accent = A(158, 79, 249)
        };
        Onetap = {
            ["Window Background"] = A(71, 71, 71),
            Inline = A(30, 30, 30);
            Text = A(244, 239, 232),
            ["Section Background"] = A(20, 20, 20);
            Element = A(33, 33, 33),
            Border = A(0, 0, 0),
            Outline = A(51, 51, 51),
            ["Dark Liner"] = A(22, 22, 20);
            Risky = A(255, 50, 50);
            Accent = A(237, 170, 0)
        },
        Aqua = {
            ["Window Background"] = A(71, 84, 99),
            Inline = A(31, 35, 39);
            Text = A(255, 255, 255);
            ["Section Background"] = A(22, 25, 28),
            Element = A(58, 66, 77),
            Border = A(48, 56, 63),
            Outline = A(20, 25, 30);
            ["Dark Liner"] = A(38, 45, 53);
            Risky = A(255, 50, 50);
            Accent = A(104, 214, 255)
        };
        Fent = {
            ["Window Background"] = A(33, 33, 33),
            Inline = A(14, 14, 14),
            Text = A(255, 255, 255),
            ["Section Background"] = A(18, 18, 18);
            Element = A(14, 14, 14),
            Border = A(34, 14, 14),
            Outline = A(19, 19, 19);
            ["Dark Liner"] = A(66, 0, 0);
            Risky = A(170, 130, 38);
            Accent = A(109, 9, 9)
        }
    }
    local function H(o)
        return string.format("#%02X%02X%02X", math.floor(o.R * 255), math.floor(o.G * 255), math.floor(o.B * 255))
    end
    for o, x in pairs(k) do
        local V = X.Folders.Themes .. ("/" .. (o .. ".json"))
        if not isfile(V) then
            local o = {}
            for X, x in pairs(x) do
                (o)[X .. " Theme"] = {
                    Color = H(x),
                    Alpha = 1
                }
            end
            local X = C:JSONEncode(o)
            writefile(V, X)
        else
        end
    end
    X.Theme = Z(k.Default)
    X.Themes = k
    local J = {}
    do
        J.__index = J
        J.Create = function(o, x, V, C, E)
            x = E and x or x.Instance
            V = V or TweenInfo.new(X.Tween.Time, X.Tween.Style, X.Tween.Direction)
            local L = {
                Tween = y:Create(x, V, C),
                Info = V,
                Goal = C;
                Item = x
            }
            L.Tween:Play()
            setmetatable(L, J)
            return L
        end
        J.Get = function(o)
            if not o.Tween then
                return
            end
            return o.Tween, o.Info, o.Goal
        end
        J.Pause = function(o)
            if not o.Tween then
                return
            end
            o.Tween:Pause()
        end
        J.Play = function(o)
            if not o.Tween then
                return
            end
            o.Tween:Play()
        end
        J.Clean = function(o)
            if not o.Tween then
                return
            end
            J:Pause()
            o = nil
        end
    end
    local q = {}
    do
        q.__index = q
        q.Create = function(o, X, x)
            local V = {
                Instance = B(X);
                Properties = x;
                Class = X
            }
            setmetatable(V, q)
            for o, X in V.Properties do
                (V.Instance)[o] = X
            end
            return V
        end
        q.AddToTheme = function(o, x)
            if not o.Instance then
                return
            end
            X:AddToTheme(o, x)
        end
        q.ChangeItemTheme = function(o, x)
            if not o.Instance then
                return
            end
            X:ChangeItemTheme(o, x)
        end
        q.Connect = function(o, x, V, C)
            if not o.Instance then
                return
            end
            if not (o.Instance)[x] then
                return
            end
            return X:Connect((o.Instance)[x], V, C)
        end
        q.Tween = function(o, X, x)
            if not o.Instance then
                return
            end
            return J:Create(o, X, x)
        end
        q.Disconnect = function(o, x)
            if not o.Instance then
                return
            end
            return X:Disconnect(x)
        end
        q.Clean = function(o)
            if not o.Instance then
                return
            end
            o.Instance:Destroy()
            o = nil
        end
        q.MakeDraggable = function(x)
            if not x.Instance then
                return
            end
            local V = x.Instance
            local C = false
            local y
            local E
            local L = function(o)
                local X = o.Position - y
                x:Tween(TweenInfo.new(.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    Position = e(E.X.Scale, E.X.Offset + X.X, E.Y.Scale, E.Y.Offset + X.Y)
                })
            end
            x:Connect("InputBegan", function(o)
                if o.UserInputType == Enum.UserInputType.MouseButton1 or o.UserInputType == Enum.UserInputType.Touch then
                    C = true
                    y = o.Position
                    E = V.Position
                end
            end)
            x:Connect("InputEnded", function(o)
                if o.UserInputType == Enum.UserInputType.MouseButton1 or o.UserInputType == Enum.UserInputType.Touch then
                    C = false
                end
            end)
            X:Connect(o.InputChanged, function(o)
                if o.UserInputType == Enum.UserInputType.MouseMovement or o.UserInputType == Enum.UserInputType.Touch then
                    if C then
                        L(o)
                    end
                end
            end)
            return C
        end
        q.MakeResizeable = function(x, V, C)
            if not x.Instance then
                return
            end
            local y = x.Instance
            local E = false
            local L = e()
            local d = e()
            local v = y.Parent.AbsoluteSize - y.AbsoluteSize
            local s = q:Create("TextButton", {
                Parent = y;
                AnchorPoint = t(1, 1);
                BorderColor3 = A(0, 0, 0);
                Size = e(0, 8, 0, 8),
                Position = e(1, 0, 1, 0),
                Name = "\000",
                BorderSizePixel = 0;
                BackgroundTransparency = 1;
                AutoButtonColor = false,
                Visible = true;
                Text = ""
            })
            s:Connect("InputBegan", function(o)
                if o.UserInputType == Enum.UserInputType.MouseButton1 or o.UserInputType == Enum.UserInputType.Touch then
                    E = true
                    L = y.Size - e(0, o.Position.X, 0, o.Position.Y)
                end
            end)
            s:Connect("InputEnded", function(o)
                if o.UserInputType == Enum.UserInputType.MouseButton1 or o.UserInputType == Enum.UserInputType.Touch then
                    E = false
                end
            end)
            X:Connect(o.InputChanged, function(o)
                if o.UserInputType == Enum.UserInputType.MouseMovement and E then
                    v = C or y.Parent.AbsoluteSize - y.AbsoluteSize
                    d = L + e(0, o.Position.X, 0, o.Position.Y)
                    d = e(0, math.clamp(d.X.Offset, V.X, v.X), 0, math.clamp(d.Y.Offset, V.Y, v.Y))
                    J:Create(y, TweenInfo.new(.17, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                        Size = d
                    }, true)
                end
            end)
            return E
        end
        q.OnHover = function(o, x)
            if not o.Instance then
                return
            end
            return X:Connect(o.Instance.MouseEnter, x)
        end
        q.OnHoverLeave = function(o, x)
            if not o.Instance then
                return
            end
            return X:Connect(o.Instance.MouseLeave, x)
        end
        q.Tooltip = function(x, V)
            if not x.Instance then
                return
            end
            if V == nil then
                return
            end
            local C = x.Instance
            local y = o:GetMouseLocation()
            local L
            local d = q:Create("Frame", {
                Parent = X.Holder.Instance;
                BackgroundColor3 = A(0, 0, 0),
                BorderSizePixel = 0;
                Size = e(0, 0, 0, 22);
                AutomaticSize = Enum.AutomaticSize.X;
                BackgroundTransparency = 1;
                Position = e(0, y.X, 0, y.Y - 22),
                Visible = true
            })
            local v = q:Create("TextLabel", {
                Parent = d.Instance;
                BackgroundColor3 = A(0, 0, 0);
                BorderSizePixel = 0;
                Size = e(1, 0, 1, 0);
                BackgroundTransparency = 1;
                Position = e(0, 0, 0, 0),
                FontFace = X.Font,
                Text = V;
                TextTransparency = 1;
                TextColor3 = A(255, 255, 255),
                TextSize = 12
            })
            v:AddToTheme({
                TextColor3 = "Text"
            })
            q:Create("UIPadding", {
                Parent = v.Instance;
                PaddingLeft = Y(0, 5),
                PaddingRight = Y(0, 5)
            })
            X:Connect(C.MouseEnter, function()
                d:Tween(nil, {
                    BackgroundTransparency = 0
                })
                v:Tween(nil, {
                    TextTransparency = 0
                })
                L = E.RenderStepped:Connect(function()
                    y = o:GetMouseLocation()
                    d:Tween(nil, {
                        Position = e(0, y.X, 0, y.Y - 22)
                    })
                end)
            end)
            X:Connect(C.MouseLeave, function()
                d:Tween(nil, {
                    BackgroundTransparency = 1
                })
                v:Tween(nil, {
                    TextTransparency = 1
                })
                if L then
                    L:Disconnect()
                end
            end)
            return d
        end
    end
    local f = {}
    do
        function f.New(E, o, x, V, y)
            if isfile(X.Folders.Assets .. ("/" .. (o .. ".json"))) then
                return Font.new(getcustomasset(X.Folders.Assets .. ("/" .. (o .. ".json"))))
            end
            if not isfile(X.Folders.Assets .. ("/" .. (o .. ".ttf"))) then
                writefile(X.Folders.Assets .. ("/" .. (o .. ".ttf")), game:HttpGet(y.Url))
            end
            local L = {
                name = o,
                faces = {
                    {
                        name = "Regular";
                        weight = x,
                        style = V,
                        assetId = getcustomasset(X.Folders.Assets .. ("/" .. (o .. ".ttf")))
                    }
                }
            }
            writefile(X.Folders.Assets .. ("/" .. (o .. ".json")), C:JSONEncode(L))
            return Font.new(getcustomasset(X.Folders.Assets .. ("/" .. (o .. ".json"))))
        end
        function f.Get(x, o)
            if isfile(X.Folders.Assets .. ("/" .. (o .. ".json"))) then
                return Font.new(getcustomasset(X.Folders.Assets .. ("/" .. (o .. ".json"))))
            end
        end
        f:New("Windows-XP-Tahoma", 200, "Regular", {
            Url = "https://github.com/peke7374/Bin/raw/refs/heads/main/Fent.wtf/Assets/windows-xp-tahoma.ttf"
        })
        X.Font = f:Get("Windows-XP-Tahoma")
    end
    X.Holder = q:Create("ScreenGui", {
        Parent = gethui();
        Name = "\000";
        ZIndexBehavior = Enum.ZIndexBehavior.Global;
        IgnoreGuiInset = true
    })
    X.NotifHolder = q:Create("Frame", {
        Parent = X.Holder.Instance,
        BorderColor3 = A(0, 0, 0),
        AnchorPoint = t(.5, 0),
        BackgroundTransparency = 1;
        Position = e(.5, 0, 0, 0);
        Name = "\000",
        Size = e(.34, 0, 1, - 14),
        BorderSizePixel = 0;
        BackgroundColor3 = A(255, 255, 255)
    })
    q:Create("UIListLayout", {
        Parent = X.NotifHolder.Instance;
        VerticalAlignment = Enum.VerticalAlignment.Bottom;
        SortOrder = Enum.SortOrder.LayoutOrder;
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        Padding = Y(0, 10)
    })
    X.GetImage = function(o, X)
        local x = (o.Images)[X]
        if not x then
            return
        end
        return getcustomasset(o.Folders.Assets .. ("/" .. (x)[1]))
    end
    X.Round = function(o, X, x)
        local V = 1 / (x or 1)
        return u(X * V) / V
    end
    X.IsMouseOverFrame = function(o, X)
        local x = X.AbsolutePosition
        local V = X.AbsoluteSize
        if s.X >= x.X and (s.X <= x.X + V.X and (s.Y >= x.Y and s.Y <= x.Y + V.Y)) then
            return true
        end
    end
    X.Unload = function(o)
        for o, X in o.Connections do
            X.Connection:Disconnect()
        end
        for o, X in o.Threads do
            coroutine.close(X)
        end
        if o.Holder then
            o.Holder:Clean()
        end
        X = nil;
        (getgenv()).Library = nil
    end
    X.Thread = function(o, X)
        local x = coroutine.create(X);
        (coroutine.wrap(function()
            coroutine.resume(x)
        end))()
        b(o.Threads, x)
        return x
    end
    X.SafeCall = function(o, x, ...)
        local V = {
            ...
        }
        local C, y = pcall(x, N(V))
        if not C then
            X:Notification("Error caught in function, report this to the devs:\n" .. y, 5, A(255, 0, 0))
            warn(y)
            return false
        end
        return C
    end
    X.Connect = function(o, x, V, y)
        y = y or P("Connection_%s_%s", o.UnnamedConnections + 1, C:GenerateGUID(false))
        local E = {
            Event = x,
            Callback = V,
            Name = y;
            Connection = nil
        }
        X:Thread(function()
            E.Connection = x:Connect(V)
        end)
        b(o.Connections, E)
        return E
    end
    X.Disconnect = function(o, X)
        for o, x in o.Connections do
            if x.Name == X then
                x.Connection:Disconnect()
                break
            end
        end
    end
    X.NextFlag = function(o)
        local X = o.UnnamedFlags + 1
        return P("Flag Number %s %s", X, C:GenerateGUID(false))
    end
    X.AddToTheme = function(o, X, x)
        X = X.Instance or X
        local V = {
            Item = X;
            Properties = x
        }
        for x, V in V.Properties do
            if type(V) == "string" then
                (X)[x] = (o.Theme)[V]
            else
                (X)[x] = V
            end
        end
        b(o.ThemeItems, V);
        (o.ThemeMap)[X] = V
    end
    X.GetConfig = function(o)
        local x = {}
        local V, y = X:SafeCall(function()
            for o, X in X.Flags do
                if type(X) == "table" and X.Key then
                    (x)[o] = {
                        Key = tostring(X.Key);
                        Mode = X.Mode
                    }
                elseif type(X) == "table" and X.Color then
                    (x)[o] = {
                        Color = X.HexValue;
                        Alpha = X.Alpha
                    }
                else
                    (x)[o] = X
                end
            end
        end)
        return C:JSONEncode(x)
    end
    X.LoadConfig = function(o, x)
        local V = C:JSONDecode(x)
        local y, E = X:SafeCall(function()
            for o, x in V do
                local V = (X.SetFlags)[o]
                if V then
                    if type(x) == "table" and x.Key then
                        V(x)
                    elseif type(x) == "table" and x.Color then
                        V(x.Color, x.Alpha)
                    else
                        V(x)
                    end
                else
                    (X.Flags)[o] = x
                end
            end
        end)
        if y then
            X:Notification("Successfully loaded config", 5, Color3.fromRGB(0, 255, 0))
        end
    end
    X.DeleteConfig = function(o, x)
        if isfile(X.Folders.Configs .. ("/" .. x)) then
            delfile(X.Folders.Configs .. ("/" .. x))
            X:Notification("Deleted config " .. (x .. ".json"), 5, A(0, 255, 0))
        end
    end
    X.SaveConfig = function(o, x)
        if isfile(X.Folders.Configs .. ("/" .. x)) then
            writefile(X.Folders.Configs .. ("/" .. x), X:GetConfig())
            X:Notification("Saved config " .. (x .. ".json"), 5, A(0, 255, 0))
        end
    end
    X.RefreshConfigsList = function(o, x)
        local V = {}
        local C = {}
        local y = O(X.Folders.Configs, X.Folders.Directory .. "/", "")
        for o, x in listfiles(X.Folders.Configs) do
            local V = O(x, X.Folders.Directory .. ("\092" .. (y .. "\092")), "");
            (C)[o] = V
        end
        local E = # C ~= V
        if not E then
            for o = 1, # C, 1 do
                if (C)[o] ~= (V)[o] then
                    E = true
                    break
                end
            end
        else
            V = C
            x:Refresh(V)
        end
    end
    X.GetTheme = function(o)
        local x = {}
        local V, y = X:SafeCall(function()
            for o, X in X.Flags do
                if type(X) == "table" and (X.Color and j(X.Flag, "Theme")) then
                    (x)[o] = {
                        Color = X.HexValue,
                        Alpha = X.Alpha
                    }
                else
                end
            end
        end)
        return C:JSONEncode(x)
    end
    X.LoadTheme = function(o, x)
        local V = C:JSONDecode(x)
        local y, E = X:SafeCall(function()
            for o, x in V do
                local V = false
                repeat
                    local C = (X.SetFlags)[o]
                    if not C then
                        V = true
                        break
                    end
                    if type(x) == "table" and x.Color then
                        C(x.Color, x.Alpha)
                    end
                    V = true
                until true
                if not V then
                    break
                end
            end
        end)
        if y then
            X:Notification("Successfully loaded theme", 5, A(0, 255, 0))
        end
    end
    X.DeleteTheme = function(o, x)
        if isfile(X.Folders.Themes .. ("/" .. x)) then
            delfile(X.Folders.Themes .. ("/" .. x))
            X:Notification("Deleted theme " .. (x .. ".json"), 5, A(0, 255, 0))
        end
    end
    X.SaveTheme = function(o, x)
        if isfile(X.Folders.Themes .. ("/" .. x)) then
            writefile(X.Folders.Themes .. ("/" .. x), X:GetTheme())
            X:Notification("Saved theme " .. (x .. ".json"), 5, A(0, 255, 0))
        end
    end
    X.RefreshThemeList = function(o, x)
        local V = {}
        local C = {}
        local y = O(X.Folders.Themes, X.Folders.Directory .. "/", "")
        for o, x in listfiles(X.Folders.Themes) do
            local V = O(x, X.Folders.Directory .. ("\092" .. (y .. "\092")), "");
            (C)[o] = V
        end
        local E = # C ~= V
        if not E then
            for o = 1, # C, 1 do
                if (C)[o] ~= (V)[o] then
                    E = true
                    break
                end
            end
        else
            V = C
            x:Refresh(V)
        end
    end
    X.ToRich = function(o, X, x)
        return string.format("<font color=\"rgb(%s, %s, %s)\">%s</font>", tostring(u(x.R * 255)), tostring(u(x.G * 255)), tostring(u(x.B * 255)), tostring(X))
    end
    X.ChangeItemTheme = function(o, X, x)
        X = X.Instance or X
        if not (o.ThemeMap)[X] then
            return
        end;
        (o.ThemeMap)[X].Properties = x;
        (o.ThemeMap)[X] = (o.ThemeMap)[X]
    end
    X.ChangeTheme = function(o, X, x)
        (o.Theme)[X] = x
        for o, V in o.ThemeItems do
            for o, C in V.Properties do
                if type(C) == "string" and C == X then
                    (V.Item)[o] = x
                end
            end
        end
    end
    X.Watermark = function(o, x, V)
        local C = {}
        local y = {}
        do
            y.Watermark = q:Create("Frame", {
                Parent = X.Holder.Instance;
                BorderColor3 = A(0, 0, 0);
                AnchorPoint = t(.5, 0);
                Name = "\000";
                Position = e(.5, 0, 0, 20);
                Size = e(0, 0, 0, 25),
                BorderSizePixel = 2,
                AutomaticSize = Enum.AutomaticSize.X;
                BackgroundColor3 = A(12, 12, 12)
            })
            y.Watermark:AddToTheme({
                BackgroundColor3 = "Inline",
                BorderColor3 = "Outline"
            })
            y.Watermark:MakeDraggable();
            (q:Create("UIStroke", {
                Parent = y.Watermark.Instance,
                Color = A(68, 68, 68),
                LineJoinMode = Enum.LineJoinMode.Miter,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            })):AddToTheme({
                Color = "Border"
            })
            y.Text = q:Create("TextLabel", {
                Parent = y.Watermark.Instance;
                FontFace = X.Font,
                TextColor3 = A(180, 180, 180),
                BorderColor3 = A(0, 0, 0);
                Text = x;
                Name = "\000",
                BackgroundTransparency = 1;
                Size = e(0, 0, 1, 0),
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.X,
                TextSize = 12;
                BackgroundColor3 = A(255, 255, 255)
            })
            y.Text:AddToTheme({
                TextColor3 = "Text"
            })
            q:Create("UIPadding", {
                Parent = y.Watermark.Instance,
                PaddingRight = Y(0, 8),
                PaddingLeft = Y(0, 8)
            })
            y.Liner = q:Create("Frame", {
                Parent = y.Watermark.Instance;
                Name = "\000";
                Position = e(0, - 8, 0, 0);
                BorderColor3 = A(0, 0, 0),
                Size = e(1, 16, 0, 2),
                BorderSizePixel = 0,
                BackgroundColor3 = A(31, 226, 130)
            })
            y.Liner:AddToTheme({
                BackgroundColor3 = "Accent"
            })
            q:Create("UIGradient", {
                Parent = y.Liner.Instance,
                Rotation = 90,
                Color = g({
                    i(0, A(255, 255, 255));
                    i(1, A(94, 94, 94))
                })
            })
            if V then
                if type(V) == "table" then
                    y.Icon = q:Create("ImageLabel", {
                        Parent = y.Watermark.Instance,
                        ImageColor3 = (V)[2] or A(255, 255, 255);
                        ScaleType = Enum.ScaleType.Fit,
                        BorderColor3 = A(0, 0, 0),
                        Name = "\000";
                        Image = (V)[1],
                        BackgroundTransparency = 1,
                        Position = e(0, - 3, 0, 4);
                        Size = e(0, 18, 0, 18);
                        BorderSizePixel = 0;
                        BackgroundColor3 = A(255, 255, 255)
                    })
                    y.Text.Instance.Position = e(0, 20, 0, 0)
                end
            end
        end
        function C.SetVisibility(X, o)
            y.Watermark.Instance.Visible = o
        end
        function C.SetText(X, o)
            y.Text.Instance.Text = o
        end
        return C
    end
    X.KeybindList = function(o)
        local x = {}
        X.KeyList = x
        local V = {}
        do
            V.KeybindListOutline = q:Create("Frame", {
                Parent = X.Holder.Instance;
                BorderColor3 = A(0, 0, 0);
                AnchorPoint = t(0, .5),
                Name = "\000",
                Position = e(0, 20, .5, 0);
                Size = e(0, 70, 0, 0),
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.XY;
                BackgroundColor3 = A(43, 43, 43)
            })
            V.KeybindListOutline:AddToTheme({
                BackgroundColor3 = "Window Background",
                BorderColor3 = "Outline"
            })
            V.KeybindListOutline:MakeDraggable();
            (q:Create("UIStroke", {
                Parent = V.KeybindListOutline.Instance;
                Color = A(68, 68, 68);
                LineJoinMode = Enum.LineJoinMode.Miter;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            })):AddToTheme({
                Color = "Border"
            })
            V.Inline = q:Create("Frame", {
                Parent = V.KeybindListOutline.Instance;
                Name = "\000";
                Position = e(0, 5, 0, 5),
                BorderColor3 = A(68, 68, 68),
                Size = e(1, - 10, 1, - 10);
                BorderSizePixel = 2,
                BackgroundColor3 = A(12, 12, 12)
            })
            V.Inline:AddToTheme({
                BackgroundColor3 = "Inline",
                BorderColor3 = "Border"
            });
            (q:Create("UIStroke", {
                Parent = V.Inline.Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            q:Create("UIPadding", {
                Parent = V.Inline.Instance;
                PaddingTop = Y(0, 7),
                PaddingBottom = Y(0, 7),
                PaddingRight = Y(0, 8);
                PaddingLeft = Y(0, 7)
            })
            V.Title = q:Create("TextLabel", {
                Parent = V.Inline.Instance,
                FontFace = X.Font;
                TextColor3 = A(180, 180, 180);
                BorderColor3 = A(0, 0, 0);
                Text = "Keybinds",
                Name = "\000",
                Size = e(0, 0, 0, 20);
                Position = e(0, - 2, 0, - 4);
                BackgroundTransparency = 1;
                TextXAlignment = Enum.TextXAlignment.Left,
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.X;
                TextSize = 12;
                BackgroundColor3 = A(255, 255, 255)
            })
            V.Title:AddToTheme({
                TextColor3 = "Text"
            })
            V.Content = q:Create("Frame", {
                Parent = V.Inline.Instance,
                Name = "\000";
                BackgroundTransparency = 1;
                Position = e(0, 4, 0, 21);
                BorderColor3 = A(0, 0, 0),
                BorderSizePixel = 0;
                AutomaticSize = Enum.AutomaticSize.XY;
                BackgroundColor3 = A(255, 255, 255)
            })
            q:Create("UIListLayout", {
                Parent = V.Content.Instance,
                Padding = Y(0, 2),
                SortOrder = Enum.SortOrder.LayoutOrder
            })
            q:Create("UIPadding", {
                Parent = V.Content.Instance;
                PaddingBottom = Y(0, 7);
                PaddingRight = Y(0, 5)
            })
            V.Liner = q:Create("Frame", {
                Parent = V.KeybindListOutline.Instance,
                Name = "\000",
                Position = e(0, 5, 0, 5),
                BorderColor3 = A(0, 0, 0);
                Size = e(1, - 10, 0, 2),
                BorderSizePixel = 0,
                BackgroundColor3 = A(31, 226, 130)
            })
            V.Liner:AddToTheme({
                BackgroundColor3 = "Accent"
            })
            q:Create("UIGradient", {
                Parent = V.Liner.Instance,
                Rotation = 90,
                Color = g({
                    i(0, A(255, 255, 255));
                    i(1, A(125, 125, 125))
                })
            })
        end
        function x.Add(y, o, x, C)
            local E = q:Create("TextLabel", {
                Parent = V.Content.Instance,
                FontFace = X.Font,
                TextColor3 = A(31, 226, 130),
                BorderColor3 = A(0, 0, 0);
                Text = "( " .. (o .. (" ) " .. (x .. (" - " .. (C .. " "))))),
                Name = "\000",
                Size = e(0, 0, 0, 17),
                BackgroundTransparency = 1;
                TextXAlignment = Enum.TextXAlignment.Left,
                BorderSizePixel = 0;
                AutomaticSize = Enum.AutomaticSize.X,
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            E:AddToTheme({
                TextColor3 = "Text"
            })
            function E.Set(V, o, X, x)
                E.Instance.Text = "( " .. (o .. (" ) " .. (X .. (" - " .. (x .. " ")))))
            end
            function E.SetStatus(x, o)
                if o then
                    E:ChangeItemTheme({
                        TextColor3 = "Accent"
                    })
                    E:Tween(nil, {
                        TextColor3 = X.Theme.Accent
                    })
                else
                    E:ChangeItemTheme({
                        TextColor3 = "Text"
                    })
                    E:Tween(nil, {
                        TextColor3 = X.Theme.Text
                    })
                end
            end
            return E
        end
        function x.SetVisibility(X, o)
            V.KeybindListOutline.Instance.Visible = o
        end
        return x
    end
    X.Notification = function(o, x, V, C, y)
        local E = {}
        do
            E.Notification = q:Create("Frame", {
                Parent = X.NotifHolder.Instance;
                Name = "\000";
                Size = e(0, 0, 0, 24),
                BorderColor3 = A(10, 10, 10),
                BorderSizePixel = 2,
                AutomaticSize = Enum.AutomaticSize.XY,
                BackgroundColor3 = A(13, 13, 13)
            })
            E.Notification:AddToTheme({
                BackgroundColor3 = "Inline";
                BorderColor3 = "Outline"
            });
            (q:Create("UIStroke", {
                Parent = E.Notification.Instance;
                Color = A(68, 68, 68);
                LineJoinMode = Enum.LineJoinMode.Miter,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            })):AddToTheme({
                Color = "Border"
            })
            q:Create("UIPadding", {
                Parent = E.Notification.Instance,
                PaddingTop = Y(0, 1);
                PaddingRight = Y(0, 6);
                PaddingLeft = Y(0, 5)
            })
            E.Title = q:Create("TextLabel", {
                Parent = E.Notification.Instance,
                FontFace = X.Font,
                TextColor3 = A(215, 215, 215);
                BorderColor3 = A(0, 0, 0);
                Text = x,
                Name = "\000",
                Size = e(1, 0, 0, 15);
                BackgroundTransparency = 1;
                Position = e(0, 0, 0, 4);
                BorderSizePixel = 0;
                AutomaticSize = Enum.AutomaticSize.X;
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            E.Liner = q:Create("Frame", {
                Parent = E.Notification.Instance,
                Name = "\000";
                Position = e(0, - 5, 0, - 1);
                BorderColor3 = A(0, 0, 0);
                Size = e(1, 11, 0, 2);
                BorderSizePixel = 0;
                BackgroundColor3 = C
            })
            q:Create("UIGradient", {
                Parent = E.Liner.Instance;
                Rotation = 90,
                Color = g({
                    i(0, A(255, 255, 255)),
                    i(1, A(94, 94, 94))
                })
            })
        end
        if y then
            if type(y) == "table" then
                local o = {
                    Parent = E.Notification.Instance;
                    ImageColor3 = (y)[2],
                    ScaleType = Enum.ScaleType.Fit;
                    BorderColor3 = A(0, 0, 0);
                    Name = "\000",
                    Image = (y)[1];
                    BackgroundTransparency = 1,
                    Position = e(0, 2, 0, 5),
                    Size = e(0, 13, 0, 13),
                    BorderSizePixel = 0;
                    BackgroundColor3 = A(255, 255, 255)
                }
                if (y)[3] then
                    o.ImageRectOffset = (y)[3]
                end
                if (y)[4] then
                    o.ImageRectSize = (y)[4]
                end
                E.Icon = q:Create("ImageLabel", o)
                E.Title.Instance.Position = e(0, 13, 0, 4)
                E.Liner.Instance.Size = e(1, 13, 0, 2)
            else
            end
        end
        E.Notification.Instance.BackgroundTransparency = 1
        E.Notification.Instance.Size = e(0, 0, 0, 0)
        for o, X in E.Notification.Instance:GetDescendants() do
            if X:IsA("UIStroke") then
                X.Transparency = 1
            elseif X:IsA("TextLabel") then
                X.TextTransparency = 1
            elseif X:IsA("ImageLabel") then
                X.ImageTransparency = 1
            elseif X:IsA("Frame") then
                X.BackgroundTransparency = 1
            end
        end
        X:Thread(function()
            E.Notification:Tween(TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                BackgroundTransparency = 0;
                Size = e(0, 0, 0, 24)
            })
            task.wait(.06)
            for o, X in E.Notification.Instance:GetDescendants() do
                if X:IsA("UIStroke") then
                    J:Create(X, TweenInfo.new(.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }, true)
                elseif X:IsA("TextLabel") then
                    J:Create(X, TweenInfo.new(.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                        TextTransparency = 0
                    }, true)
                elseif X:IsA("ImageLabel") then
                    J:Create(X, TweenInfo.new(.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                        ImageTransparency = 0
                    }, true)
                elseif X:IsA("Frame") then
                    J:Create(X, TweenInfo.new(.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                        BackgroundTransparency = 0
                    }, true)
                end
            end
            task.delay(V + .1, function()
                for o, X in E.Notification.Instance:GetDescendants() do
                    if X:IsA("UIStroke") then
                        J:Create(X, TweenInfo.new(.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                            Transparency = 1
                        }, true)
                    elseif X:IsA("TextLabel") then
                        J:Create(X, TweenInfo.new(.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                            TextTransparency = 1
                        }, true)
                    elseif X:IsA("ImageLabel") then
                        J:Create(X, TweenInfo.new(.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                            ImageTransparency = 1
                        }, true)
                    elseif X:IsA("Frame") then
                        J:Create(X, TweenInfo.new(.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                            BackgroundTransparency = 1
                        }, true)
                    end
                end
                task.wait(.06)
                E.Notification:Tween(TweenInfo.new(.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                    BackgroundTransparency = 1,
                    Size = e(0, 0, 0, 0)
                })
                task.wait(.5)
                E.Notification:Clean()
            end)
        end)
    end
    local m = {}
    do
        m.Window = function(o)
            local X = {}
            do
                if not o.IsTextButton then
                    X.Outline = q:Create("Frame", {
                        Parent = o.Parent.Instance;
                        AnchorPoint = t(.5, .5),
                        Name = "\000";
                        Position = o.Position;
                        BorderColor3 = A(0, 0, 0),
                        Size = o.Size;
                        Visible = o.Visible or true;
                        BorderSizePixel = 2,
                        BackgroundColor3 = A(43, 43, 43)
                    })
                    X.Outline:AddToTheme({
                        BackgroundColor3 = "Window Background",
                        BorderColor3 = "Outline"
                    })
                else
                    X.Outline = q:Create("TextButton", {
                        Parent = o.Parent.Instance,
                        Text = "",
                        AutoButtonColor = false,
                        AnchorPoint = t(.5, .5),
                        Name = "\000",
                        Position = o.Position;
                        BorderColor3 = A(0, 0, 0);
                        Size = o.Size;
                        Visible = o.Visible or true,
                        BorderSizePixel = 2,
                        BackgroundColor3 = A(43, 43, 43)
                    })
                    X.Outline:AddToTheme({
                        BackgroundColor3 = "Window Background";
                        BorderColor3 = "Outline"
                    })
                end
                if o.Draggable then
                    X.Outline:MakeDraggable()
                end;
                (q:Create("UIStroke", {
                    Parent = X.Outline.Instance,
                    Color = A(68, 68, 68),
                    LineJoinMode = Enum.LineJoinMode.Miter;
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                })):AddToTheme({
                    Color = "Border"
                })
                X.Inline = q:Create("Frame", {
                    Parent = X.Outline.Instance,
                    Name = "\000",
                    Position = e(0, 5, 0, 5);
                    BorderColor3 = A(68, 68, 68),
                    Size = e(1, - 10, 1, - 10);
                    BorderSizePixel = 2,
                    BackgroundColor3 = A(12, 12, 12)
                })
                X.Inline:AddToTheme({
                    BackgroundColor3 = "Inline",
                    BorderColor3 = "Border"
                });
                (q:Create("UIStroke", {
                    Parent = X.Inline.Instance;
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                    LineJoinMode = Enum.LineJoinMode.Miter
                })):AddToTheme({
                    Color = "Outline"
                })
                X.Liner = q:Create("Frame", {
                    Parent = X.Inline.Instance,
                    Name = "\000";
                    BorderColor3 = A(0, 0, 0);
                    Size = e(1, 0, 0, 2),
                    BorderSizePixel = 0,
                    BackgroundColor3 = A(31, 226, 130)
                })
                X.Liner:AddToTheme({
                    BackgroundColor3 = "Accent"
                })
                q:Create("UIGradient", {
                    Parent = X.Liner.Instance,
                    Rotation = 90;
                    Color = g({
                        i(0, A(255, 255, 255)),
                        i(1, A(125, 125, 125))
                    })
                })
            end
            return X
        end
        m.Page = function(o)
            local x = {
                Active = false
            }
            local V = {}
            do
                V.Inactive = q:Create("TextButton", {
                    Parent = o.PageHolder.Instance,
                    FontFace = X.Font,
                    TextColor3 = A(180, 180, 180),
                    BorderColor3 = A(0, 0, 0);
                    Text = o.Name,
                    AutoButtonColor = false,
                    BackgroundTransparency = 1;
                    Name = "\000",
                    Size = e(0, 200, 1, - 12);
                    BorderSizePixel = 0,
                    TextSize = 12;
                    BackgroundColor3 = A(255, 255, 255)
                })
                V.Inactive:AddToTheme({
                    TextColor3 = "Text"
                })
                V.Liner = q:Create("Frame", {
                    Parent = V.Inactive.Instance,
                    BorderColor3 = A(0, 0, 0),
                    AnchorPoint = t(.5, 1),
                    Name = "\000";
                    Position = e(.5, 0, 1, 0),
                    Size = e(1, 0, 0, 2);
                    ZIndex = 2;
                    BorderSizePixel = 0;
                    BackgroundColor3 = A(56, 56, 56)
                })
                V.Liner:AddToTheme({
                    BackgroundColor3 = "Dark Liner"
                })
                q:Create("UIGradient", {
                    Parent = V.Liner.Instance,
                    Rotation = 90;
                    Color = g({
                        i(0, A(255, 255, 255));
                        i(1, A(125, 125, 125))
                    })
                });
                (q:Create("UIStroke", {
                    Parent = V.Liner.Instance;
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                    LineJoinMode = Enum.LineJoinMode.Miter
                })):AddToTheme({
                    Color = "Outline"
                })
                V.Glow = q:Create("Frame", {
                    Parent = V.Inactive.Instance;
                    BorderColor3 = A(0, 0, 0);
                    AnchorPoint = t(.5, 1),
                    BackgroundTransparency = 1;
                    Position = e(.5, 0, 1, 0);
                    Name = "\000";
                    Size = e(1, 2, 0, 0),
                    BorderSizePixel = 0;
                    BackgroundColor3 = A(31, 226, 130)
                })
                V.Glow:AddToTheme({
                    BackgroundColor3 = "Accent"
                })
                q:Create("UIGradient", {
                    Parent = V.Glow.Instance,
                    Rotation = - 90,
                    Transparency = I({
                        h(0, 0);
                        h(.074, .69375002384186),
                        h(.354, .90625),
                        h(1, 1)
                    })
                })
                V.Page = q:Create("Frame", {
                    Parent = o.ContentHolder.Instance,
                    BackgroundTransparency = 1,
                    Name = "\000",
                    BorderColor3 = A(0, 0, 0),
                    Size = e(1, 0, 1, 0);
                    Visible = false,
                    BorderSizePixel = 0;
                    BackgroundColor3 = A(255, 255, 255)
                })
                if o.HasColumns then
                    q:Create("UIListLayout", {
                        Parent = V.Page.Instance;
                        FillDirection = Enum.FillDirection.Horizontal,
                        HorizontalFlex = Enum.UIFlexAlignment.Fill,
                        Padding = Y(0, 20);
                        SortOrder = Enum.SortOrder.LayoutOrder;
                        VerticalFlex = Enum.UIFlexAlignment.Fill
                    })
                end
            end
            function x.Column(x, X)
                if not o.HasColumns then
                    return
                end
                local C = q:Create("ScrollingFrame", {
                    Parent = V.Page.Instance;
                    ScrollBarImageColor3 = A(0, 0, 0),
                    Active = true;
                    AutomaticCanvasSize = Enum.AutomaticSize.Y;
                    ScrollBarThickness = 0,
                    Name = "\000",
                    MidImage = "rbxassetid://85239668542938";
                    TopImage = "rbxassetid://85239668542938",
                    BottomImage = "rbxassetid://85239668542938";
                    BackgroundTransparency = 1,
                    Size = e(0, 100, 0, 100),
                    BackgroundColor3 = A(255, 255, 255);
                    BorderColor3 = A(0, 0, 0),
                    BorderSizePixel = 0,
                    CanvasSize = e(0, 0, 0, 0)
                })
                C:AddToTheme({
                    ScrollBarImageColor3 = "Accent"
                })
                local y = q:Create("UIPadding", {
                    Parent = C.Instance,
                    PaddingTop = Y(0, 18),
                    PaddingBottom = Y(0, 15),
                    PaddingRight = Y(0, 18);
                    PaddingLeft = Y(0, 18)
                })
                if X == 1 then
                    y.Instance.PaddingRight = Y(0, 5)
                elseif X == 2 then
                    y.Instance.PaddingRight = Y(0, 18)
                    y.Instance.PaddingLeft = Y(0, 5)
                end
                q:Create("UIListLayout", {
                    Parent = C.Instance,
                    Padding = Y(0, 17),
                    SortOrder = Enum.SortOrder.LayoutOrder
                })
                return C
            end
            function x.Turn(C, o)
                x.Active = o
                V.Page.Instance.Visible = o
                if x.Active then
                    V.Inactive:ChangeItemTheme({
                        TextColor3 = "Accent"
                    })
                    V.Liner:ChangeItemTheme({
                        BackgroundColor3 = "Accent"
                    })
                    V.Inactive:Tween(nil, {
                        TextColor3 = X.Theme.Accent
                    })
                    V.Liner:Tween(nil, {
                        BackgroundColor3 = X.Theme.Accent
                    })
                    V.Glow:Tween(nil, {
                        BackgroundTransparency = 0;
                        Size = e(1, 2, 1, 0)
                    })
                else
                    V.Inactive:ChangeItemTheme({
                        TextColor3 = "Text"
                    })
                    V.Liner:ChangeItemTheme({
                        BackgroundColor3 = "Dark Liner"
                    })
                    V.Inactive:Tween(nil, {
                        TextColor3 = X.Theme.Text
                    })
                    V.Liner:Tween(nil, {
                        BackgroundColor3 = (X.Theme)["Dark Liner"]
                    })
                    V.Glow:Tween(nil, {
                        BackgroundTransparency = 1;
                        Size = e(1, 2, 0, 0)
                    })
                end
            end
            V.Inactive:Connect("MouseButton1Down", function()
                for o, X in o.PagesTable do
                    X:Turn(X == x)
                end
            end)
            if # o.PagesTable == 0 then
                x:Turn(true)
            end
            b(o.PagesTable, x)
            return x, V
        end
        m.Section = function(o)
            local x = {}
            do
                x.Section = q:Create("Frame", {
                    Parent = o.Parent.Instance,
                    Name = "\000",
                    Size = e(1, 0, 0, 25),
                    BorderColor3 = A(0, 0, 0),
                    BorderSizePixel = 2,
                    AutomaticSize = Enum.AutomaticSize.Y;
                    BackgroundColor3 = A(19, 19, 19)
                })
                x.Section:AddToTheme({
                    BackgroundColor3 = "Section Background";
                    BorderColor3 = "Outline"
                })
                q:Create("UIPadding", {
                    Parent = x.Section.Instance;
                    PaddingBottom = Y(0, 10)
                });
                (q:Create("UIStroke", {
                    Parent = x.Section.Instance;
                    Color = A(68, 68, 68);
                    LineJoinMode = Enum.LineJoinMode.Miter;
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                })):AddToTheme({
                    Color = "Border"
                })
                x.Title = q:Create("Frame", {
                    Parent = x.Section.Instance,
                    Size = e(1, - 4, 0, 2),
                    Name = "\000";
                    Position = e(0, 2, 0, - 2);
                    BorderColor3 = A(0, 0, 0);
                    BorderSizePixel = 0,
                    AutomaticSize = Enum.AutomaticSize.X;
                    BackgroundColor3 = A(31, 226, 130)
                })
                x.Title:AddToTheme({
                    BackgroundColor3 = "Accent"
                })
                q:Create("UIGradient", {
                    Parent = x.Title.Instance,
                    Color = g({
                        i(0, A(226, 226, 226)),
                        i(1, A(255, 255, 255))
                    });
                    Transparency = I({
                        h(0, .51249998807907),
                        h(.42, .76875001192093);
                        h(1, 1)
                    })
                })
                x.Text = q:Create("TextLabel", {
                    Parent = x.Title.Instance;
                    FontFace = X.Font,
                    TextColor3 = A(180, 180, 180);
                    BorderColor3 = A(0, 0, 0),
                    Text = o.Name;
                    Size = e(0, 40, 0, 13);
                    Name = "\000",
                    Position = e(0, 9, 0, 0),
                    BorderSizePixel = 0;
                    AutomaticSize = Enum.AutomaticSize.X;
                    TextSize = 12;
                    BackgroundColor3 = A(19, 19, 19)
                })
                x.Text:AddToTheme({
                    TextColor3 = "Text",
                    BackgroundColor3 = "Section Background"
                })
                q:Create("UIPadding", {
                    Parent = x.Text.Instance,
                    PaddingLeft = Y(0, 3);
                    PaddingRight = Y(0, 4);
                    PaddingBottom = Y(0, 2)
                })
                x.Content = q:Create("Frame", {
                    Parent = x.Section.Instance;
                    Name = "\000";
                    BackgroundTransparency = 1;
                    Position = e(0, 12, 0, 17),
                    BorderColor3 = A(0, 0, 0),
                    Size = e(1, - 24, 1, - 20);
                    BorderSizePixel = 0,
                    BackgroundColor3 = A(255, 255, 255)
                })
                q:Create("UIListLayout", {
                    Parent = x.Content.Instance;
                    Padding = Y(0, 6);
                    SortOrder = Enum.SortOrder.LayoutOrder
                })
            end
            return x
        end
        m.Toggle = function(o)
            local x = {
                Value = false;
                Flag = o.Flag
            }
            local V = {}
            do
                V.Toggle = q:Create("TextButton", {
                    Parent = o.Parent.Instance,
                    FontFace = X.Font;
                    TextColor3 = A(0, 0, 0),
                    BorderColor3 = A(0, 0, 0);
                    Text = "",
                    AutoButtonColor = false;
                    BackgroundTransparency = 1;
                    Name = "\000",
                    Size = e(1, 0, 0, 15),
                    BorderSizePixel = 0;
                    TextSize = 14;
                    BackgroundColor3 = A(172, 158, 158)
                })
                if o.Tooltip then
                    V.Toggle:Tooltip(o.Tooltip)
                end
                V.Indicator = q:Create("Frame", {
                    Parent = V.Toggle.Instance;
                    AnchorPoint = t(0, .5);
                    Name = "\000";
                    Position = e(0, 0, .5, 0),
                    BorderColor3 = A(0, 0, 0);
                    Size = e(0, 10, 0, 10);
                    BorderSizePixel = 0,
                    BackgroundColor3 = A(63, 63, 63)
                })
                V.Indicator:AddToTheme({
                    BackgroundColor3 = "Element"
                });
                (q:Create("UIStroke", {
                    Parent = V.Indicator.Instance,
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                    LineJoinMode = Enum.LineJoinMode.Miter
                })):AddToTheme({
                    Color = "Outline"
                })
                q:Create("UIGradient", {
                    Parent = V.Indicator.Instance,
                    Rotation = 90;
                    Color = g({
                        i(0, A(255, 255, 255));
                        i(1, A(127, 127, 127))
                    })
                })
                V.Text = q:Create("TextLabel", {
                    Parent = V.Toggle.Instance;
                    FontFace = X.Font,
                    TextColor3 = A(180, 180, 180);
                    BorderColor3 = A(0, 0, 0);
                    Text = o.Name,
                    Name = "\000",
                    Size = e(1, - 18, 1, 0);
                    BackgroundTransparency = 1,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Position = e(0, 18, 0, - 1);
                    BorderSizePixel = 0;
                    TextSize = 12,
                    BackgroundColor3 = A(255, 255, 255)
                })
                V.Text:AddToTheme({
                    TextColor3 = "Text"
                })
                if o.Risky then
                    V.Text:ChangeItemTheme({
                        TextColor3 = "Risky"
                    })
                else
                    V.Text:ChangeItemTheme({
                        TextColor3 = "Text"
                    })
                end
            end
            function x.Set(y, C)
                x.Value = C;
                (X.Flags)[x.Flag] = x.Value
                if x.Value then
                    V.Indicator:ChangeItemTheme({
                        BackgroundColor3 = "Accent"
                    })
                    V.Indicator:Tween(nil, {
                        BackgroundColor3 = X.Theme.Accent
                    })
                    if not o.Risky then
                        V.Text:ChangeItemTheme({
                            TextColor3 = "Accent"
                        })
                        V.Text:Tween(nil, {
                            TextColor3 = X.Theme.Accent
                        })
                    end
                else
                    V.Indicator:ChangeItemTheme({
                        BackgroundColor3 = "Element"
                    })
                    V.Indicator:Tween(nil, {
                        BackgroundColor3 = X.Theme.Element
                    })
                    if not o.Risky then
                        V.Text:ChangeItemTheme({
                            TextColor3 = "Text"
                        })
                        V.Text:Tween(nil, {
                            TextColor3 = X.Theme.Text
                        })
                    end
                end
                if o.Callback then
                    X:SafeCall(o.Callback, x.Value)
                end
            end
            function x.Get(o)
                return x.Value
            end
            function x.SetVisibility(X, o)
                V.Toggle.Instance.Visible = o
            end
            if o.Default then
                x:Set(o.Default)
            end
            V.Toggle:Connect("MouseButton1Down", function()
                x:Set(not x.Value)
            end);
            (X.SetFlags)[x.Flag] = function(o)
                x:Set(o)
            end
            return x, V
        end
    end
    m.Button = function(o)
        local x = {}
        local V = {}
        do
            V.Button = q:Create("TextButton", {
                Parent = o.Parent.Instance;
                FontFace = X.Font,
                TextColor3 = A(0, 0, 0),
                BorderColor3 = A(0, 0, 0);
                Text = "",
                AutoButtonColor = false;
                Name = "\000";
                Size = e(1, 0, 0, 17);
                BorderSizePixel = 0;
                TextSize = 14,
                BackgroundColor3 = A(63, 63, 63)
            })
            V.Button:AddToTheme({
                BackgroundColor3 = "Element"
            })
            if o.Tooltip then
                V.Button:Tooltip(o.Tooltip)
            end;
            (q:Create("UIStroke", {
                Parent = V.Button.Instance;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            q:Create("UIGradient", {
                Parent = V.Button.Instance;
                Rotation = 90;
                Color = g({
                    i(0, A(255, 255, 255));
                    i(1, A(127, 127, 127))
                })
            })
            V.Text = q:Create("TextLabel", {
                Parent = V.Button.Instance;
                FontFace = X.Font,
                TextColor3 = A(180, 180, 180),
                BorderColor3 = A(0, 0, 0);
                Text = o.Name;
                Name = "\000";
                Position = e(0, 0, 0, - 1);
                BackgroundTransparency = 1;
                Size = e(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextWrapped = true,
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            V.Text:AddToTheme({
                TextColor3 = "Text"
            })
            if o.Risky then
                V.Text:ChangeItemTheme({
                    TextColor3 = "Risky"
                })
            else
                V.Text:ChangeItemTheme({
                    TextColor3 = "Text"
                })
            end
        end
        function x.Press(x)
            X:SafeCall(o.Callback)
            V.Text:ChangeItemTheme({
                TextColor3 = "Accent"
            })
            V.Button:ChangeItemTheme({
                BackgroundColor3 = "Accent"
            })
            V.Text:Tween(nil, {
                TextColor3 = X.Theme.Accent
            })
            V.Button:Tween(nil, {
                BackgroundColor3 = X.Theme.Accent
            })
            task.wait(.1)
            if not o.Risky then
                V.Text:ChangeItemTheme({
                    TextColor3 = "Text"
                })
                V.Button:ChangeItemTheme({
                    BackgroundColor3 = "Element"
                })
                V.Text:Tween(nil, {
                    TextColor3 = X.Theme.Text
                })
                V.Button:Tween(nil, {
                    BackgroundColor3 = X.Theme.Element
                })
            else
                V.Text:ChangeItemTheme({
                    TextColor3 = "Risky"
                })
                V.Button:ChangeItemTheme({
                    BackgroundColor3 = "Element"
                })
                V.Text:Tween(nil, {
                    TextColor3 = X.Theme.Risky
                })
                V.Button:Tween(nil, {
                    BackgroundColor3 = X.Theme.Element
                })
            end
        end
        function x.SetVisibility(X, o)
            V.Button.Instance.Visible = o
        end
        function x.SubButton(x, o)
            local C = {}
            V.ButtonHolder = q:Create("Frame", {
                Parent = o.Parent.Instance,
                BackgroundTransparency = 1,
                Name = "\000";
                BorderColor3 = A(0, 0, 0),
                Size = e(1, 0, 0, 17),
                BorderSizePixel = 0,
                BackgroundColor3 = A(255, 255, 255)
            })
            V.Button.Instance.Parent = V.ButtonHolder.Instance
            V.Button.Instance.Size = e(.475, 3, 0, 17)
            local y = {}
            do
                y.Button = q:Create("TextButton", {
                    Parent = V.ButtonHolder.Instance,
                    FontFace = X.Font;
                    TextColor3 = A(0, 0, 0),
                    BorderColor3 = A(0, 0, 0);
                    Text = "";
                    AutoButtonColor = false;
                    AnchorPoint = t(1, 0),
                    Name = "\000";
                    Position = e(1, 0, 0, 0);
                    Size = e(.475, 3, 0, 17),
                    BorderSizePixel = 0,
                    TextSize = 14;
                    BackgroundColor3 = A(63, 63, 63)
                })
                y.Button:AddToTheme({
                    BackgroundColor3 = "Element"
                })
                if o.Tooltip then
                    y.Button:Tooltip(o.Tooltip)
                end;
                (q:Create("UIStroke", {
                    Parent = y.Button.Instance;
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                    LineJoinMode = Enum.LineJoinMode.Miter
                })):AddToTheme({
                    Color = "Outline"
                })
                q:Create("UIGradient", {
                    Parent = y.Button.Instance,
                    Rotation = 90;
                    Color = g({
                        i(0, A(255, 255, 255));
                        i(1, A(127, 127, 127))
                    })
                })
                y.Text = q:Create("TextLabel", {
                    Parent = y.Button.Instance,
                    FontFace = X.Font;
                    TextColor3 = A(180, 180, 180),
                    BorderColor3 = A(0, 0, 0);
                    Text = o.Name;
                    Name = "\000",
                    BackgroundTransparency = 1;
                    Size = e(1, 0, 1, 0);
                    Position = e(0, 0, 0, - 1);
                    BorderSizePixel = 0,
                    TextWrapped = true,
                    TextSize = 12,
                    BackgroundColor3 = A(255, 255, 255)
                })
                y.Text:AddToTheme({
                    TextColor3 = "Text"
                })
                if o.Risky then
                    y.Text:ChangeItemTheme({
                        TextColor3 = "Risky"
                    })
                else
                    y.Text:ChangeItemTheme({
                        TextColor3 = "Text"
                    })
                end
            end
            function C.Press(x)
                X:SafeCall(o.Callback)
                y.Text:ChangeItemTheme({
                    TextColor3 = "Accent"
                })
                y.Button:ChangeItemTheme({
                    BackgroundColor3 = "Accent"
                })
                y.Text:Tween(nil, {
                    TextColor3 = X.Theme.Accent
                })
                y.Button:Tween(nil, {
                    BackgroundColor3 = X.Theme.Accent
                })
                task.wait(.1)
                if not o.Risky then
                    y.Text:ChangeItemTheme({
                        TextColor3 = "Text"
                    })
                    y.Button:ChangeItemTheme({
                        BackgroundColor3 = "Element"
                    })
                    y.Text:Tween(nil, {
                        TextColor3 = X.Theme.Text
                    })
                    y.Button:Tween(nil, {
                        BackgroundColor3 = X.Theme.Element
                    })
                else
                    y.Text:ChangeItemTheme({
                        TextColor3 = "Risky"
                    })
                    y.Button:ChangeItemTheme({
                        BackgroundColor3 = "Element"
                    })
                    y.Text:Tween(nil, {
                        TextColor3 = X.Theme.Risky
                    })
                    y.Button:Tween(nil, {
                        BackgroundColor3 = X.Theme.Element
                    })
                end
            end
            function C.SetVisibility(X, o)
                y.Button.Instance.Visible = o
            end
            y.Button:Connect("MouseButton1Down", function()
                C:Press()
            end)
        end
        V.Button:Connect("MouseButton1Down", function()
            x:Press()
        end)
        return x, V
    end
    m.Slider = function(x)
        local V = {
            Sliding = false,
            Value = 0;
            Flag = x.Flag
        }
        local C = {}
        do
            C.Slider = q:Create("Frame", {
                Parent = x.Parent.Instance,
                BackgroundTransparency = 1;
                Name = "\000",
                BorderColor3 = A(0, 0, 0),
                Size = e(1, 0, 0, 26),
                BorderSizePixel = 0,
                BackgroundColor3 = A(255, 255, 255)
            })
            if x.Tooltip then
                C.Slider:Tooltip(x.Tooltip)
            end
            C.Text = q:Create("TextLabel", {
                Parent = C.Slider.Instance;
                FontFace = X.Font;
                TextColor3 = A(180, 180, 180),
                BorderColor3 = A(0, 0, 0);
                Text = x.Name,
                Name = "\000",
                BackgroundTransparency = 1;
                TextXAlignment = Enum.TextXAlignment.Left,
                Size = e(1, 0, 0, 13);
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            C.Text:AddToTheme({
                TextColor3 = "Text"
            })
            C.RealSlider = q:Create("TextButton", {
                Parent = C.Slider.Instance,
                AutoButtonColor = false,
                Text = "";
                AnchorPoint = t(0, 1),
                Name = "\000";
                Position = e(0, 0, 1, 0);
                BorderColor3 = A(0, 0, 0),
                Size = e(1, 0, 0, 8),
                BorderSizePixel = 0;
                BackgroundColor3 = A(63, 63, 63)
            })
            C.RealSlider:AddToTheme({
                BackgroundColor3 = "Element"
            })
            q:Create("UIGradient", {
                Parent = C.RealSlider.Instance,
                Rotation = 90,
                Color = g({
                    i(0, A(255, 255, 255)),
                    i(1, A(127, 127, 127))
                })
            });
            (q:Create("UIStroke", {
                Parent = C.RealSlider.Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            C.Indicator = q:Create("Frame", {
                Parent = C.RealSlider.Instance,
                Name = "\000";
                BorderColor3 = A(0, 0, 0),
                Size = e(.23999999463558, 0, 1, 0);
                BorderSizePixel = 0;
                BackgroundColor3 = A(31, 226, 130)
            })
            C.Indicator:AddToTheme({
                BackgroundColor3 = "Accent"
            })
            q:Create("UIGradient", {
                Parent = C.Indicator.Instance,
                Rotation = 90,
                Color = g({
                    i(0, A(255, 255, 255)),
                    i(1, A(127, 127, 127))
                })
            })
            C.Value = q:Create("TextLabel", {
                Parent = C.Slider.Instance,
                FontFace = X.Font,
                TextColor3 = A(180, 180, 180);
                BorderColor3 = A(0, 0, 0),
                Text = "24%",
                Name = "\000",
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Right,
                Size = e(1, 0, 0, 13),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            C.Value:AddToTheme({
                TextColor3 = "Text"
            })
        end
        function V.Set(y, o)
            V.Value = a(X:Round(o, x.Decimals), x.Min, x.Max);
            (X.Flags)[V.Flag] = V.Value
            C.Indicator:Tween(TweenInfo.new(.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = e((V.Value - x.Min) / (x.Max - x.Min), 0, 1, 0)
            })
            C.Value.Instance.Text = P("%s%s", tostring(V.Value), x.Suffix)
            if x.Callback then
                X:SafeCall(x.Callback, V.Value)
            end
        end
        function V.SetVisibility(X, o)
            C.Slider.Instance.Visible = o
        end
        function V.Get(o)
            return V.Value
        end
        C.RealSlider:Connect("InputBegan", function(o)
            if o.UserInputType == Enum.UserInputType.MouseButton1 or o.UserInputType == Enum.UserInputType.Touch then
                V.Sliding = true
                local X = (s.X - C.RealSlider.Instance.AbsolutePosition.X) / C.RealSlider.Instance.AbsoluteSize.X
                local y = (x.Max - x.Min) * X + x.Min
                V:Set(y)
                o.Changed:Connect(function()
                    if o.UserInputState == Enum.UserInputState.End then
                        V.Sliding = false
                    end
                end)
            end
        end)
        X:Connect(o.InputChanged, function(o)
            if o.UserInputType == Enum.UserInputType.MouseMovement or o.UserInputType == Enum.UserInputType.Touch then
                if V.Sliding then
                    local o = (s.X - C.RealSlider.Instance.AbsolutePosition.X) / C.RealSlider.Instance.AbsoluteSize.X
                    local X = (x.Max - x.Min) * o + x.Min
                    V:Set(X)
                end
            end
        end)
        if x.Default then
            V:Set(x.Default)
        end;
        (X.SetFlags)[V.Flag] = function(o)
            V:Set(o)
        end
        return V, C
    end
    m.Dropdown = function(x)
        local V = {
            Value = {};
            IsOpen = false,
            Options = {},
            Flag = x.Flag,
            Name = "Dropdown"
        }
        local C = {}
        do
            C.Dropdown = q:Create("Frame", {
                Parent = x.Parent.Instance,
                BackgroundTransparency = 1,
                Name = "\000";
                BorderColor3 = A(0, 0, 0);
                Size = e(1, 0, 0, 17),
                BorderSizePixel = 0;
                BackgroundColor3 = A(255, 255, 255)
            })
            if x.Tooltip then
                C.Dropdown:Tooltip(x.Tooltip)
            end
            C.Text = q:Create("TextLabel", {
                Parent = C.Dropdown.Instance;
                FontFace = X.Font,
                TextColor3 = A(180, 180, 180);
                BorderColor3 = A(0, 0, 0),
                Text = x.Name,
                Name = "\000",
                BackgroundTransparency = 1;
                TextXAlignment = Enum.TextXAlignment.Left;
                Size = e(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            C.Text:AddToTheme({
                TextColor3 = "Text"
            })
            C.RealDropdown = q:Create("TextButton", {
                Parent = C.Dropdown.Instance;
                AutoButtonColor = false;
                Text = "",
                AnchorPoint = t(1, 1);
                Name = "\000";
                Position = e(1, 0, 1, 0);
                BorderColor3 = A(0, 0, 0);
                Size = e(1, - 85, 0, 17);
                BorderSizePixel = 0;
                BackgroundColor3 = A(63, 63, 63)
            })
            C.RealDropdown:AddToTheme({
                BackgroundColor3 = "Element"
            })
            q:Create("UIGradient", {
                Parent = C.RealDropdown.Instance;
                Rotation = 90,
                Color = g({
                    i(0, A(255, 255, 255)),
                    i(1, A(127, 127, 127))
                })
            });
            (q:Create("UIStroke", {
                Parent = C.RealDropdown.Instance;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            C.Value = q:Create("TextLabel", {
                Parent = C.RealDropdown.Instance,
                FontFace = X.Font;
                TextColor3 = A(180, 180, 180),
                BorderColor3 = A(0, 0, 0),
                Text = "--";
                Name = "\000",
                Size = e(1, - 25, 1, 0),
                Position = e(0, 6, 0, - 1),
                BackgroundTransparency = 1;
                TextXAlignment = Enum.TextXAlignment.Left,
                BorderSizePixel = 0,
                TextTruncate = Enum.TextTruncate.AtEnd;
                TextSize = 12;
                BackgroundColor3 = A(255, 255, 255)
            })
            C.Value:AddToTheme({
                TextColor3 = "Text"
            })
            C.OpenIcon = q:Create("ImageLabel", {
                Parent = C.RealDropdown.Instance;
                ImageColor3 = A(170, 170, 170);
                BorderColor3 = A(0, 0, 0);
                Name = "\000";
                AnchorPoint = t(1, .5),
                Image = "rbxassetid://97269400371594";
                BackgroundTransparency = 1;
                Position = e(1, - 2, .5, 0),
                Size = e(0, 14, 1, - 2),
                BorderSizePixel = 0,
                BackgroundColor3 = A(255, 255, 255)
            })
            C.OptionHolder = q:Create("ScrollingFrame", {
                Parent = C.Dropdown.Instance;
                ScrollBarImageColor3 = A(31, 226, 130);
                Active = true,
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                ScrollBarThickness = 2;
                Size = e(1, - 85, 0, x.MaxSize),
                MidImage = "rbxassetid://85239668542938",
                TopImage = "rbxassetid://85239668542938";
                BottomImage = "rbxassetid://85239668542938",
                AnchorPoint = t(1, 0),
                Visible = false;
                Name = "\000",
                Position = e(1, 0, 1, 3);
                BackgroundColor3 = A(19, 19, 19),
                BorderColor3 = A(0, 0, 0),
                BorderSizePixel = 0,
                CanvasSize = e(0, 0, 0, 0)
            })
            C.OptionHolder:AddToTheme({
                BackgroundColor3 = "Section Background",
                ScrollBarImageColor3 = "Accent"
            })
            C.Holder = q:Create("TextButton", {
                Parent = C.OptionHolder.Instance,
                AutoButtonColor = false,
                Text = "";
                BorderColor3 = A(0, 0, 0),
                Name = "\000";
                Position = e(0, 0, 0, 0),
                Size = e(1, 0, 1, 0),
                BackgroundTransparency = 1;
                BorderSizePixel = 0
            });
            (q:Create("UIStroke", {
                Parent = C.OptionHolder.Instance;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            q:Create("UIListLayout", {
                Parent = C.Holder.Instance;
                Padding = Y(0, 2);
                SortOrder = Enum.SortOrder.LayoutOrder
            })
            q:Create("UIPadding", {
                Parent = C.Holder.Instance;
                PaddingBottom = Y(0, 8)
            })
        end
        local y = false
        function V.Set(y, o)
            if x.Multi then
                if type(o) ~= "table" then
                    return
                end
                V.Value = o;
                (X.Flags)[V.Flag] = V.Value
                for o, X in o do
                    local x = (V.Options)[X]
                    if not x then
                        return
                    end
                    x.Selected = true
                    x:Toggle("Active")
                end
                C.Value.Instance.Text = D(o, ", ")
            else
                local x = (V.Options)[o]
                if not x then
                    return
                end
                x.Selected = true
                x:Toggle("Active")
                V.Value = x.Name;
                (X.Flags)[V.Flag] = V.Value
                for o, X in V.Options do
                    if X ~= x then
                        X.Selected = false
                        X:Toggle("Inactive")
                    end
                end
                C.Value.Instance.Text = V.Value
            end
            if x.Callback then
                X:SafeCall(x.Callback, V.Value)
            end
        end
        function V.SetVisibility(X, o)
            C.Dropdown.Instance.Visible = o
        end
        function V.SetOpen(X, o)
            V.IsOpen = o
            if V.IsOpen then
                y = true
                C.OptionHolder.Instance.Visible = true
                C.OptionHolder.Instance.ZIndex = 1001
                for o, X in C.OptionHolder.Instance:GetDescendants() do
                    if not j(X.ClassName, "UI") then
                        X.ZIndex = 1001
                    end
                end
                task.wait(.1)
                y = false
            else
                C.OptionHolder.Instance.Visible = false
                C.OptionHolder.Instance.ZIndex = 1
                for o, X in C.OptionHolder.Instance:GetDescendants() do
                    if not j(X.ClassName, "UI") then
                        X.ZIndex = 1
                    end
                end
                y = false
            end
        end
        function V.Remove(X, o)
            if (V.Options)[o] then
                (V.Options)[o].OptionButton:Clean()
            end
        end
        function V.Refresh(X, o)
            for o, X in V.Options do
                V:Remove(X.Name)
            end
            for o, X in o do
                V:Add(X)
            end
        end
        function V.Add(y, o)
            local E = q:Create("TextButton", {
                Parent = C.Holder.Instance,
                FontFace = X.Font;
                TextColor3 = A(180, 180, 180);
                BorderColor3 = A(0, 0, 0),
                Text = o;
                AutoButtonColor = false;
                Name = "\000";
                Size = e(1, 0, 0, 15);
                BackgroundTransparency = 1;
                TextXAlignment = Enum.TextXAlignment.Left,
                BorderSizePixel = 0;
                TextTruncate = Enum.TextTruncate.AtEnd,
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            E:AddToTheme({
                TextColor3 = "Text"
            })
            local L = q:Create("UIPadding", {
                Parent = E.Instance;
                PaddingTop = Y(0, 5);
                PaddingLeft = Y(0, 7)
            })
            local d = {
                Name = o;
                OptionButton = E;
                Padding = L;
                Selected = false
            }
            function d.Toggle(x, o)
                if o == "Active" then
                    d.OptionButton:ChangeItemTheme({
                        TextColor3 = "Accent"
                    })
                    d.OptionButton:Tween(nil, {
                        TextColor3 = X.Theme.Accent
                    })
                    d.Padding.Instance.PaddingLeft = Y(0, 12)
                else
                    d.OptionButton:ChangeItemTheme({
                        TextColor3 = "Text"
                    })
                    d.OptionButton:Tween(nil, {
                        TextColor3 = X.Theme.Text
                    })
                    d.Padding.Instance.PaddingLeft = Y(0, 7)
                end
            end
            function d.Set(o)
                d.Selected = not d.Selected
                if x.Multi then
                    local o = n(V.Value, d.Name)
                    if o then
                        c(V.Value, o)
                    else
                        b(V.Value, d.Name)
                    end;
                    (X.Flags)[V.Flag] = V.Value
                    d:Toggle(o and "Inactive" or "Active")
                    local x = # V.Value > 0 and D(V.Value, ", ") or "--"
                    C.Value.Instance.Text = x
                else
                    if d.Selected then
                        V.Value = d.Name
                        d:Toggle("Active")
                        C.Value.Instance.Text = d.Name;
                        (X.Flags)[V.Flag] = V.Value
                        for o, X in V.Options do
                            if X ~= d then
                                X.Selected = false
                                X:Toggle("Inactive")
                            end
                        end
                    else
                        V.Value = nil
                        d:Toggle("Inactive")
                        C.Value.Instance.Text = "--";
                        (X.Flags)[V.Flag] = V.Value
                    end
                end
                if x.Callback then
                    X:SafeCall(x.Callback, V.Value)
                end
            end
            d.OptionButton:Connect("MouseButton1Down", function()
                d:Set()
            end);
            (V.Options)[o] = d
            return d
        end
        function V.Get(o)
            return V.Value
        end
        X:Connect(o.InputBegan, function(o)
            if o.UserInputType == Enum.UserInputType.MouseButton1 or o.UserInputType == Enum.UserInputType.Touch then
                if y then
                    return
                end
                if not V.IsOpen then
                    return
                end
                if X:IsMouseOverFrame(C.OptionHolder.Instance) then
                    return
                end
                V:SetOpen(false)
            end
        end)
        C.RealDropdown:Connect("MouseButton1Down", function()
            V:SetOpen(not V.IsOpen)
        end)
        for o, X in x.Items do
            V:Add(X)
        end
        if x.Default then
            V:Set(x.Default)
        end;
        (X.SetFlags)[V.Flag] = function(o)
            V:Set(o)
        end
        return V, C
    end
    m.Colorpicker = function(x)
        local V = {
            Hue = 0;
            Saturation = 0,
            Value = 0;
            Alpha = 0,
            Color = nil,
            HexValue = "";
            IsOpen = false;
            Pages = {},
            Flag = x.Flag,
            OnAnimationChanged = nil;
            CurrentAnimation = "",
            AnimationIntensity = 0;
            AnimationSpeed = 0
        };
        (X.Flags)[V.Flag] = {}
        local C = {}
        do
            C.ColorpickerButton = q:Create("TextButton", {
                Parent = x.Parent.Instance,
                FontFace = X.Font,
                TextColor3 = A(0, 0, 0);
                BorderColor3 = A(0, 0, 0),
                Text = "";
                AutoButtonColor = false,
                AnchorPoint = t(1, .5);
                Name = "\000",
                Position = e(1, 0, .5, 0);
                Size = e(0, 25, 0, 12),
                BorderSizePixel = 0,
                TextSize = 14;
                BackgroundColor3 = A(31, 226, 130)
            })
            if x.Tooltip then
                C.ColorpickerButton:Tooltip(x.Tooltip)
            end
            q:Create("UIGradient", {
                Parent = C.ColorpickerButton.Instance;
                Rotation = 90;
                Color = g({
                    i(0, A(255, 255, 255)),
                    i(1, A(127, 127, 127))
                })
            });
            (q:Create("UIStroke", {
                Parent = C.ColorpickerButton.Instance;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            local o = function(o)
                local X = 5
                local x = o % X
                local V = C.ColorpickerButton.Instance.AbsoluteSize
                local y = 4
                local E = ((V.X + y) * x - y) - 25
                C.ColorpickerButton.Instance.Position = e(1, - E, .5, 0)
            end
            o(x.Count)
            C.ColorpickerWindow = m.Window({
                Position = e(0, v.ViewportSize.X / 3, 0, v.ViewportSize.Y / 3);
                Size = e(0, 263, 0, 243),
                Parent = X.Holder,
                Visible = false;
                IsTextButton = true,
                Draggable = true
            })
            C.ColorpickerWindow.Outline.Instance.Visible = false
            C.Pages = q:Create("Frame", {
                Parent = C.ColorpickerWindow.Inline.Instance,
                Name = "\000",
                Position = e(.12, - 12, 0, 12),
                BorderColor3 = A(0, 0, 0);
                Size = e(.875, - 2, 0, 37),
                BorderSizePixel = 2,
                BackgroundColor3 = A(13, 13, 13)
            })
            C.Pages:AddToTheme({
                BackgroundColor3 = "Inline";
                BorderColor3 = "Outline"
            });
            (q:Create("UIStroke", {
                Parent = C.Pages.Instance,
                Color = A(68, 68, 68);
                LineJoinMode = Enum.LineJoinMode.Miter;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            })):AddToTheme({
                Color = "Border"
            })
            C.RealHolder = q:Create("Frame", {
                Parent = C.Pages.Instance;
                Name = "\000";
                BackgroundTransparency = 1,
                Position = e(0, 7, 0, 0);
                BorderColor3 = A(0, 0, 0),
                Size = e(1, - 14, 1, 0);
                BorderSizePixel = 0;
                BackgroundColor3 = A(255, 255, 255)
            })
            q:Create("UIListLayout", {
                Parent = C.RealHolder.Instance;
                VerticalAlignment = Enum.VerticalAlignment.Center,
                FillDirection = Enum.FillDirection.Horizontal,
                HorizontalFlex = Enum.UIFlexAlignment.Fill,
                Padding = Y(0, 15);
                SortOrder = Enum.SortOrder.LayoutOrder
            })
            C.Content = q:Create("Frame", {
                Parent = C.ColorpickerWindow.Inline.Instance;
                Name = "\000";
                Position = e(.12, - 12, 0, 60);
                BorderColor3 = A(0, 0, 0),
                Size = e(.875, - 2, 1, - 69);
                BorderSizePixel = 2;
                BackgroundColor3 = A(13, 13, 13)
            })
            C.Content:AddToTheme({
                BackgroundColor3 = "Inline",
                BorderColor3 = "Outline"
            });
            (q:Create("UIStroke", {
                Parent = C.Content.Instance,
                Color = A(68, 68, 68);
                LineJoinMode = Enum.LineJoinMode.Miter;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            })):AddToTheme({
                Color = "Border"
            })
            local y, E = m.Page({
                HasColumns = false;
                PageHolder = C.RealHolder;
                Name = "Picking",
                PagesTable = V.Pages;
                ContentHolder = C.Content
            })
            local L, d = m.Page({
                HasColumns = false;
                PageHolder = C.RealHolder,
                Name = "Lerping",
                PagesTable = V.Pages,
                ContentHolder = C.Content
            })
            d.Page.Instance.Visible = false
            local s, w = m.Page({
                HasColumns = false;
                PageHolder = C.RealHolder,
                Name = "Colors";
                PagesTable = V.Pages,
                ContentHolder = C.Content
            })
            w.Page.Instance.Visible = false
            C.Palette = q:Create("TextButton", {
                Parent = E.Page.Instance,
                FontFace = X.Font;
                TextColor3 = A(0, 0, 0),
                BorderColor3 = A(0, 0, 0),
                Text = "",
                AutoButtonColor = false;
                Name = "\000";
                Position = e(.05, 2, .07, - 2);
                Size = e(.9, - 4, .67, 0);
                BorderSizePixel = 0,
                TextSize = 14,
                BackgroundColor3 = A(31, 226, 130)
            });
            (q:Create("UIStroke", {
                Parent = C.Palette.Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            C.PaletteDragger = q:Create("Frame", {
                Parent = C.Palette.Instance;
                Name = "\000";
                BorderColor3 = A(0, 0, 0),
                Size = e(0, 2, 0, 2),
                BorderSizePixel = 0;
                BackgroundColor3 = A(255, 255, 255)
            });
            (q:Create("UIStroke", {
                Parent = C.PaletteDragger.Instance;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            C.Saturation = q:Create("ImageLabel", {
                Parent = C.Palette.Instance,
                BorderColor3 = A(0, 0, 0),
                Image = X:GetImage("Saturation"),
                BackgroundTransparency = 1,
                Name = "\000",
                Size = e(1, 0, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = A(255, 255, 255)
            })
            C.Value = q:Create("ImageLabel", {
                Parent = C.Palette.Instance,
                BorderColor3 = A(0, 0, 0),
                Image = X:GetImage("Value");
                BackgroundTransparency = 1,
                Name = "\000";
                Size = e(1, 0, 1, 0);
                BorderSizePixel = 0,
                BackgroundColor3 = A(255, 255, 255)
            })
            C.Alpha = q:Create("TextButton", {
                Parent = E.Page.Instance;
                FontFace = X.Font;
                TextColor3 = A(0, 0, 0);
                BorderColor3 = A(0, 0, 0);
                Text = "",
                AutoButtonColor = false;
                Name = "\000",
                Position = e(.05, 2, 1, - 22);
                Size = e(.9, - 4, .1, - 3),
                BorderSizePixel = 0;
                TextSize = 14;
                BackgroundColor3 = A(31, 226, 130)
            })
            C.Checkers = q:Create("ImageLabel", {
                Parent = C.Alpha.Instance;
                ScaleType = Enum.ScaleType.Tile,
                BorderColor3 = A(0, 0, 0),
                Name = "\000",
                Image = X:GetImage("Checkers"),
                BackgroundTransparency = 1,
                Size = e(1, 0, 1, 0),
                TileSize = e(0, 6, 0, 6);
                BorderSizePixel = 0;
                BackgroundColor3 = A(255, 255, 255)
            })
            q:Create("UIGradient", {
                Parent = C.Checkers.Instance,
                Transparency = I({
                    h(0, 1),
                    h(1, 0)
                })
            });
            (q:Create("UIStroke", {
                Parent = C.Alpha.Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            C.AlphaDragger = q:Create("Frame", {
                Parent = C.Alpha.Instance;
                Name = "\000";
                BorderColor3 = A(0, 0, 0),
                Size = e(0, 1, 1, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = A(255, 255, 255)
            });
            (q:Create("UIStroke", {
                Parent = C.AlphaDragger.Instance;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            C.Hue = q:Create("ImageButton", {
                Parent = E.Page.Instance;
                BorderColor3 = A(0, 0, 0);
                AutoButtonColor = false;
                Image = X:GetImage("Hue"),
                Name = "\000",
                Position = e(.05, 2, 1, - 40);
                Size = e(.9, - 4, .1, - 3);
                BorderSizePixel = 0,
                BackgroundColor3 = A(255, 255, 255)
            });
            (q:Create("UIStroke", {
                Parent = C.Hue.Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            C.HueDragger = q:Create("Frame", {
                Parent = C.Hue.Instance,
                Name = "\000";
                BorderColor3 = A(0, 0, 0);
                Size = e(0, 1, 1, 0);
                BorderSizePixel = 0,
                BackgroundColor3 = A(255, 255, 255)
            });
            (q:Create("UIStroke", {
                Parent = C.HueDragger.Instance;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            local T
            local B
            local a
            local u
            local K, r = m.Dropdown({
                Parent = d.Page;
                Name = "Animation";
                Flag = V.Flag .. "AnimationModeDropdown",
                Items = {
                    "Rainbow",
                    "Fade Alpha"
                },
                MaxSize = 75,
                Default = nil;
                Callback = function(o)
                    V.CurrentAnimation = o
                    if V.OnAnimationChanged then
                        V.OnAnimationChanged(o)
                    end
                    if o == "Fade Alpha" and (T and a) then
                        T:SetVisibility(true)
                        a:SetVisibility(true)
                        u.Slider.Instance.Position = e(0, 8, 0, 55)
                    elseif o == "Rainbow" and (T and a) then
                        T:SetVisibility(false)
                        a:SetVisibility(true)
                        u.Slider.Instance.Position = e(0, 8, 0, 25)
                    else
                        T:SetVisibility(false)
                        a:SetVisibility(false)
                        u.Slider.Instance.Position = e(0, 8, 0, 55)
                    end
                end,
                Multi = false
            })
            r.Dropdown.Instance.Size = e(1, - 16, 0, 17)
            r.Dropdown.Instance.Position = e(0, 8, 0, 8)
            T, B = m.Slider({
                Parent = d.Page;
                Name = "Intensity",
                Flag = V.Flag .. "AnimationIntensitySlider";
                Min = 0;
                Max = 100,
                Default = 50,
                Suffix = "%",
                Callback = function(o)
                    V.CurrentAnimationIntensity = o
                end
            })
            T:SetVisibility(false)
            B.Slider.Instance.Size = e(1, - 16, 0, 26)
            B.Slider.Instance.Position = e(0, 8, 0, 25)
            a, u = m.Slider({
                Parent = d.Page,
                Name = "Speed",
                Flag = V.Flag .. "AnimationSpeedSlider";
                Min = 0;
                Max = 5,
                Decimals = .01;
                Default = .2,
                Suffix = "s",
                Callback = function(o)
                    V.CurrentAnimationSpeed = o
                end
            })
            a:SetVisibility(false)
            u.Slider.Instance.Position = e(0, 8, 0, 55)
            u.Slider.Instance.Size = e(1, - 16, 0, 26)
            C.CurrentColor = q:Create("Frame", {
                Parent = w.Page.Instance;
                Name = "\000";
                Position = e(0, 8, 0, 8),
                BorderColor3 = A(0, 0, 0),
                Size = e(0, 55, 1, - 16);
                BorderSizePixel = 0;
                BackgroundColor3 = A(31, 226, 130)
            });
            (q:Create("UIStroke", {
                Parent = C.CurrentColor.Instance;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            q:Create("UIGradient", {
                Parent = C.CurrentColor.Instance;
                Rotation = 123,
                Color = g({
                    i(0, A(125, 125, 125));
                    i(1, A(255, 255, 255))
                })
            })
            C.RGB = q:Create("TextLabel", {
                Parent = w.Page.Instance,
                TextWrapped = true;
                TextColor3 = A(180, 180, 180);
                BorderColor3 = A(0, 0, 0),
                Text = "R,G,B:",
                Name = "\000",
                Size = e(1, - 75, 0, 15);
                Position = e(0, 70, 0, 4);
                BorderSizePixel = 0,
                BackgroundTransparency = 1;
                TextXAlignment = Enum.TextXAlignment.Left,
                RichText = true,
                FontFace = X.Font;
                TextSize = 12;
                BackgroundColor3 = A(255, 255, 255)
            })
            C.RGB:AddToTheme({
                TextColor3 = "Text"
            })
            C.HSV = q:Create("TextLabel", {
                Parent = w.Page.Instance,
                TextWrapped = true,
                TextColor3 = A(180, 180, 180),
                BorderColor3 = A(0, 0, 0),
                Text = "H,S,V: ",
                Name = "\000",
                Size = e(1, - 75, 0, 15),
                Position = e(0, 70, 0, 21);
                BorderSizePixel = 0;
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left;
                RichText = true,
                FontFace = X.Font,
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            C.HSV:AddToTheme({
                TextColor3 = "Text"
            })
            C.Hex = q:Create("TextLabel", {
                Parent = w.Page.Instance;
                TextWrapped = true;
                TextColor3 = A(180, 180, 180);
                BorderColor3 = A(0, 0, 0);
                Text = "HEX:";
                Name = "\000",
                Size = e(1, - 75, 0, 15);
                Position = e(0, 70, 0, 38),
                BorderSizePixel = 0,
                BackgroundTransparency = 1;
                TextXAlignment = Enum.TextXAlignment.Left;
                RichText = true;
                FontFace = X.Font;
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            C.Hex:AddToTheme({
                TextColor3 = "Text"
            })
            local b, n = m.Button({
                Name = "Copy",
                Parent = w.Page;
                Callback = function()
                    X.CopiedColor = V.Color
                    setclipboard(tostring(V.Color))
                end
            })
            n.Button.Instance.Position = e(0, 70, 0, 57)
            n.Button.Instance.Size = e(1, - 75, 0, 17)
            local c, D = m.Button({
                Name = "Paste",
                Parent = w.Page;
                Callback = function()
                    if X.CopiedColor then
                        V:Set(X.CopiedColor, V.Alpha)
                    end
                end
            })
            D.Button.Instance.Position = e(0, 70, 0, 77)
            D.Button.Instance.Size = e(1, - 75, 0, 17)
        end
        local y = false
        local E = false
        local L = false
        local d = false
        function V.Set(x, o, X)
            if type(o) == "table" then
                o = A((o)[1], (o)[2], (o)[3])
                X = (o)[4]
            elseif type(o) == "string" then
                o = T(o)
            end
            V.Hue, V.Saturation, V.Value = o:ToHSV()
            V.Alpha = X or 0
            V.Color = o
            V.HexValue = "#" .. o:ToHex()
            local y = a(1 - V.Saturation, 0, .989)
            local E = a(1 - V.Value, 0, .989)
            C.PaletteDragger:Tween(TweenInfo.new(.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Position = e(y, 0, E, 0)
            })
            local L = a(V.Hue, 0, .994)
            C.HueDragger:Tween(TweenInfo.new(.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Position = e(L, 0, 0, 0)
            })
            local d = a(V.Alpha, 0, .994)
            C.AlphaDragger:Tween(TweenInfo.new(.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Position = e(d, 0, 0, 0)
            })
            V:Update(true)
        end
        function V.Update(y, o)
            V.Color = w(V.Hue, V.Saturation, V.Value)
            V.HexValue = V.Color:ToHex()
            C.Palette:Tween(nil, {
                BackgroundColor3 = w(V.Hue, 1, 1)
            })
            C.ColorpickerButton:Tween(nil, {
                BackgroundColor3 = V.Color
            })
            C.CurrentColor:Tween(nil, {
                BackgroundColor3 = V.Color
            })
            local E = u(X:Round(V.Color.R, .01) * 255)
            local L = u(X:Round(V.Color.G, .01) * 255)
            local d = u(X:Round(V.Color.B, .01) * 255)
            local v = X:Round(V.Hue, .01)
            local s = X:Round(V.Saturation, .01)
            local A = X:Round(V.Value, .01)
            C.RGB.Instance.Text = "RGB: " .. X:ToRich("" .. (E .. (", " .. (L .. (", " .. d)))), V.Color)
            C.Hex.Instance.Text = "HEX: " .. X:ToRich(V.HexValue, V.Color)
            C.HSV.Instance.Text = "HSV: " .. X:ToRich("" .. (v .. (", " .. (s .. (", " .. A)))), V.Color);
            (X.Flags)[V.Flag] = {
                HexValue = V.HexValue,
                Color = V.Color;
                Alpha = V.Alpha;
                Flag = V.Flag
            }
            if not o then
                C.Alpha:Tween(nil, {
                    BackgroundColor3 = V.Color
                })
            end
            if x.Callback then
                X:SafeCall(x.Callback, V.Color, V.Alpha)
            end
        end
        function V.SetOpen(X, o)
            V.IsOpen = o
            if V.IsOpen then
                d = true
                C.ColorpickerWindow.Outline.Instance.Position = e(0, C.ColorpickerButton.Instance.AbsolutePosition.X, 0, C.ColorpickerButton.Instance.AbsolutePosition.Y + 225)
                C.ColorpickerWindow.Outline.Instance.Visible = true
                C.ColorpickerWindow.Outline.Instance.ZIndex = 25
                for o, X in C.ColorpickerWindow.Outline.Instance:GetDescendants() do
                    local x = false
                    repeat
                        if j(X.ClassName, "UI") then
                            x = true
                            break
                        end
                        X.ZIndex = 25
                        x = true
                    until true
                    if not x then
                        break
                    end
                end
                C.PaletteDragger.Instance.ZIndex = 26
                task.wait(.1)
                d = false
            else
                C.ColorpickerWindow.Outline.Instance.Visible = false
                C.ColorpickerWindow.Outline.Instance.ZIndex = 1
                for o, X in C.ColorpickerWindow.Outline.Instance:GetDescendants() do
                    local x = false
                    repeat
                        if j(X.ClassName, "UI") then
                            x = true
                            break
                        end
                        X.ZIndex = 1000
                        x = true
                    until true
                    if not x then
                        break
                    end
                end
                d = false
            end
        end
        function V.Get(o)
            return V.Color, V.Alpha
        end
        function V.SetVisibility(X, o)
            C.ColorpickerButton.Instance.Visible = o
        end
        local s = V.Color
        function V.SlidePalette(X, o)
            if not y or not o then
                return
            end
            local x = a(1 - (o.Position.X - C.Palette.Instance.AbsolutePosition.X) / C.Palette.Instance.AbsoluteSize.X, 0, 1)
            local E = a(1 - (o.Position.Y - C.Palette.Instance.AbsolutePosition.Y) / C.Palette.Instance.AbsoluteSize.Y, 0, 1)
            V.Saturation = x
            V.Value = E
            local L = a((o.Position.X - C.Palette.Instance.AbsolutePosition.X) / C.Palette.Instance.AbsoluteSize.X, 0, .989)
            local d = a((o.Position.Y - C.Palette.Instance.AbsolutePosition.Y) / C.Palette.Instance.AbsoluteSize.Y, 0, .989)
            C.PaletteDragger:Tween(TweenInfo.new(.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Position = e(L, 0, d, 0)
            })
            V:Update()
            s = V.Color
        end
        function V.SlideHue(X, o)
            if not o or not E then
                return
            end
            local x = a((o.Position.X - C.Hue.Instance.AbsolutePosition.X) / C.Hue.Instance.AbsoluteSize.X, 0, 1)
            V.Hue = x
            local y = a((o.Position.X - C.Hue.Instance.AbsolutePosition.X) / C.Hue.Instance.AbsoluteSize.X, 0, .994)
            C.HueDragger:Tween(TweenInfo.new(.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Position = e(y, 0, 0, 0)
            })
            V:Update()
        end
        local B = V.Alpha
        function V.SlideAlpha(X, o)
            if not o or not L then
                return
            end
            local x = a((o.Position.X - C.Alpha.Instance.AbsolutePosition.X) / C.Alpha.Instance.AbsoluteSize.X, 0, 1)
            V.Alpha = x
            B = V.Alpha
            local y = a((o.Position.X - C.Alpha.Instance.AbsolutePosition.X) / C.Alpha.Instance.AbsoluteSize.X, 0, .994)
            C.AlphaDragger:Tween(TweenInfo.new(.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Position = e(y, 0, 0, 0)
            })
            V:Update(true)
        end
        V.OnAnimationChanged = function(o)
            if o == "Rainbow" then
                s = V.Color
                X:Thread(function()
                    while task.wait() do
                        local o = K(r(tick() * V.CurrentAnimationSpeed))
                        local X = w(o, 1, 1)
                        V:Set(X, V.Alpha)
                        if V.CurrentAnimation ~= "Rainbow" then
                            V:Set(s, V.Alpha)
                            break
                        end
                    end
                end)
            end
            if o == "Fade Alpha" then
                X:Thread(function()
                    while task.wait() do
                        local o = V.CurrentAnimationIntensity
                        local X = K(r(tick() % o) * V.CurrentAnimationSpeed)
                        V:Set(V.Color, X)
                        if V.CurrentAnimation ~= "Fade Alpha" then
                            V:Set(V.Color, B)
                            break
                        end
                    end
                end)
            end
        end
        C.ColorpickerButton:Connect("MouseButton1Down", function()
            V:SetOpen(not V.IsOpen)
        end)
        X:Connect(o.InputBegan, function(o)
            if o.UserInputType == Enum.UserInputType.MouseButton1 then
                if d then
                    return
                end
                if not V.IsOpen then
                    return
                end
                if X:IsMouseOverFrame(C.ColorpickerWindow.Outline.Instance) then
                    return
                end
                V:SetOpen(false)
            end
        end)
        C.Palette:Connect("InputBegan", function(o)
            if o.UserInputType == Enum.UserInputType.MouseButton1 then
                y = true
                V:SlidePalette(o)
            end
        end)
        C.Palette:Connect("InputEnded", function(o)
            if o.UserInputType == Enum.UserInputType.MouseButton1 then
                y = false
            end
        end)
        C.Hue:Connect("InputBegan", function(o)
            if o.UserInputType == Enum.UserInputType.MouseButton1 then
                E = true
                V:SlideHue(o)
            end
        end)
        C.Hue:Connect("InputEnded", function(o)
            if o.UserInputType == Enum.UserInputType.MouseButton1 then
                E = false
            end
        end)
        C.Alpha:Connect("InputBegan", function(o)
            if o.UserInputType == Enum.UserInputType.MouseButton1 then
                L = true
                V:SlideAlpha(o)
            end
        end)
        C.Alpha:Connect("InputEnded", function(o)
            if o.UserInputType == Enum.UserInputType.MouseButton1 then
                L = false
            end
        end)
        X:Connect(o.InputChanged, function(o)
            if o.UserInputType == Enum.UserInputType.MouseMovement then
                if y then
                    V:SlidePalette(o)
                end
                if E then
                    V:SlideHue(o)
                end
                if L then
                    V:SlideAlpha(o)
                end
            end
        end)
        if x.Default then
            V:Set(x.Default, x.Alpha)
        end;
        (X.SetFlags)[V.Flag] = function(o)
            V:Set(o, V.Alpha)
        end
        return V, C
    end
    m.Label = function(o)
        local x = {}
        do
            x.Label = q:Create("Frame", {
                Parent = o.Parent.Instance,
                BackgroundTransparency = 1;
                Name = "\000";
                BorderColor3 = A(0, 0, 0),
                Size = e(1, 0, 0, 15),
                BorderSizePixel = 0;
                BackgroundColor3 = A(255, 255, 255)
            })
            x.Text = q:Create("TextLabel", {
                Parent = x.Label.Instance,
                FontFace = X.Font,
                TextColor3 = A(180, 180, 180),
                BorderColor3 = A(0, 0, 0);
                Text = o.Text;
                Name = "\000",
                Size = e(1, 0, 1, 0),
                BackgroundTransparency = 1,
                TextXAlignment = (Enum.TextXAlignment)[o.Alignment];
                BorderSizePixel = 0,
                RichText = true;
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            x.Text:AddToTheme({
                TextColor3 = "Text"
            })
        end
        return x
    end
    m.Keybind = function(x)
        local V = {
            Toggled = false,
            Key = nil,
            Value = "",
            Mode = "",
            Flag = x.Flag;
            IsOpen = false
        }
        local C
        if X.KeyList then
            C = X.KeyList:Add("None", "None", "None")
        end
        local y = {}
        do
            y.KeyButton = q:Create("TextButton", {
                Parent = x.Parent.Instance,
                FontFace = X.Font,
                TextColor3 = A(180, 180, 180),
                BorderColor3 = A(0, 0, 0),
                Text = "[-]";
                AutomaticSize = Enum.AutomaticSize.X;
                Name = "\000";
                AutoButtonColor = false;
                AnchorPoint = t(1, 0);
                Size = e(0, 0, 1, 0);
                BackgroundTransparency = 1,
                Position = e(1, 0, 0, 0);
                BorderSizePixel = 0;
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            y.KeyButton:AddToTheme({
                TextColor3 = "Text"
            })
            if x.Tooltip then
                y.KeyButton:Tooltip(x.Tooltip)
            end
            y.KeybindWindow = m.Window({
                Position = e(1, 0, 0, 25);
                Size = e(0, 70, 0, 75),
                Parent = x.Parent,
                IsTextButton = true;
                Draggable = false
            });
            (q:Create("UIStroke", {
                Parent = y.KeybindWindow.Outline.Instance;
                Color = A(68, 68, 68),
                LineJoinMode = Enum.LineJoinMode.Miter,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            })):AddToTheme({
                Color = "Outline"
            })
            y.KeybindWindow.Outline.Instance.Visible = false
            y.KeybindWindow.Outline.Instance.AnchorPoint = t(1, 0)
            y.Toggle = q:Create("TextButton", {
                Parent = y.KeybindWindow.Outline.Instance;
                TextWrapped = true;
                TextColor3 = A(31, 226, 130),
                BorderColor3 = A(0, 0, 0);
                Text = "Toggle";
                AutoButtonColor = false,
                Name = "\000",
                Size = e(1, 0, 0, 15);
                BackgroundTransparency = 1;
                Position = e(0, 0, 0, 8);
                BorderSizePixel = 0;
                FontFace = X.Font,
                TextSize = 12;
                BackgroundColor3 = A(31, 226, 130)
            })
            y.Toggle:AddToTheme({
                TextColor3 = "Text"
            })
            y.Hold = q:Create("TextButton", {
                Parent = y.KeybindWindow.Outline.Instance,
                TextWrapped = true,
                TextColor3 = A(180, 180, 180),
                BorderColor3 = A(0, 0, 0),
                Text = "Hold",
                AutoButtonColor = false,
                Name = "\000";
                Size = e(1, 0, 0, 15),
                BackgroundTransparency = 1;
                Position = e(0, 0, 0, 30),
                BorderSizePixel = 0,
                FontFace = X.Font;
                TextSize = 12;
                BackgroundColor3 = A(31, 226, 130)
            })
            y.Hold:AddToTheme({
                TextColor3 = "Text"
            })
            y.Always = q:Create("TextButton", {
                Parent = y.KeybindWindow.Outline.Instance,
                TextWrapped = true,
                TextColor3 = A(180, 180, 180);
                BorderColor3 = A(0, 0, 0),
                Text = "Always";
                AutoButtonColor = false;
                Name = "\000";
                Size = e(1, 0, 0, 15);
                BackgroundTransparency = 1,
                Position = e(0, 0, 0, 52),
                BorderSizePixel = 0;
                FontFace = X.Font;
                TextSize = 12;
                BackgroundColor3 = A(31, 226, 130)
            })
            y.Always:AddToTheme({
                TextColor3 = "Text"
            })
        end
        local E = {
            Toggle = y.Toggle;
            Hold = y.Hold;
            Always = y.Always
        }
        local L = false
        local d = function()
            if C then
                C:Set(V.Mode, x.Name, V.Value)
                C:SetStatus(V.Toggled)
            end
        end
        function V.Get(o)
            return V.Toggled, V.Key, V.Mode
        end
        function V.SetVisibility(X, o)
            y.KeyButton.Instance.Visible = o
        end
        function V.SetOpen(X, o)
            V.IsOpen = o
            if o then
                L = true
                y.KeybindWindow.Outline.Instance.Visible = true
                y.KeybindWindow.Outline.Instance.ZIndex = 16
                for o, X in y.KeybindWindow.Outline.Instance:GetDescendants() do
                    local x = false
                    repeat
                        if j(X.ClassName, "UI") then
                            x = true
                            break
                        end
                        X.ZIndex = 17
                        x = true
                    until true
                    if not x then
                        break
                    end
                end
                task.wait(.1)
                L = false
            else
                for o, X in y.KeybindWindow.Outline.Instance:GetDescendants() do
                    local x = false
                    repeat
                        if j(X.ClassName, "UI") then
                            x = true
                            break
                        end
                        X.ZIndex = 17
                        x = true
                    until true
                    if not x then
                        break
                    end
                end
                y.KeybindWindow.Outline.Instance.ZIndex = 1
                y.KeybindWindow.Outline.Instance.Visible = false
                L = false
            end
        end
        function V.Set(C, o)
            if j(tostring(o), "Enum") then
                V.Key = tostring(o)
                o = o.Name == "Backspace" and "[-]" or o.Name
                local C = (R)[V.Key] or O(o, "Enum.", "") or "None"
                local E = O(O(C, "KeyCode.", ""), "UserInputType.", "") or "None"
                V.Value = E
                y.KeyButton.Instance.Text = E;
                (X.Flags)[V.Flag] = {
                    Mode = V.Mode;
                    Key = V.Key,
                    Toggled = V.Toggled
                }
                if x.Callback then
                    X:SafeCall(x.Callback, V.Toggled)
                end
                d()
            elseif n({
                "Toggle";
                "Hold",
                "Always"
            }, o) then
                V.Mode = o
                V:SetMode(o)
                if x.Callback then
                    X:SafeCall(x.Callback, V.Toggled)
                end
            elseif type(o) == "table" then
                local x = o.Key == "Backspace" and "None" or o.Key
                V.Key = tostring(o.Key)
                if o.Mode then
                    V.Mode = o.Mode
                    V:SetMode(o.Mode)
                else
                    V.Mode = "Toggle"
                    V:SetMode("Toggle")
                end
                local C = (R)[V.Key] or O(tostring(x), "Enum.", "") or x
                local E = C and O(O(C, "KeyCode.", ""), "UserInputType.", "") or "None"
                E = O(O(C, "KeyCode.", ""), "UserInputType.", "")
                V.Value = E
                y.KeyButton.Instance.Text = E
                if V.Callback then
                    X:SafeCall(V.Callback, V.Toggled)
                end
                d()
            end
            V.Picking = false
            y.KeyButton:ChangeItemTheme({
                TextColor3 = "Text"
            })
            y.KeyButton:Tween(nil, {
                TextColor3 = X.Theme.Text
            })
        end
        function V.SetMode(C, o)
            for x, V in E do
                if x == o then
                    V:ChangeItemTheme({
                        TextColor3 = "Accent"
                    })
                    V:Tween(nil, {
                        TextColor3 = X.Theme.Accent
                    })
                else
                    V:ChangeItemTheme({
                        TextColor3 = "Text"
                    })
                    V:Tween(nil, {
                        TextColor3 = X.Theme.Text
                    })
                end
            end
            if V.Mode == "Always" then
                V.Toggled = true
            else
                V.Toggled = false
            end;
            (X.Flags)[V.Flag] = {
                Mode = V.Mode;
                Key = V.Key,
                Toggled = V.Toggled
            }
            if x.Callback then
                X:SafeCall(x.Callback, V.Toggled)
            end
            d()
        end
        function V.Press(C, o)
            if V.Mode == "Toggle" then
                V.Toggled = not V.Toggled
            elseif V.Mode == "Hold" then
                V.Toggled = o
            elseif V.Mode == "Always" then
                V.Toggled = true
            end;
            (X.Flags)[V.Flag] = {
                Mode = V.Mode,
                Key = V.Key;
                Toggled = V.Toggled
            }
            if x.Callback then
                X:SafeCall(x.Callback, V.Toggled)
            end
            d()
        end
        y.KeyButton:Connect("MouseButton1Click", function()
            if V.Picking then
                return
            end
            V.Picking = true
            y.KeyButton:ChangeItemTheme({
                TextColor3 = "Accent"
            })
            y.KeyButton:Tween(nil, {
                TextColor3 = X.Theme.Accent
            })
            local x
            x = o.InputBegan:Connect(function(o)
                if o.UserInputType == Enum.UserInputType.Keyboard then
                    V:Set(o.KeyCode)
                else
                    V:Set(o.UserInputType)
                end
                x:Disconnect()
                x = nil
            end)
        end)
        y.KeyButton:Connect("MouseButton2Down", function()
            V:SetOpen(not V.IsOpen)
        end)
        X:Connect(o.InputBegan, function(o)
            if tostring(o.KeyCode) == V.Key or tostring(o.UserInputType) == V.Key then
                if V.Mode == "Toggle" then
                    V:Press()
                elseif V.Mode == "Hold" then
                    V:Press(true)
                end
            end
            if L then
                return
            end
            if not V.IsOpen then
                return
            end
            if X:IsMouseOverFrame(y.KeybindWindow.Outline.Instance) then
                return
            end
            V:SetOpen(false)
        end)
        X:Connect(o.InputEnded, function(o)
            if tostring(o.KeyCode) == V.Key or tostring(o.UserInputType) == V.Key then
                if V.Mode == "Hold" then
                    V:Press(false)
                end
            end
        end)
        y.Toggle:Connect("MouseButton1Down", function()
            V.Mode = "Toggle"
            V:SetMode("Toggle")
        end)
        y.Always:Connect("MouseButton1Down", function()
            V.Mode = "Always"
            V:SetMode("Always")
        end)
        y.Hold:Connect("MouseButton1Down", function()
            V.Mode = "Hold"
            V:SetMode("Hold")
        end)
        if x.Default then
            V:Set({
                Key = x.Default,
                Mode = x.Mode
            })
        end;
        (X.SetFlags)[V.Flag] = function(o)
            V:Set(o)
        end
        return V, y
    end
    m.Textbox = function(o)
        local x = {
            Value = "";
            Flag = o.Flag
        }
        local V = {}
        do
            V.Textbox = q:Create("Frame", {
                Parent = o.Parent.Instance,
                BackgroundTransparency = 1;
                Name = "\000";
                BorderColor3 = A(0, 0, 0),
                Size = e(1, 0, 0, 37);
                BorderSizePixel = 0;
                BackgroundColor3 = A(255, 255, 255)
            })
            if o.Tooltip then
                V.Textbox:Tooltip(o.Tooltip)
            end
            V.Text = q:Create("TextLabel", {
                Parent = V.Textbox.Instance;
                FontFace = X.Font;
                TextColor3 = A(180, 180, 180),
                BorderColor3 = A(0, 0, 0);
                Text = o.Name;
                Name = "\000",
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left;
                Size = e(1, 0, 0, 13),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            V.Text:AddToTheme({
                TextColor3 = "Text"
            })
            V.Background = q:Create("Frame", {
                Parent = V.Textbox.Instance;
                AnchorPoint = t(0, 1);
                Name = "\000",
                Position = e(0, 0, 1, 0);
                BorderColor3 = A(0, 0, 0),
                Size = e(1, 0, 0, 17),
                BorderSizePixel = 0;
                BackgroundColor3 = A(63, 63, 63)
            })
            V.Background:AddToTheme({
                BackgroundColor3 = "Element"
            })
            q:Create("UIGradient", {
                Parent = V.Background.Instance;
                Rotation = 90;
                Color = g({
                    i(0, A(255, 255, 255));
                    i(1, A(127, 127, 127))
                })
            });
            (q:Create("UIStroke", {
                Parent = V.Background.Instance,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            V.Inline = q:Create("TextBox", {
                Parent = V.Background.Instance,
                CursorPosition = - 1;
                Name = "\000",
                TextColor3 = A(180, 180, 180),
                BorderColor3 = A(0, 0, 0);
                Text = "";
                Size = e(1, 0, 1, 0);
                BorderSizePixel = 0,
                TextXAlignment = Enum.TextXAlignment.Left;
                FontFace = X.Font,
                BackgroundTransparency = 1,
                PlaceholderColor3 = A(145, 145, 145),
                PlaceholderText = o.Placeholder;
                ClearTextOnFocus = false,
                TextSize = 12;
                BackgroundColor3 = A(255, 255, 255)
            })
            V.Inline:AddToTheme({
                TextColor3 = "Text"
            })
            q:Create("UIPadding", {
                Parent = V.Inline.Instance;
                PaddingLeft = Y(0, 5),
                PaddingBottom = Y(0, 2)
            })
        end
        function x.Get(o)
            return x.Value
        end
        function x.SetVisibility(X, o)
            V.Textbox.Instance.Visible = o
        end
        function x.Set(y, C)
            x.Value = tostring(C);
            (X.Flags)[x.Flag] = x.Value
            V.Inline.Instance.Text = x.Value
            if o.Callback then
                X:SafeCall(o.Callback, x.Value)
            end
            V.Inline:ChangeItemTheme({
                TextColor3 = "Text"
            })
            V.Inline:Tween(nil, {
                TextColor3 = X.Theme.Text
            })
        end
        V.Inline:Connect("Focused", function()
            V.Inline:ChangeItemTheme({
                TextColor3 = "Accent"
            })
            V.Inline:Tween(nil, {
                TextColor3 = X.Theme.Accent
            })
        end)
        V.Inline:Connect("FocusLost", function()
            x:Set(V.Inline.Instance.Text)
        end)
        if o.Default then
            x:Set(o.Default)
        end;
        (X.SetFlags)[x.Flag] = function(o)
            x:Set(o)
        end
        return x, V
    end
    m.Listbox = function(o)
        local x = {
            Value = {};
            Flag = o.Flag,
            Options = {}
        }
        local V = {}
        do
            V.Listbox = q:Create("Frame", {
                Parent = o.Parent.Instance;
                Name = "\000";
                BorderColor3 = A(68, 68, 68),
                Size = e(1, 0, 0, o.Size),
                BorderSizePixel = 0;
                BackgroundColor3 = A(13, 13, 13)
            })
            V.Listbox:AddToTheme({
                BackgroundColor3 = "Inline"
            });
            (q:Create("UIStroke", {
                Parent = V.Listbox.Instance;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            V.Holder = q:Create("ScrollingFrame", {
                Parent = V.Listbox.Instance,
                ScrollBarImageColor3 = A(0, 0, 0),
                MidImage = "rbxassetid://7783554086",
                Active = true,
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                ScrollBarThickness = 2;
                Name = "\000";
                Size = e(1, 0, 1, 0);
                BackgroundColor3 = A(255, 255, 255);
                TopImage = "rbxassetid://7783554086";
                BorderColor3 = A(0, 0, 0);
                BackgroundTransparency = 1,
                BottomImage = "rbxassetid://7783554086";
                BorderSizePixel = 0,
                CanvasSize = e(0, 0, 0, 0)
            })
            V.Holder:AddToTheme({
                ScrollBarImageColor3 = "Accent"
            })
            q:Create("UIListLayout", {
                Parent = V.Holder.Instance;
                Padding = Y(0, 1),
                SortOrder = Enum.SortOrder.LayoutOrder
            })
        end
        function x.Set(C, V)
            if o.Multi then
                if type(V) ~= "table" then
                    return
                end
                x.Value = V;
                (X.Flags)[x.Flag] = x.Value
                for o, X in V do
                    local V = (x.Options)[X]
                    if not V then
                        return
                    end
                    V.Selected = true
                    V:Toggle("Active")
                end
            else
                local o = (x.Options)[V]
                if not o then
                    return
                end
                o.Selected = true
                o:Toggle("Active")
                x.Value = o.Name;
                (X.Flags)[x.Flag] = x.Value
                for X, x in x.Options do
                    if x ~= o then
                        x.Selected = false
                        x:Toggle("Inactive")
                    end
                end
            end
            if o.Callback then
                X:SafeCall(o.Callback, x.Value)
            end
        end
        function x.SetVisibility(X, o)
            V.Listbox.Instance.Visible = o
        end
        function x.Remove(X, o)
            if (x.Options)[o] then
                (x.Options)[o].OptionButton:Clean()
            end
        end
        function x.Refresh(X, o)
            for o, X in x.Options do
                x:Remove(X.Name)
            end
            for o, X in o do
                x:Add(X)
            end
        end
        function x.Add(y, C)
            local E = q:Create("TextButton", {
                Parent = V.Holder.Instance;
                FontFace = X.Font;
                TextColor3 = A(180, 180, 180);
                BorderColor3 = A(0, 0, 0);
                Text = C;
                AutoButtonColor = false;
                Name = "\000",
                Size = e(1, 0, 0, 15);
                BackgroundTransparency = 1;
                TextXAlignment = Enum.TextXAlignment.Center;
                BorderSizePixel = 0;
                TextTruncate = Enum.TextTruncate.AtEnd;
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            E:AddToTheme({
                TextColor3 = "Text"
            })
            q:Create("UIPadding", {
                Parent = E.Instance,
                PaddingTop = Y(0, 5),
                PaddingLeft = Y(0, 7)
            })
            local L = {
                Name = C,
                OptionButton = E,
                Selected = false
            }
            function L.Toggle(x, o)
                if o == "Active" then
                    L.OptionButton:ChangeItemTheme({
                        TextColor3 = "Accent"
                    })
                    L.OptionButton:Tween(nil, {
                        TextColor3 = X.Theme.Accent
                    })
                else
                    L.OptionButton:ChangeItemTheme({
                        TextColor3 = "Text"
                    })
                    L.OptionButton:Tween(nil, {
                        TextColor3 = X.Theme.Text
                    })
                end
            end
            function L.Set(V)
                L.Selected = not L.Selected
                if o.Multi then
                    local o = n(x.Value, L.Name)
                    if o then
                        c(x.Value, o)
                    else
                        b(x.Value, L.Name)
                    end;
                    (X.Flags)[x.Flag] = x.Value
                    L:Toggle(o and "Inactive" or "Active")
                else
                    if L.Selected then
                        x.Value = L.Name
                        L:Toggle("Active");
                        (X.Flags)[x.Flag] = x.Value
                        for o, X in x.Options do
                            if X ~= L then
                                X.Selected = false
                                X:Toggle("Inactive")
                            end
                        end
                    else
                        x.Value = nil
                        L:Toggle("Inactive");
                        (X.Flags)[x.Flag] = x.Value
                    end
                end
                if o.Callback then
                    X:SafeCall(o.Callback, x.Value)
                end
            end
            L.OptionButton:Connect("MouseButton1Down", function()
                L:Set()
            end);
            (x.Options)[C] = L
            return L
        end
        function x.Get(o)
            return x.Value
        end
        for o, X in o.Items do
            x:Add(X)
        end
        if o.Default then
            x:Set(x.Default)
        end;
        (X.SetFlags)[x.Flag] = function(o)
            x:Set(o)
        end
        return x, V
    end
    X.Window = function(x, V)
        V = V or {}
        local C = {
            Name = V.Name or V.name or "Window",
            Size = V.Size or V.size or e(0, 563, 0, 558);
            GradientTitle = V.GradientTitle or V.gradienttitle or false;
            Pages = {};
            Sections = {},
            IsOpen = true;
            Items = {}
        }
        local y = m.Window({
            Position = e(0, v.ViewportSize.X / 2, 0, v.ViewportSize.Y / 2),
            Size = C.Size;
            Parent = x.Holder,
            Draggable = true
        })
        do
            y.Title = q:Create("Frame", {
                Parent = y.Inline.Instance,
                Name = "\000";
                Position = e(0, 13, 0, 20);
                BorderColor3 = A(0, 0, 0);
                Size = e(.188, 0, 0, 37),
                BorderSizePixel = 2;
                BackgroundColor3 = A(13, 13, 13)
            })
            y.Title:AddToTheme({
                BackgroundColor3 = "Inline";
                BorderColor3 = "Outline"
            });
            (q:Create("UIStroke", {
                Parent = y.Title.Instance,
                Color = A(68, 68, 68);
                LineJoinMode = Enum.LineJoinMode.Miter,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            })):AddToTheme({
                Color = "Border"
            })
            y.Text = q:Create("TextLabel", {
                Parent = y.Title.Instance;
                FontFace = X.Font;
                TextColor3 = A(180, 180, 180);
                BorderColor3 = A(0, 0, 0);
                Text = C.Name,
                Name = "\000",
                Size = e(1, 0, 1, - 1),
                BackgroundTransparency = 1;
                Position = e(0, 0, 0, - 1),
                BorderSizePixel = 0,
                RichText = true;
                TextSize = 12;
                BackgroundColor3 = A(255, 255, 255)
            })
            if C.GradientTitle.Enabled then
                local o = q:Create("UIGradient", {
                    Parent = y.Text.Instance,
                    Rotation = 0,
                    Color = g({
                        i(0, C.GradientTitle.Start),
                        i(.25, C.GradientTitle.Middle);
                        i(1, C.GradientTitle.End)
                    })
                })
                y.Text.Instance.TextColor3 = A(255, 255, 255)
                X:Connect(E.Heartbeat, function()
                    local X = K(r(tick() * C.GradientTitle.Speed))
                    o.Instance.Offset = t(X, 0)
                end)
            else
                y.Text:AddToTheme({
                    TextColor3 = "Text"
                })
            end
            y.Pages = q:Create("Frame", {
                Parent = y.Inline.Instance;
                Name = "\000";
                Position = e(.188, 28, 0, 20);
                BorderColor3 = A(0, 0, 0);
                Size = e(.736, 0, 0, 37);
                BorderSizePixel = 2,
                BackgroundColor3 = A(13, 13, 13)
            })
            y.Pages:AddToTheme({
                BackgroundColor3 = "Inline",
                BorderColor3 = "Outline"
            });
            (q:Create("UIStroke", {
                Parent = y.Pages.Instance;
                Color = A(68, 68, 68),
                LineJoinMode = Enum.LineJoinMode.Miter,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            })):AddToTheme({
                Color = "Border"
            })
            y.RealHolder = q:Create("Frame", {
                Parent = y.Pages.Instance,
                Name = "\000";
                BackgroundTransparency = 1;
                Position = e(0, 20, 0, 0);
                BorderColor3 = A(0, 0, 0);
                Size = e(1, - 40, 1, 0);
                BorderSizePixel = 0;
                BackgroundColor3 = A(255, 255, 255)
            })
            q:Create("UIListLayout", {
                Parent = y.RealHolder.Instance,
                VerticalAlignment = Enum.VerticalAlignment.Center;
                FillDirection = Enum.FillDirection.Horizontal;
                HorizontalFlex = Enum.UIFlexAlignment.Fill;
                Padding = Y(0, 15),
                SortOrder = Enum.SortOrder.LayoutOrder
            })
            y.Content = q:Create("Frame", {
                Parent = y.Inline.Instance,
                Name = "\000",
                Position = e(0, 13, 0, 77);
                BorderColor3 = A(0, 0, 0);
                Size = e(1, - 28, 1, - 93),
                BorderSizePixel = 2;
                BackgroundColor3 = A(12, 12, 12)
            })
            y.Content:AddToTheme({
                BackgroundColor3 = "Inline";
                BorderColor3 = "Outline"
            });
            (q:Create("UIStroke", {
                Parent = y.Content.Instance,
                Color = A(68, 68, 68);
                LineJoinMode = Enum.LineJoinMode.Miter,
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            })):AddToTheme({
                Color = "Border"
            })
        end
        function C.SetOpen(X, o)
            C.IsOpen = o
            y.Outline.Instance.Visible = o
        end
        X:Connect(o.InputBegan, function(o, x)
            if x then
                return
            end
            if tostring(o.KeyCode) == X.MenuKeybind or tostring(o.UserInputType) == X.MenuKeybind then
                C:SetOpen(not C.IsOpen)
            end
        end)
        C.Items = y
        return setmetatable(C, x)
    end
    X.Page = function(o, x)
        x = x or {}
        local V = {
            Window = o,
            Name = x.Name or x.name or "Page",
            Columns = x.Columns or x.columns or 2,
            ColumnsData = {};
            Active = false;
            Items = {}
        }
        local C, y = m.Page({
            HasColumns = true;
            PageHolder = V.Window.Items.RealHolder;
            Name = V.Name;
            PagesTable = V.Window.Pages,
            ContentHolder = V.Window.Items.Content
        })
        do
            for o = 1, V.Columns, 1 do
                local X = C:Column(o);
                (V.ColumnsData)[o] = X
            end
        end
        function V.Turn(X, o)
            C:Turn(o)
        end
        function V.Column(X, o)
            C:Column(o)
        end
        V.Items = y
        return setmetatable(V, X.Pages)
    end
    X.Pages.Section = function(o, x)
        x = x or {}
        local V = {
            Window = o.Window;
            Page = o;
            Name = x.Name or x.name or "Section",
            Side = x.Side or x.side or 1,
            Items = {}
        }
        local C = m.Section({
            Name = V.Name;
            Parent = (V.Page.ColumnsData)[V.Side]
        })
        V.Items = C
        return setmetatable(V, X.Sections)
    end
    X.Pages.PlayerList = function(o, V)
        local C = {
            Window = o.Window,
            Page = o;
            CurrentPlayer = nil,
            Players = {}
        }
        if C.Page.Columns ~= 1 then
            X:Notification("Playerlist can only be added to a page with 1 column.", 5, A(255, 0, 0))
            return
        end
        local y = {}
        do
            y.Playerlist = q:Create("Frame", {
                Parent = (C.Page.ColumnsData)[1].Instance;
                Name = "\000",
                BorderColor3 = A(0, 0, 0);
                Size = e(1, - 13, 0, 419);
                BorderSizePixel = 2,
                BackgroundColor3 = A(19, 19, 19)
            })
            y.Playerlist:AddToTheme({
                BackgroundColor3 = "Section Background";
                BorderColor3 = "Outline"
            });
            (q:Create("UIStroke", {
                Parent = y.Playerlist.Instance,
                Color = A(68, 68, 68),
                LineJoinMode = Enum.LineJoinMode.Miter;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            })):AddToTheme({
                Color = "Border"
            })
            y.Title = q:Create("Frame", {
                Parent = y.Playerlist.Instance,
                Size = e(1, - 4, 0, 2),
                Name = "\000";
                Position = e(0, 2, 0, - 2);
                BorderColor3 = A(0, 0, 0);
                BorderSizePixel = 0;
                AutomaticSize = Enum.AutomaticSize.X,
                BackgroundColor3 = A(31, 226, 130)
            })
            y.Title:AddToTheme({
                BackgroundColor3 = "Accent"
            })
            q:Create("UIGradient", {
                Parent = y.Title.Instance,
                Color = g({
                    i(0, A(226, 226, 226));
                    i(1, A(255, 255, 255))
                }),
                Transparency = I({
                    h(0, .51249998807907);
                    h(.42, .76875001192093),
                    h(1, 1)
                })
            })
            y.Text = q:Create("TextLabel", {
                Parent = y.Title.Instance,
                FontFace = X.Font;
                TextColor3 = A(180, 180, 180);
                BorderColor3 = A(0, 0, 0),
                Text = "Players";
                Size = e(0, 40, 0, 13),
                Name = "\000";
                Position = e(0, 9, 0, 0),
                BorderSizePixel = 0;
                AutomaticSize = Enum.AutomaticSize.X;
                TextSize = 12;
                BackgroundColor3 = A(19, 19, 19)
            })
            y.Text:AddToTheme({
                TextColor3 = "Text",
                BackgroundColor3 = "Section Background"
            })
            q:Create("UIPadding", {
                Parent = y.Text.Instance,
                PaddingLeft = Y(0, 3),
                PaddingRight = Y(0, 4),
                PaddingBottom = Y(0, 2)
            })
            y.Avatar = q:Create("ImageLabel", {
                Parent = y.Playerlist.Instance,
                ScaleType = Enum.ScaleType.Fit,
                BorderColor3 = A(0, 0, 0),
                Name = "\000";
                AnchorPoint = t(0, 1),
                Image = "rbxassetid://98200387761744";
                BackgroundTransparency = 1,
                Position = e(0, 8, 1, - 8);
                Size = e(0, 70, 0, 70),
                BorderSizePixel = 0,
                BackgroundColor3 = A(255, 255, 255)
            });
            (q:Create("UIStroke", {
                Parent = y.Avatar.Instance;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            y.Holder = q:Create("ScrollingFrame", {
                Parent = y.Playerlist.Instance,
                ScrollBarImageColor3 = A(31, 226, 130),
                MidImage = "rbxassetid://7783554086",
                Active = true;
                AutomaticCanvasSize = Enum.AutomaticSize.Y;
                ScrollBarThickness = 1;
                Name = "\000";
                Size = e(1, - 16, 0, 315),
                BackgroundColor3 = A(13, 13, 13);
                TopImage = "rbxassetid://7783554086";
                Position = e(0, 8, 0, 17);
                BorderColor3 = A(0, 0, 0);
                BottomImage = "rbxassetid://7783554086";
                BorderSizePixel = 0,
                CanvasSize = e(0, 0, 0, 0)
            })
            y.Holder:AddToTheme({
                BackgroundColor3 = "Inline",
                ScrollBarImageColor3 = "Accent"
            });
            (q:Create("UIStroke", {
                Parent = y.Holder.Instance;
                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                LineJoinMode = Enum.LineJoinMode.Miter
            })):AddToTheme({
                Color = "Outline"
            })
            q:Create("UIListLayout", {
                Parent = y.Holder.Instance;
                Padding = Y(0, 4),
                SortOrder = Enum.SortOrder.LayoutOrder
            })
            y.Username = q:Create("TextLabel", {
                Parent = y.Playerlist.Instance;
                FontFace = X.Font;
                TextColor3 = A(180, 180, 180);
                BorderColor3 = A(0, 0, 0),
                Text = "Username: sametexe009",
                Name = "\000";
                AnchorPoint = t(0, 1),
                Size = e(0, 185, 0, 15),
                BackgroundTransparency = 1;
                TextTruncate = Enum.TextTruncate.AtEnd;
                TextXAlignment = Enum.TextXAlignment.Left,
                Position = e(0, 88, 1, - 68),
                BorderSizePixel = 0,
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            y.Username:AddToTheme({
                TextColor3 = "Text"
            })
            y.UserID = q:Create("TextLabel", {
                Parent = y.Playerlist.Instance;
                FontFace = X.Font;
                TextColor3 = A(180, 180, 180),
                BorderColor3 = A(0, 0, 0);
                Text = "Userid: 7596677757",
                Name = "\000",
                AnchorPoint = t(0, 1);
                Size = e(0, 200, 0, 15),
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                Position = e(0, 88, 1, - 53),
                BorderSizePixel = 0,
                TextSize = 12;
                BackgroundColor3 = A(255, 255, 255)
            })
            y.UserID:AddToTheme({
                TextColor3 = "Text"
            })
            y.UserID.Instance.Text = ""
            y.Username.Instance.Text = ""
            local o, x = m.Dropdown({
                Name = "Status",
                Flag = "PlayerListPlayerStatus",
                Parent = y.Playerlist;
                Items = {
                    "Neutral";
                    "Priority";
                    "Friendly"
                };
                Default = "All";
                MaxSize = 75,
                Callback = function(o)
                    if C.Player then
                        if C.Player == d then
                            return
                        end
                        if o == "Neutral" then
                            (C.Players)[C.Player.Name].PlayerStatus:Tween(nil, {
                                TextColor3 = A(180, 180, 180)
                            });
                            (C.Players)[C.Player.Name].PlayerStatus.Instance.Text = "Neutral"
                        elseif o == "Priority" then
                            (C.Players)[C.Player.Name].PlayerStatus:Tween(nil, {
                                TextColor3 = A(255, 50, 50)
                            });
                            (C.Players)[C.Player.Name].PlayerStatus.Instance.Text = "Priority"
                        elseif o == "Friendly" then
                            (C.Players)[C.Player.Name].PlayerStatus:Tween(nil, {
                                TextColor3 = A(83, 255, 83)
                            });
                            (C.Players)[C.Player.Name].PlayerStatus.Instance.Text = "Friendly"
                        else
                            (C.Players)[C.Player.Name].PlayerStatus:Tween(nil, {
                                TextColor3 = A(180, 180, 180)
                            });
                            (C.Players)[C.Player.Name].PlayerStatus.Instance.Text = "Neutral"
                        end
                    end
                end
            })
            x.Dropdown.Instance.Position = e(1, - 8, 1, - 65)
            x.Dropdown.Instance.Size = e(0, 200, 0, 17)
            x.Dropdown.Instance.AnchorPoint = t(1, 1)
        end
        function C.Remove(X, o)
            if (C.Players)[o] then
                (C.Players)[o].PlayerButton:Clean()
            end;
            (C.Players)[o] = nil
        end
        function C.Add(E, o)
            local L = q:Create("TextButton", {
                Parent = y.Holder.Instance;
                FontFace = X.Font,
                TextColor3 = A(0, 0, 0);
                BorderColor3 = A(0, 0, 0);
                Text = "";
                AutoButtonColor = false,
                BackgroundTransparency = 1,
                Name = "\000";
                Size = e(1, 0, 0, 20),
                BorderSizePixel = 0,
                TextSize = 14,
                BackgroundColor3 = A(255, 255, 255)
            })
            local v = q:Create("Frame", {
                Parent = L.Instance,
                Name = "\000",
                BackgroundTransparency = 1;
                BorderColor3 = A(0, 0, 0),
                Position = e(0, 3, 0, 2),
                Size = e(1, - 7, 1, - 5),
                BorderSizePixel = 0;
                BackgroundColor3 = A(31, 31, 31)
            })
            v:AddToTheme({
                BackgroundColor3 = "Window Background"
            })
            local s = q:Create("TextLabel", {
                Parent = L.Instance;
                FontFace = X.Font,
                TextColor3 = A(180, 180, 180);
                BorderColor3 = A(0, 0, 0),
                Text = o.Name,
                Name = "\000",
                Size = e(.35, 0, 1, - 2),
                Position = e(0, 7, 0, 0);
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                BorderSizePixel = 0,
                TextTruncate = Enum.TextTruncate.AtEnd;
                TextSize = 12,
                BackgroundColor3 = A(255, 255, 255)
            })
            s:AddToTheme({
                TextColor3 = "Text"
            });
            (q:Create("Frame", {
                Parent = s.Instance,
                AnchorPoint = t(0, .5);
                Name = "\000",
                Position = e(1, - 7, .5, 1);
                BorderColor3 = A(0, 0, 0),
                Size = e(0, 1, 1, - 8);
                BorderSizePixel = 0,
                BackgroundColor3 = A(0, 0, 0)
            })):AddToTheme({
                BackgroundColor3 = "Outline"
            })
            local w = q:Create("TextLabel", {
                Parent = L.Instance,
                FontFace = X.Font,
                TextColor3 = (BrickColor.new(tostring(o.TeamColor))).Color;
                BorderColor3 = A(0, 0, 0),
                Text = tostring(o.Team) or "None";
                Name = "\000",
                Size = e(.35, 0, 1, 0);
                Position = e(.35, 8, 0, - 1);
                BackgroundTransparency = 1;
                TextXAlignment = Enum.TextXAlignment.Left,
                BorderSizePixel = 0,
                TextTruncate = Enum.TextTruncate.AtEnd;
                TextSize = 12;
                BackgroundColor3 = A(255, 255, 255)
            })
            if w.Instance.Text == "None" then
                w.Instance.TextColor3 = A(180, 180, 180)
                w:AddToTheme({
                    TextColor3 = "Text"
                })
            end;
            (q:Create("Frame", {
                Parent = w.Instance,
                AnchorPoint = t(0, .5),
                Name = "\000",
                Position = e(1, 0, .5, 1),
                BorderColor3 = A(0, 0, 0);
                Size = e(0, 1, 1, - 10);
                BorderSizePixel = 0,
                BackgroundColor3 = A(0, 0, 0)
            })):AddToTheme({
                BackgroundColor3 = "Outline"
            })
            local T = q:Create("TextLabel", {
                Parent = L.Instance;
                FontFace = X.Font,
                TextColor3 = A(180, 180, 180);
                BorderColor3 = A(0, 0, 0),
                Text = "Neutral";
                Name = "\000";
                Size = e(.35, 0, 1, 0),
                Position = e(.7, 16, 0, - 1),
                BackgroundTransparency = 1;
                TextXAlignment = Enum.TextXAlignment.Left,
                BorderSizePixel = 0,
                TextTruncate = Enum.TextTruncate.AtEnd;
                TextSize = 12;
                BackgroundColor3 = A(255, 255, 255)
            })
            if o == d then
                T.Instance.TextColor3 = X.Theme.Accent
                T.Instance.Text = "LocalPlayer"
                T:AddToTheme({
                    TextColor3 = "Accent"
                })
            else
                T.Instance.TextColor3 = A(180, 180, 180)
                T.Instance.Text = "Neutral"
            end;
            (q:Create("Frame", {
                Parent = T.Instance;
                AnchorPoint = t(0, .5);
                Name = "\000";
                Position = e(1, 0, .5, 0);
                BorderColor3 = A(0, 0, 0);
                Size = e(0, 1, 1, - 10),
                BorderSizePixel = 0,
                BackgroundColor3 = A(0, 0, 0)
            })):AddToTheme({
                BackgroundColor3 = "Outline"
            });
            (q:Create("Frame", {
                Parent = L.Instance,
                AnchorPoint = t(0, 1);
                Name = "\000";
                Position = e(0, 0, 1, 0);
                BorderColor3 = A(0, 0, 0),
                Size = e(1, 0, 0, 1);
                BorderSizePixel = 0;
                BackgroundColor3 = A(0, 0, 0)
            })):AddToTheme({
                BackgroundColor3 = "Outline"
            })
            local g = {
                Name = o.Name;
                Selected = false,
                PlayerButton = L,
                PlayerName = s,
                PlayerTeam = w;
                PlayerStatus = T;
                PlayerBackground = v;
                Player = o
            }
            function g.Toggle(x, o)
                if o == "Active" then
                    g.PlayerName:ChangeItemTheme({
                        TextColor3 = "Accent"
                    })
                    g.PlayerName:Tween(nil, {
                        TextColor3 = X.Theme.Accent
                    })
                    g.PlayerBackground:Tween(nil, {
                        BackgroundTransparency = 0
                    })
                else
                    g.PlayerName:ChangeItemTheme({
                        TextColor3 = "Text"
                    })
                    g.PlayerName:Tween(nil, {
                        TextColor3 = X.Theme.Text
                    })
                    g.PlayerBackground:Tween(nil, {
                        BackgroundTransparency = 1
                    })
                end
            end
            function g.Set(o)
                g.Selected = not g.Selected
                if g.Selected then
                    C.Player = g.Player
                    for o, X in C.Players do
                        X.Selected = false
                        X:Toggle("Inactive")
                    end
                    g:Toggle("Active")
                    local o = x:GetUserThumbnailAsync(C.Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
                    y.Avatar.Instance.Image = o
                    y.Username.Instance.Text = C.Player.DisplayName .. (" (@" .. (C.Player.Name .. ")"))
                    y.UserID.Instance.Text = tostring(C.Player.UserId)
                else
                    C.Player = nil
                    g:Toggle("Inactive")
                    y.Avatar.Instance.Image = "rbxassetid://98200387761744"
                    y.Username.Instance.Text = "None"
                    y.UserID.Instance.Text = "None"
                end
                if V.Callback then
                    X:SafeCall(V.Callback, C.Player)
                end
            end
            g.PlayerButton:Connect("MouseButton1Down", function()
                g:Set()
            end);
            (C.Players)[g.Name] = g
            return g
        end
        for o, X in x:GetPlayers() do
            C:Add(X)
        end
        X:Connect(x.PlayerRemoving, function(o)
            if (C.Players)[o.Name] then
                C:Remove(o.Name)
            end
        end)
        X:Connect(x.PlayerAdded, function(o)
            C:Add(o)
        end)
        return C
    end
    X.Sections.Toggle = function(o, x)
        x = x or {}
        local V = {
            Window = o.Window,
            Page = o.Page,
            Section = o,
            Name = x.Name or x.name or "Toggle",
            Flag = x.Flag or x.flag or X:NextFlag();
            Default = x.Default or x.default or false,
            Callback = x.Callback or x.callback or function()
            end,
            Risky = x.Risky or x.risky or false;
            Tooltip = x.Tooltip or x.tooltip or nil;
            Value = false,
            Count = 0
        }
        local C, y = m.Toggle({
            Name = V.Name;
            Parent = V.Section.Items.Content,
            Risky = V.Risky;
            Flag = V.Flag;
            Default = V.Default;
            Callback = V.Callback,
            Tooltip = V.Tooltip
        })
        function V.Set(X, o)
            C:Set(o)
        end
        function V.Get(o)
            return C:Get()
        end
        function V.SetVisibility(X, o)
            C:SetVisibility(o)
        end
        function V.Colorpicker(x, o)
            o = o or {}
            local C = {
                Window = x.Window;
                Page = x.Page;
                Section = x,
                Name = o.Name or o.name or "Colorpicker";
                Flag = o.Flag or o.flag or X:NextFlag();
                Default = o.Default or o.default or Color3.fromRGB(255, 255, 255);
                Callback = o.Callback or o.callback or function()
                end;
                Alpha = o.Alpha or o.alpha or false;
                Count = V.Count
            }
            V.Count = V.Count + 1
            C.Count = V.Count
            local E, L = m.Colorpicker({
                Name = C.Name;
                Parent = y.Toggle,
                Flag = C.Flag;
                Default = C.Default,
                Callback = C.Callback;
                Count = C.Count,
                Alpha = C.Alpha
            })
            function C.Set(x, o, X)
                E:Set(o, X)
            end
            function C.Get(o)
                return E:Get()
            end
            function C.SetVisibility(X, o)
                E:SetVisibility(o)
            end
            return C
        end
        function V.Keybind(x, o)
            o = o or {}
            local C = {
                Window = x.Window;
                Page = x.Page,
                Section = x;
                Name = o.Name or o.name or "Keybind";
                Flag = o.Flag or o.flag or X:NextFlag(),
                Default = o.Default or o.default or Enum.KeyCode.RightControl,
                Mode = o.Mode or o.mode or "Toggle",
                Callback = o.Callback or o.callback or function()
                end;
                Tooltip = o.Tooltip or o.tooltip or nil;
                Count = V.Count
            }
            local E, L = m.Keybind({
                Name = C.Name,
                Parent = y.Toggle;
                Flag = C.Flag,
                Default = C.Default,
                Tooltip = C.Tooltip;
                Mode = C.Mode,
                Callback = C.Callback;
                Count = C.Count
            })
            function C.Set(X, o)
                E:Set(o)
            end
            function C.Get(o)
                return E:Get()
            end
            function C.SetVisibility(X, o)
                E:SetVisibility(o)
            end
            return C
        end
        return V
    end
    X.Sections.Button = function(o, X)
        X = X or {}
        local x = {
            Window = o.Window,
            Page = o.Page,
            Section = o;
            Name = X.Name or X.name or "Button";
            Callback = X.Callback or X.callback or function()
            end;
            Tooltip = X.Tooltip or X.tooltip or nil;
            Risky = X.Risky or X.risky or false
        }
        local V, C = m.Button({
            Name = x.Name;
            Parent = x.Section.Items.Content;
            Callback = x.Callback,
            Tooltip = x.Tooltip,
            Risky = x.Risky
        })
        function x.SetVisibility(X, o)
            x:SetVisibility(o)
        end
        function x.SubButton(X, o)
            o = o or {}
            local C = {
                Window = X.Window,
                Page = X.Page,
                Section = X;
                Name = o.Name or o.name or "Button",
                Callback = o.Callback or o.callback or function()
                end;
                Parent = x.Section.Items.Content;
                Tooltip = o.Tooltip or o.tooltip or nil,
                Risky = o.Risky or o.risky or false
            }
            local y, E = V:SubButton(C)
            function C.SetVisibility(X, o)
                y:SetVisibility(o)
            end
            return C
        end
        return x
    end
    X.Sections.Slider = function(o, x)
        x = x or {}
        local V = {
            Window = o.Window;
            Page = o.Page,
            Section = o;
            Name = x.Name or x.name or "Slider",
            Flag = x.Flag or x.flag or X:NextFlag(),
            Min = x.Min or x.min or 0,
            Default = x.Default or x.default or 0,
            Max = x.Max or x.max or 100,
            Tooltip = x.Tooltip or x.tooltip or nil,
            Suffix = x.Suffix or x.suffix or "",
            Decimals = x.Decimals or x.decimals or 1;
            Callback = x.Callback or x.callback or function()
            end
        }
        local C, y = m.Slider({
            Name = V.Name;
            Parent = V.Section.Items.Content,
            Flag = V.Flag;
            Min = V.Min;
            Default = V.Default,
            Max = V.Max,
            Tooltip = V.Tooltip,
            Suffix = V.Suffix,
            Decimals = V.Decimals;
            Callback = V.Callback
        })
        function V.Set(X, o)
            C:Set(o)
        end
        function V.SetVisibility(X, o)
            C:SetVisibility(o)
        end
        return V
    end
    X.Sections.Dropdown = function(o, x)
        x = x or {}
        local V = {
            Window = o.Window,
            Page = o.Page,
            Section = o,
            Name = x.Name or x.name or "Dropdown";
            Flag = x.Flag or x.flag or X:NextFlag();
            Items = x.Items or x.items or {};
            Default = x.Default or x.default or nil;
            Callback = x.Callback or x.callback or function()
            end,
            Tooltip = x.Tooltip or x.tooltip or nil;
            MaxSize = x.MaxSize or x.maxsize or 75;
            Multi = x.Multi or x.multi or false
        }
        local C, y = m.Dropdown({
            Name = V.Name,
            Parent = V.Section.Items.Content;
            Flag = V.Flag;
            Items = V.Items,
            Tooltip = V.Tooltip;
            MaxSize = V.MaxSize,
            Default = V.Default,
            Callback = V.Callback;
            Multi = V.Multi
        })
        function V.Set(X, o)
            C:Set(o)
        end
        function V.Get(o)
            return C:Get()
        end
        function V.SetVisibility(X, o)
            C:SetVisibility(o)
        end
        function V.Refresh(X, o)
            C:Refresh(o)
        end
        function V.Remove(X, o)
            C:Remove(o)
        end
        function V.Add(X, o)
            C:Add(o)
        end
        return V
    end
    X.Sections.Label = function(o, x, V)
        local C = {
            Window = o.Window;
            Page = o.Page,
            Section = o,
            Name = x or "Label",
            Alignment = V or "Left",
            Count = 0
        }
        local y = m.Label({
            Text = C.Name;
            Parent = C.Section.Items.Content;
            Alignment = C.Alignment
        })
        function C.SetVisibility(X, o)
            y.Label.Instance.Visible = o
        end
        function C.Colorpicker(x, o)
            o = o or {}
            local V = {
                Window = x.Window;
                Page = x.Page,
                Section = x,
                Name = o.Name or o.name or "Colorpicker";
                Flag = o.Flag or o.flag or X:NextFlag(),
                Default = o.Default or o.default or Color3.fromRGB(255, 255, 255);
                Callback = o.Callback or o.callback or function()
                end;
                Alpha = o.Alpha or o.alpha or false;
                Count = C.Count
            }
            C.Count = C.Count + 1
            V.Count = C.Count
            local E, L = m.Colorpicker({
                Name = V.Name;
                Parent = y.Label;
                Flag = V.Flag;
                Default = V.Default,
                Callback = V.Callback;
                Count = V.Count,
                Alpha = V.Alpha
            })
            function V.Set(x, o, X)
                E:Set(o, X)
            end
            function V.Get(o)
                return E:Get()
            end
            function V.SetVisibility(X, o)
                E:SetVisibility(o)
            end
            return V
        end
        function C.Keybind(x, o)
            o = o or {}
            local V = {
                Window = x.Window;
                Page = x.Page;
                Section = x;
                Name = o.Name or o.name or "Keybind",
                Flag = o.Flag or o.flag or X:NextFlag(),
                Default = o.Default or o.default or Enum.KeyCode.RightControl;
                Mode = o.Mode or o.mode or "Toggle",
                Callback = o.Callback or o.callback or function()
                end;
                Count = C.Count
            }
            local E, L = m.Keybind({
                Name = V.Name,
                Parent = y.Label,
                Flag = V.Flag;
                Default = V.Default,
                Mode = V.Mode,
                Callback = V.Callback,
                Count = V.Count
            })
            function V.Set(X, o)
                E:Set(o)
            end
            function V.Get(o)
                return E:Get()
            end
            function V.SetVisibility(X, o)
                E:SetVisibility(o)
            end
            return V
        end
        return C
    end
    X.Sections.Textbox = function(o, x)
        x = x or {}
        local V = {
            Window = o.Window;
            Page = o.Page;
            Section = o,
            Name = x.Name or x.name or "Textbox";
            Flag = x.Flag or x.flag or X:NextFlag(),
            Default = x.Default or x.default or "";
            Tooltip = x.Tooltip or x.tooltip or nil;
            Placeholder = x.Placeholder or x.placeholder or "...",
            Callback = x.Callback or x.callback or function()
            end
        }
        local C, y = m.Textbox({
            Name = V.Name,
            Parent = V.Section.Items.Content;
            Flag = V.Flag;
            Tooltip = V.Tooltip,
            Default = V.Default;
            Placeholder = V.Placeholder,
            Callback = V.Callback
        })
        function V.Set(X, o)
            C:Set(o)
        end
        function V.Get(o)
            return C:Get()
        end
        function V.SetVisibility(X, o)
            C:SetVisibility(o)
        end
        return V
    end
    X.Sections.Listbox = function(o, x)
        x = x or {}
        local V = {
            Window = o.Window;
            Page = o.Page;
            Section = o;
            Name = x.Name or x.name or "Listbox",
            Flag = x.Flag or x.flag or X:NextFlag();
            Default = x.Default or x.default or {};
            Callback = x.Callback or x.callback or function()
            end;
            Multi = x.Multi or x.multi or false,
            Items = x.Items or x.items or {};
            Size = x.Size or x.size or 175
        }
        local C, y = m.Listbox({
            Name = V.Name,
            Parent = V.Section.Items.Content,
            Flag = V.Flag,
            Default = V.Default,
            Callback = V.Callback,
            Multi = V.Multi;
            Items = V.Items;
            Size = V.Size
        })
        function V.Set(X, o)
            C:Set(o)
        end
        function V.Get(o)
            return C:Get()
        end
        function V.Add(X, o)
            C:Add(o)
        end
        function V.Remove(X, o)
            C:Remove(o)
        end
        function V.Refresh(X, o)
            C:Refresh(o)
        end
        function V.SetVisibility(X, o)
            C:SetVisibility(o)
        end
        return V
    end
end;
(getgenv()).Library = X
if (getgenv()).intro_enabled then
    local o = Instance.new("ScreenGui")
    local x = Instance.new("Frame")
    local V = Instance.new("ImageLabel")
    local C = Instance.new("UIAspectRatioConstraint")
    local y = Instance.new("TextLabel")
    local E = Instance.new("UIAspectRatioConstraint")
    o.IgnoreGuiInset = true
    o.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
    o.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    o.Name = "intro"
    o.Parent = game:GetService("CoreGui")
    x.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    x.BackgroundTransparency = .69999998807907
    x.BorderColor3 = Color3.fromRGB(0, 0, 0)
    x.BorderSizePixel = 0
    x.Size = UDim2.new(1, 0, 1, 0)
    x.Name = "background"
    x.Parent = o
    V.Image = "rbxassetid://123420266452643"
    V.ImageRectOffset = Vector2.new(70, 70)
    V.ImageRectSize = Vector2.new(255, 255)
    V.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    V.BackgroundTransparency = 1
    V.BorderColor3 = Color3.fromRGB(0, 0, 0)
    V.BorderSizePixel = 0
    V.Position = UDim2.new(.458801448, 0, .431122452, 0)
    V.Size = UDim2.new(.0810273513, 0, .138729021, 0)
    V.Name = "icon"
    V.Parent = x
    C.AspectRatio = .98887121677399
    C.Parent = V
    local L = Instance.new("UIStroke")
    L.Color = Color3.fromRGB(0, 0, 0)
    L.Thickness = 1
    L.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
    L.Parent = y
    y.FontFace = X.Font
    y.Text = "bro please tell me what to add im bored"
    y.TextColor3 = Color3.fromRGB(255, 255, 255)
    y.TextSize = 20
    y.TextWrapped = true
    y.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    y.BackgroundTransparency = 1
    y.BorderColor3 = Color3.fromRGB(0, 0, 0)
    y.BorderSizePixel = 0
    y.Position = UDim2.new(- 0.000637348625, 0, .1, 0)
    y.Size = UDim2.new(1, 0, .0331632644, 0)
    y.Name = "tips"
    y.Parent = x
    E.AspectRatio = 60.346153259277
    E.Parent = y
    local d = game:GetService("TweenService")
    local v = Vector2.new(1000, 500)
    local s = (game:GetService("RunService")).RenderStepped:Connect(function(o)
        local X = V.Position
        local x = X.X.Offset + v.X * o
        local C = X.Y.Offset + v.Y * o
        if x < 0 or x + V.AbsoluteSize.X > workspace.CurrentCamera.ViewportSize.X then
            v = Vector2.new(- v.X, v.Y)
        end
        if C < 0 or C + V.AbsoluteSize.Y > workspace.CurrentCamera.ViewportSize.Y then
            v = Vector2.new(v.X, - v.Y)
        end
        V.Position = UDim2.new(0, x, 0, C)
    end)
    task.wait(5)
    local A = d:Create(V, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0), {
        ImageTransparency = 1
    })
    local w = d:Create(x, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0), {
        BackgroundTransparency = 1
    })
    local T = d:Create(y, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0), {
        TextTransparency = 1
    })
    A:Play()
    T:Play()
    w:Play()
    T.Completed:Connect(function()
        s:Disconnect()
        o:Destroy()
    end)
end
local x = Color3.fromRGB
local V = Color3.fromHSV
local C = Color3.fromHex
local y = {
    "Bayonet",
    "Huntsman Knife";
    "Falchion Knife";
    "Karambit";
    "Gut Knife",
    "Butterfly Knife",
    "Sickle",
    "Bearded Axe";
    "Cleaver";
    "Falchion Classic";
    "Sickle Classic"
}
local E = {
    Default = {
        ["Window Background"] = x(43, 43, 43);
        Inline = x(12, 12, 12),
        Text = x(180, 180, 180),
        ["Section Background"] = x(19, 19, 19);
        Element = x(63, 63, 63),
        Border = x(68, 68, 68);
        Outline = x(0, 0, 0),
        ["Dark Liner"] = x(56, 56, 56),
        Risky = x(255, 50, 50),
        Accent = x(31, 226, 130)
    };
    Bitchbot = {
        ["Window Background"] = x(33, 33, 33),
        Inline = x(14, 14, 14),
        Text = x(255, 255, 255),
        ["Section Background"] = x(18, 18, 18);
        Element = x(14, 14, 14);
        Border = x(0, 0, 0);
        Outline = x(19, 19, 19);
        ["Dark Liner"] = x(21, 21, 21);
        Risky = x(255, 50, 50),
        Accent = x(158, 79, 249)
    },
    Onetap = {
        ["Window Background"] = x(71, 71, 71);
        Inline = x(30, 30, 30),
        Text = x(244, 239, 232),
        ["Section Background"] = x(20, 20, 20);
        Element = x(33, 33, 33);
        Border = x(0, 0, 0),
        Outline = x(51, 51, 51);
        ["Dark Liner"] = x(22, 22, 20);
        Risky = x(255, 50, 50);
        Accent = x(237, 170, 0)
    },
    Aqua = {
        ["Window Background"] = x(71, 84, 99),
        Inline = x(31, 35, 39);
        Text = x(255, 255, 255);
        ["Section Background"] = x(22, 25, 28);
        Element = x(58, 66, 77);
        Border = x(48, 56, 63);
        Outline = x(20, 25, 30);
        ["Dark Liner"] = x(38, 45, 53);
        Risky = x(255, 50, 50);
        Accent = x(104, 214, 255)
    };
    Fent = {
        ["Window Background"] = x(33, 33, 33);
        Inline = x(14, 14, 14);
        Text = x(255, 255, 255);
        ["Section Background"] = x(18, 18, 18),
        Element = x(14, 14, 14);
        Border = x(34, 14, 14),
        Outline = x(19, 19, 19);
        ["Dark Liner"] = x(66, 0, 0),
        Risky = x(170, 130, 38),
        Accent = x(109, 9, 9)
    }
}
local L = {
    "Default";
    "Bitchbot",
    "Onetap";
    "Aqua",
    "Fent"
}
local d = {
    "Sports Glove",
    "Strapped Glove",
    "Fingerless Glove";
    "Handwraps"
}
local v = {
    name = {
        "Rolve Admin";
        "Easter 2021";
        "Christmas 2020",
        "Halloween 2020";
        "Christmas 2019";
        "Halloween 2019";
        "Christmas 2018";
        "Halloween 2018",
        "Christmas 2017",
        "Halloween 2017",
        "Operation Bright";
        "DropX S4",
        "CBCL S1",
        "CBCL S2",
        "Battle Pass";
        "Doge Pin",
        "Astolfo Pin"
    };
    id = {
        {
            name = "Easter 2021";
            id = "rbxassetid://6616945516"
        },
        {
            name = "Rolve Admin",
            id = "rbxassetid://331180718"
        },
        {
            name = "Christmas 2020",
            id = "rbxassetid://6111454171"
        };
        {
            name = "Halloween 2020";
            id = "rbxassetid://5894230059"
        },
        {
            name = "Christmas 2019";
            id = "rbxassetid://4540756250"
        },
        {
            name = "Halloween 2019",
            id = "rbxassetid://4257797755"
        },
        {
            name = "Christmas 2018",
            id = "rbxassetid://2656299034"
        };
        {
            name = "Halloween 2018";
            id = "rbxassetid://2566906953"
        };
        {
            name = "Christmas 2017";
            id = "rbxassetid://2627834049"
        },
        {
            name = "Halloween 2017",
            id = "rbxassetid://1158104700"
        },
        {
            name = "Operation Bright";
            id = "rbxassetid://3260336994"
        },
        {
            name = "DropX S4",
            id = "rbxassetid://949727483"
        },
        {
            name = "CBCL S1",
            id = "rbxassetid://734835644"
        },
        {
            name = "CBCL S2",
            id = "rbxassetid://734723378"
        },
        {
            name = "Battle Pass";
            id = "rbxassetid://4434228836"
        };
        {
            name = "Doge Pin",
            id = "rbxassetid://6647379156"
        },
        {
            name = "Astolfo Pin",
            id = "rbxassetid://6647724000"
        }
    }
}
local s = {
    "USP",
    "P2000";
    "Glock",
    "DualBerettas";
    "P250";
    "FiveSeven";
    "Tec9";
    "CZ";
    "DesertEagle";
    "R8",
    "MP9";
    "MAC10",
    "MP7";
    "UMP",
    "P90",
    "Bizon";
    "M4A4",
    "M4A1";
    "AK47";
    "Famas",
    "Galil",
    "AUG",
    "SG";
    "AWP";
    "Scout",
    "G3SG1"
}
local A = os.clock()
local w = {
    client = {
        gamename = ((game:GetService("MarketplaceService")):GetProductInfo(game.PlaceId)).Name
    },
    menu = {
        cheatname = "schizohaxx",
        domainname = " :3"
    },
    folder = {
        foldername = "mapsense.solutions",
        configfiletype = ".json"
    },
    dropdowns = {};
    CanSwitchKnifeSkin = true;
    CanSwitchGunSkin = true,
    CanSwitchGloveSkin = true,
    CanSaveConfig = false
}
local T = {
    "USP",
    "P2000";
    "Glock";
    "DualBerettas",
    "P250";
    "FiveSeven",
    "Tec9",
    "CZ";
    "DesertEagle";
    "R8",
    "MP9";
    "MAC10";
    "MP7",
    "UMP";
    "P90";
    "Bizon";
    "M4A4",
    "M4A1",
    "AK47",
    "Famas";
    "Galil";
    "AUG",
    "SG",
    "AWP";
    "Scout";
    "G3SG1"
}
if not isfolder(w.folder.foldername) then
    makefolder(w.folder.foldername)
end
if not isfolder(w.folder.foldername .. ("/" .. w.client.gamename)) then
    makefolder(w.folder.foldername .. ("/" .. w.client.gamename))
end
if not isfolder(w.folder.foldername .. ("/" .. (w.client.gamename .. "/auto load"))) then
    makefolder(w.folder.foldername .. ("/" .. (w.client.gamename .. "/auto load")))
end
local g = X:Window({
    Name = w.menu.cheatname,
    GradientTitle = {
        Enabled = true;
        Speed = 1,
        Start = Color3.fromRGB(255, 255, 255);
        Middle = Color3.fromRGB(31, 226, 130),
        End = Color3.fromRGB(0, 0, 0)
    }
})
local i = g:Page({
    Name = "skin",
    Columns = 2
})
local I = g:Page({
    Name = "misc",
    Columns = 2
})
local h = g:Page({
    Name = "settings",
    Columns = 2
})
local e = i:Section({
    Name = ">.<",
    Side = 1
})
local Y = I:Section({
    Name = "exploiting";
    Side = 1
})
local t = i:Section({
    Name = ">.<";
    Side = 2
})
local B = i:Section({
    Name = ">.<",
    Side = 2
})
local a = X:Watermark("    schizohaxx >.<    |    dev build    |    v.1.0.0    ", {
    X:GetImage("icon");
    Color3.fromRGB(255, 255, 255)
})
t:Toggle({
    name = "glove changer",
    flag = "glove_changer",
    default = false
})
e:Toggle({
    name = "skin changer",
    flag = "gun_skin_changer",
    default = false
})
B:Toggle({
    name = "pin changer",
    flag = "pin_toggle_changer",
    default = false
})
local function u()
    if w.CanSaveConfig then
        local o = game:GetService("HttpService")
        local x = X.Flags
        local V = {}
        local C = {}
        if x.knives_change then
            V.knives_change = x.knives_change
        end
        for o, X in pairs(x) do
            if o ~= "knives_change" and (not o:find("_skin") and not o:find("glove_")) then
                (V)[o] = X
            end
        end
        for o, X in pairs(x) do
            if o:find("_skin") and (not o:find("knife") and not o:find("glove")) then
                (V)[o] = X;
                (C)[o] = X
            end
        end
        for o, X in pairs(x) do
            if o:find("_skin") and o:find("knife") then
                (V)[o] = X
            end
        end
        for o, X in pairs(x) do
            if o:find("glove_") then
                (V)[o] = X
            end
        end
        local y = w.folder.foldername .. ("/" .. (w.client.gamename .. ("/auto load/auto load" .. w.folder.configfiletype)))
        writefile(y, o:JSONEncode(V))
        local E = w.folder.foldername .. ("/" .. (w.client.gamename .. ("/skin" .. w.folder.configfiletype)))
        writefile(E, o:JSONEncode(C))
    end
end
local function K(o)
    for X, x in ipairs(v.id) do
        if x.name == o then
            return x.id
        end
    end
    return nil
end
w.dropdowns.pin_changer = B:Dropdown({
    name = "pins";
    flag = "pin_choose";
    Items = v.name;
    Default = (v.name)[1],
    MaxSize = 75;
    callback = function(o)
        u()
    end
})
w.dropdowns.glove_changer = t:Dropdown({
    name = "glove";
    flag = "glove_choose";
    Items = d;
    Default = (d)[1];
    MaxSize = 75;
    callback = function(o)
        local x = o or (d)[1]
        local V = x .. "_"
        local C = # V
        local y = (game:GetService("Players")).LocalPlayer.PlayerGui.Client.Rarities
        local E = {}
        for o, X in pairs(y:GetChildren()) do
            local x = X.Name
            if string.sub(x, 1, C) == V then
                local o = string.sub(x, C + 1)
                table.insert(E, o)
            end
        end
        local L = false
        for o, X in ipairs(E) do
            if X == "Stock" then
                L = true
                break
            end
        end
        if not L then
            table.insert(E, "Stock")
        end
        if w.dropdowns.glove_skin then
            local o = x .. "_skin"
            local V = (X.Flags)[o]
            w.CanSwitchGloveSkin = false
            w.dropdowns.glove_skin:Refresh(E, V)
            if not V then
                w.dropdowns.glove_skin:Set("Stock")
            else
                w.dropdowns.glove_skin:Set(V)
            end
            w.CanSwitchGloveSkin = true
            u()
        end
    end
})
w.dropdowns.glove_skin = t:Dropdown({
    name = "glove skin";
    flag = "glove_skin",
    Items = {
        "Stock"
    },
    Default = "Stock",
    MaxSize = 75,
    callback = function(o)
        local x = X.Flags.glove_choose
        if x then
            if w.CanSwitchGloveSkin then
                (X.Flags)[x .. "_skin"] = tostring(o)
                print(o)
                u()
            else
                return
            end
        end
    end
})
w.dropdowns.gunskin_changer = e:Dropdown({
    name = "guns";
    flag = "gun_choose";
    Items = T;
    Default = (T)[1];
    MaxSize = 75;
    callback = function(o)
        local x = o or (T)[1]
        local V = x .. "_"
        local C = # V
        local y = (game:GetService("Players")).LocalPlayer.PlayerGui.Client.Rarities
        local E = {}
        for o, X in pairs(y:GetChildren()) do
            local x = X.Name
            if string.sub(x, 1, C) == V then
                local o = string.sub(x, C + 1)
                table.insert(E, o)
            end
        end
        local L = false
        for o, X in ipairs(E) do
            if X == "Stock" then
                L = true
                break
            end
        end
        if not L then
            table.insert(E, "Stock")
        end
        if w.dropdowns.gun_skin then
            local o = x .. "_skin"
            local V = (X.Flags)[o]
            w.CanSwitchGunSkin = false
            w.dropdowns.gun_skin:Refresh(E, V)
            if not V then
                w.dropdowns.gun_skin:Set("Stock")
            else
                w.dropdowns.gun_skin:Set(V)
            end
            w.CanSwitchGunSkin = true
            u()
        end
    end
})
w.dropdowns.gun_skin = e:Dropdown({
    name = "gun skin",
    flag = "gun_skin";
    Items = {
        "Stock"
    },
    Default = "Stock";
    MaxSize = 75,
    callback = function(o)
        local x = X.Flags.gun_choose
        if x then
            if w.CanSwitchGunSkin then
                (X.Flags)[x .. "_skin"] = tostring(o)
                print(o)
                u()
            else
                return
            end
        end
    end
})
e:Toggle({
    name = "knife changer",
    flag = "knife_changer",
    default = false
})
w.dropdowns.knife_changer = e:Dropdown({
    name = "knives";
    flag = "knives_change",
    Items = y,
    Default = "Bayonet";
    MaxSize = 75,
    callback = function(o)
        local x = o or "T Knife"
        local V = x .. "_"
        local C = # V
        local y = (game:GetService("Players")).LocalPlayer.PlayerGui.Client.Rarities
        local E = {}
        for o, X in pairs(y:GetChildren()) do
            local x = X.Name
            if string.sub(x, 1, C) == V then
                local o = string.sub(x, C + 1)
                table.insert(E, o)
            end
        end
        local L = false
        for o, X in ipairs(E) do
            if X == "Stock" then
                L = true
                break
            end
        end
        if not L then
            table.insert(E, "Stock")
        end
        if w.dropdowns.knife_skin then
            local o = x .. "_skin"
            local V = (X.Flags)[o]
            w.CanSwitchKnifeSkin = false
            w.dropdowns.knife_skin:Refresh(E, V)
            if not V then
                w.dropdowns.knife_skin:Set("Stock")
            else
                w.dropdowns.knife_skin:Set(V)
            end
            w.CanSwitchKnifeSkin = true
            u()
        end
    end
})
w.dropdowns.knife_skin = e:Dropdown({
    name = "knife skin",
    flag = "knife_skin";
    Items = {
        "Stock"
    },
    Default = "Stock",
    MaxSize = 75,
    callback = function(o)
        local x = X.Flags.knives_change
        if x then
            if w.CanSwitchKnifeSkin then
                (X.Flags)[x .. "_skin"] = tostring(o)
                u()
                print(o)
            else
                return
            end
        end
    end
})
local r = h:Section({
    name = "settings";
    size = 1
})
r:Toggle({
    name = "show watermark",
    flag = "watermark_show",
    default = false;
    callback = function(o)
        a:SetVisibility(o)
    end
})
r:Textbox({
    name = "watermark name";
    placeholder = "watermark text";
    flag = "watermark_text";
    default = w.menu.cheatname;
    callback = function(o)
        o = (tostring(o or "")):gsub("^%s*(.-)%s*$", "%1")
        local x = (o ~= "" and o or w.menu.cheatname) .. "    |    dev build    |    v.1.0.0    "
        a:SetText(x, {
            X:GetImage("icon");
            Color3.fromRGB(255, 255, 255)
        })
    end
})
local b = cloneref(game:GetService("Players"))
local n = cloneref(game:GetService("ReplicatedStorage"))
local c = cloneref(game:GetService("RunService"))
local D = cloneref(game:GetService("UserInputService"))
local Z = cloneref(game:GetService("TweenService"))
local N = cloneref(game:GetService("Lighting"))
local P = cloneref(game:GetService("LogService"))
local j = cloneref(game:GetService("MarketplaceService"))
local O = cloneref(game:GetService("TeleportService"))
local R = cloneref(game:GetService("HttpService"))
local k = cloneref(game:GetService("GuiService"))
local H = cloneref(game:GetService("GroupService"))
local J = cloneref(game:GetService("TextChatService"))
local q = cloneref(game:GetService("ContextActionService"))
local f = cloneref(game:GetService("CoreGui"))
local m = workspace.CurrentCamera
local l = cloneref(b.LocalPlayer)
local z = getsenv((l:FindFirstChild("PlayerGui")).Client)
local function M(o)
    if o and (o.Character and (o.Character.FindFirstChild(o.Character, "Humanoid") and o.Character.Humanoid.Health > 0)) then
        return true
    end
    return false
end


local Q = l.Status.Team.Value
local F = (game:GetService("ReplicatedStorage")).Gloves
local p = X.Flags
c.RenderStepped:Connect(function()
    if p.knife_changer then
        if Q.Value ~= "Spectator" and (Q.Value ~= "" and M(l)) then
            Q = l.Status.Team
            z.melee = p.knives_change or Q.Value .. " Knife";
            ((l:FindFirstChild("SkinFolder")))[Q.Value .. "Folder"].Knife.Value = p.knife_skin or "Stock"
        end
        z.updateInventory()
    end
    if p.gun_skin_changer then
        local o = l.Status.Team
        if o.Value ~= "Spectator" and (o.Value ~= "" and M(l)) then
            for X, x in pairs(X.Flags) do
                if X:find("_skin") then
                    local x = X:gsub("_skin", "")
                    if o.Value ~= "Spectator" and o.Value ~= "" then
                        local o = l:FindFirstChild("SkinFolder")
                        if o then
                            local X = o:FindFirstChild(x .. "_skin", true)
                            if X then
                                X.Value = (p)[x .. "_skin"] or "Stock"
                            end
                        end
                    end
                    if z.primary == x or z.secondary == x then
                        if z.secondary == x then
                            z.secondaryskin = (p)[x .. "_skin"] or "Stock"
                        end
                        if z.primary == x then
                            z.primaryskin = (p)[x .. "_skin"] or "Stock"
                        end
                    end
                end
            end
            z.updateInventory()
        end
    end
    if p.pin_toggle_changer then
        game.Players.LocalPlayer.EquippedPin.Value = K(p.pin_choose)
    end
end)
m.ChildAdded:Connect(function(o)
    if m.Arms:FindFirstChild("AnimSaves") then
        (m.Arms:FindFirstChild("AnimSaves")):Destroy()
    end
    arms = m.Arms:FindFirstChildOfClass("Model")
    if p.glove_changer and (arms and M(l)) then
        local o = arms:FindFirstChild("Left Arm")
        if o and o:FindFirstChild("Glove") then
            (o:FindFirstChild("Glove")):Destroy()
            local X = (F.Models)[p.glove_choose].LGlove:Clone()
            if p.glove_skin ~= "Stock" then
                X.Mesh.TextureId = ((F)[p.glove_choose])[p.glove_skin].Textures.TextureId
            end
            X.Parent = o
            X.Welded.Part0 = o
        end
        local X = arms:FindFirstChild("Right Arm")
        if X and X:FindFirstChild("Glove") then
            (X:FindFirstChild("Glove")):Destroy()
            local o = (F.Models)[p.glove_choose].RGlove:Clone()
            if p.glove_skin ~= "Stock" then
                o.Mesh.TextureId = ((F)[p.glove_choose])[p.glove_skin].Textures.TextureId
            end
            o.Parent = X
            o.Welded.Part0 = X
        end
    end
end)
local W = p.knives_change .. "_"
local G = # W
local S = (game:GetService("Players")).LocalPlayer.PlayerGui.Client.Rarities
local oL = {}
for o, X in pairs(S:GetChildren()) do
    local x = X.Name
    if string.sub(x, 1, G) == W then
        local o = string.sub(x, G + 1)
        table.insert(oL, o)
    end
end
local XL = false
for o, X in ipairs(oL) do
    if X == "Stock" then
        XL = true
        break
    end
end
if not XL then
    table.insert(oL, "Stock")
end
if w.dropdowns.knife_skin then
    local o = p.knives_change .. "_skin"
    local x = (X.Flags)[o]
    w.CanSwitchKnifeSkin = false
    w.dropdowns.knife_skin:Refresh(oL, x)
    if not x then
        w.dropdowns.knife_skin:Set("Stock")
    else
        w.dropdowns.knife_skin:Set(x)
    end
    w.CanSwitchKnifeSkin = true
end
local xL = p.gun_choose .. "_"
local VL = # xL
local CL = {}
for o, X in pairs(S:GetChildren()) do
    local x = X.Name
    if string.sub(x, 1, VL) == xL then
        local o = string.sub(x, VL + 1)
        table.insert(CL, o)
    end
end
local yL = false
for o, X in ipairs(CL) do
    if X == "Stock" then
        yL = true
        break
    end
end
if not yL then
    table.insert(CL, "Stock")
end
if w.dropdowns.gun_skin then
    local o = p.gun_choose .. "_skin"
    local x = (X.Flags)[o]
    w.CanSwitchGunSkin = false
    w.dropdowns.gun_skin:Refresh(CL, x)
    if not x then
        w.dropdowns.gun_skin:Set("Stock")
    else
        w.dropdowns.gun_skin:Set(x)
    end
    local V = p.glove_choose .. "_"
    local C = # V
    local y = {}
    for o, X in pairs(S:GetChildren()) do
        local x = X.Name
        if string.sub(x, 1, C) == xL then
            local o = string.sub(x, C + 1)
            table.insert(y, o)
        end
    end
    local E = false
    for o, X in ipairs(y) do
        if X == "Stock" then
            E = true
            break
        end
    end
    if not E then
        table.insert(oL, "Stock")
    end
    if w.dropdowns.glove_skin then
        local o = p.glove_choose .. "_skin"
        local x = (X.Flags)[o]
        w.CanSwitchGloveSkin = false
        w.dropdowns.glove_skin:Refresh(y, x)
        if not x then
            w.dropdowns.glove_skin:Set("Stock")
        else
            w.dropdowns.glove_skin:Set(x)
        end
    end
end
w.dropdowns.glove_changer:Set("Sports Glove")
w.dropdowns.glove_changer:Set("Strapped Glove")
w.dropdowns.glove_changer:Set("Sports Glove")
X:Notification("loaded..", 5, Color3.fromRGB(0, 255, 0), {
    X:GetImage("icon"),
    Color3.fromRGB(255, 255, 255)
})
if isfile(w.folder.foldername .. ("/" .. (w.client.gamename .. ("/auto load/" .. ("auto load" .. w.folder.configfiletype))))) then
    X:Notification("auto load config detected and loaded.", 5, Color3.fromRGB(0, 255, 0), {
        X:GetImage("icon");
        Color3.fromRGB(255, 255, 255)
    })
    X:LoadConfig(readfile(w.folder.foldername .. ("/" .. (w.client.gamename .. ("/auto load/" .. ("auto load" .. w.folder.configfiletype))))))
    local o = game:GetService("HttpService")
    local x = w.folder.foldername .. ("/" .. (w.client.gamename .. ("/skin" .. w.folder.configfiletype)))
    if isfile(x) then
        local V = o:JSONDecode(readfile(x))
        for o, x in pairs(V) do
            if o:find("_skin") and (not o:find("knife") and not o:find("glove")) then
                (X.Flags)[o] = x
            end
        end
    end
    local V = X.Flags.gun_choose
    if V and w.dropdowns.gun_skin then
        local o = V .. "_"
        local x = # o
        local C = game.Players.LocalPlayer.PlayerGui.Client.Rarities
        local y = {}
        for X, V in pairs(C:GetChildren()) do
            local C = V.Name
            if string.sub(C, 1, x) == o then
                local o = string.sub(C, x + 1)
                table.insert(y, o)
            end
        end
        local E = false
        for o, X in ipairs(y) do
            if X == "Stock" then
                E = true
                break
            end
        end
        if not E then
            table.insert(y, "Stock")
        end
        local L = V .. "_skin"
        local d = (X.Flags)[L]
        w.CanSwitchGunSkin = false
        w.dropdowns.gun_skin:Refresh(y, d)
        w.dropdowns.gun_skin:Set(d or "Stock")
        w.CanSwitchGunSkin = true
    end
end
w.CanSaveConfig = true
