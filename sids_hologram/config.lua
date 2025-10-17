-- config.lua
-- You can add unlimited holograms below.
-- Each entry supports:
-- id, label, coords, scale, distance, font, r,g,b,a, bob, etc.

HOLOGRAMS = {

    -- Example 1: Welcome message
    {
        id = "welcome_holo",
        label = "Welcome to fivem", -- supports color codes like ^4 (blue)
        coords = vector3(-423.9805, 1128.9556, 326.8548),
        heading = 338.1149,   -- not directly used for text rotation, but good reference
        scale = 0.7,
        distance = 35.0,
        font = 4,
        r = 0, g = 200, b = 255, a = 255,
        background = True,
        bob = true,
        bobAmplitude = 0.10,
        bobSpeed = 1.5,
        scaleWithDistance = true
    },

    -- Example 2: spawn discord
    {
        id = "turbo_discord",
        label = "~b~discord.gg/RC9bB5r5xF",
        coords = vector3(-423.9805, 1128.9556, 326.4000),
        scale = 0.6,
        distance = 30.0,
        font = 4,
        r = 255, g = 255, b = 255, a = 230,
        bob = true,
        bobAmplitude = 0.12,
        bobSpeed = 1.5,
        scaleWithDistance = true
    },

    -- Example 3: spawn tp
    {
        id = "spawn_tp",
        label = "~b~Sandy Shored",
        coords = vector3(-415.6291, 1147.2466, 325.8348),
        scale = 0.6,
        distance = 30.0,
        font = 4,
        r = 255, g = 255, b = 255, a = 230,
        bob = true,
        bobAmplitude = 0.12,
        bobSpeed = 1.5,
        scaleWithDistance = true
    },

    -- Example 3: spawn tp
    {
        id = "spawn_tp",
        label = "~r~Dell Perro Pier",
        coords = vector3(-413.1535, 1148.4224, 325.8593),
        scale = 0.6,
        distance = 30.0,
        font = 4,
        r = 255, g = 255, b = 255, a = 230,
        bob = true,
        bobAmplitude = 0.12,
        bobSpeed = 1.5,
        scaleWithDistance = true
    },

    -- Example 4: spawn tp
    {
        id = "spawn_tp",
        label = "~g~City",
        coords = vector3(-421.8336, 1148.9453, 325.8597),
        scale = 0.6,
        distance = 30.0,
        font = 4,
        r = 255, g = 255, b = 255, a = 230,
        bob = true,
        bobAmplitude = 0.12,
        bobSpeed = 1.5,
        scaleWithDistance = true
    },

    -- Example 4: spawn tp
    {
        id = "spawn_tp",
        label = "~y~Paleto Bay",
        coords = vector3(-423.4980, 1151.1924, 325.8588),
        scale = 0.6,
        distance = 30.0,
        font = 4,
        r = 255, g = 255, b = 255, a = 230,
        bob = true,
        bobAmplitude = 0.12,
        bobSpeed = 1.5,
        scaleWithDistance = true
    },
}
