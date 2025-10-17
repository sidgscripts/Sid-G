-- client.lua
local function Draw3DText(x, y, z, text, opts)
    opts = opts or {}
    local scale = opts.scale or 0.5
    local font = opts.font or 4
    local color = opts.color or {r=255,g=255,b=255,a=255}
    local scaleWithDistance = opts.scaleWithDistance ~= false

    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    if not onScreen then return end

    local camCoords = GetGameplayCamCoords()
    local dist = #(vector3(x, y, z) - camCoords)
    local finalScale = scale

    if scaleWithDistance then
        finalScale = scale * (1.0 / math.max(1.0, dist * 0.08))
        if finalScale < 0.15 then finalScale = 0.15 end
    end

    SetTextScale(0.0, finalScale)
    SetTextFont(font)
    SetTextProportional(1)
    SetTextCentre(true)
    SetTextColour(color.r, color.g, color.b, color.a)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextOutline()

    -- Split text into lines
    local lines = {}
    for s in string.gmatch(text, "[^\n]+") do table.insert(lines, s) end

    for i, line in ipairs(lines) do
        SetTextEntry("STRING")
        AddTextComponentString(line)
        DrawText(_x, _y + ((i - 1) * 0.035))
    end
end

local function getBobbing(z, amplitude, speed)
    local t = GetGameTimer() / 1000
    return z + math.sin(t * speed) * amplitude
end

CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local pcoords = GetEntityCoords(playerPed)
        local sleep = 300

        for _, holo in ipairs(HOLOGRAMS) do
            local hpos = holo.coords
            local dist = #(pcoords - hpos)

            if dist <= (holo.distance or 25.0) then
                sleep = 0
                local drawZ = hpos.z
                if holo.bob then
                    drawZ = getBobbing(hpos.z, holo.bobAmplitude or 0.1, holo.bobSpeed or 1.5)
                end

                Draw3DText(hpos.x, hpos.y, drawZ, holo.label, {
                    scale = holo.scale,
                    font = holo.font,
                    color = {r = holo.r, g = holo.g, b = holo.b, a = holo.a},
                    scaleWithDistance = holo.scaleWithDistance
                })
            end
        end

        Wait(sleep)
    end
end)
