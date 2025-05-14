# RBXlua
# SB farm

```loadstring(game:HttpGet("https://raw.githubusercontent.com/HaraldErik/RBXlua/refs/heads/main/obfuscated_SB%20farm.lua"))()```
# Another SB farm (better and more undetected)
```loadstring(game:HttpGet("https://raw.githubusercontent.com/HaraldErik/RBXlua/refs/heads/main/Better%20SB%20slaps%20farm.lua"))()```

# Elite Hub #
```loadstring(game:HttpGet("https://raw.githubusercontent.com/HaraldErik/RBXlua/refs/heads/main/Elite%20hub.lua"))()```

# Aimbot script+ESP. Recomended for Arsenal #
it does not seem to be detected but i have not tried in the long run. Tested with Swift Executor (Most Executors are detected in the long run anyways so dont use on main)
```
-- // CONFIGURATION For AimBot //

local Settings = {
    CircleSize = 60, -- Target circle size: 0 (tiny) to 100 (large). 100 covers almost half the screen.
    ActivateMethod = "E", -- "E" = Hold E key, "M2" = Hold right mouse button
    CircleColor = Color3.fromRGB(204, 189, 189), -- UI Circle color
    CircleTransparency = 0.6, -- UI transparency: 0 = solid, 1 = invisible
    TeamCheck = true, -- true = don't target teammates
}

-- CONFIGURATION For ESP //
local Config = {
    TeamCheck = true, -- true: don't show ESP on teammates
    ShowDistance = false, -- true: display distance above box
    Tracer = false, -- true: draw tracer lines
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/HaraldErik/RBXlua/refs/heads/main/Obfuscated_Aimbot.lua"))()

```

