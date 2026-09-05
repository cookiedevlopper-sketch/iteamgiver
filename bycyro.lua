local Rayfield = loadstring(game:HttpGet("https://sirius.menu/gen2"))()

local window = Rayfield:CreateWindow({
    name = "Iteam giver | by cyro",
    subtitle = "Gear Slap Tower",
    sidebarLayout = true,
})

local istab = window:CreateTab({ name = "Iteam giver", icon = 93364949241311 })

istab:CreateButton({
    name = "Clasic bomb",
    callback = function()
local Event = game:GetService("ReplicatedStorage").RemoteEvents.mapManagerRemote
Event:FireServer(
    "claimTool",
    "Classic Timebomb"
)
    end,
})

istab:CreateButton({
    name = "Claw slap",
    callback = function()
        local Event = game:GetService("ReplicatedStorage").RemoteEvents.mapManagerRemote
Event:FireServer(
    "claimTool",
    "Claw Slap"
)
    end,
})
istab:CreateButton({
    name = "Golden carpet",
    callback = function()
      local Event = game:GetService("ReplicatedStorage").RemoteEvents.mapManagerRemote
Event:FireServer(
    "claimTool",
    "Gold Carpet"
)  
    end,
})

local Localplayerr = window:CreateTab({ name = "Local player", icon = 93364949241311 })

Localplayerr:CreateSlider({
    name = "Field of view",
    range = { 70, 120 },
    increment = 1,
    value = 90,
    suffix = "°",
    callback = function(value)
        workspace.CurrentCamera.FieldOfView = value
    end,
})
