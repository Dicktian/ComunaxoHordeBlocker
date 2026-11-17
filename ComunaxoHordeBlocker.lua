-- Comunaxo Horde Blocker 1.1 - WoW 3.3.5a
-- Sin interfaz ni configuracion. Se carga con todos los personajes.
local function isHordeLanguage(value)
    if type(value) == "number" then return value == 1 end -- Orcish
    if type(value) ~= "string" then return false end
    local s = string.lower(value)
    s = s:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "")
    s = s:gsub("^%s*%[?", ""):gsub("%]?%s*$", "")
    return s == "orco" or s == "orcish" or s == "orc" or s == "orcico" or s == "orcico" or s == "orcish language"
end

local function filterChat(self, event, message, sender, ...)
    if UnitFactionGroup("player") ~= "Alliance" then return false end
    local args = {...}
    -- Los cores privados pueden variar la posicion y el formato del idioma.
    for i = 1, math.min(4, #args) do
        if isHordeLanguage(args[i]) then return true end
    end
    if type(message) == "string" and message:match("^%s*%[[Oo][Rr][Cc][Oo]%]") then
        return true
    end
    return false
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", filterChat)
ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", filterChat)

-- Respaldo para cores que imprimen el idioma en el texto ya formateado.
-- Se limita a lineas SAY/YELL que muestran explicitamente [Orco].
local function isRenderedHordeChat(message)
    if type(message) ~= "string" then return false end
    local clean = message:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "")
    if not clean:find("%[[Oo][Rr][Cc][Oo]%]") then return false end
    return clean:find("grita:", 1, true) ~= nil
        or clean:find("dice:", 1, true) ~= nil
        or clean:find("yells:", 1, true) ~= nil
        or clean:find("says:", 1, true) ~= nil
end

local function attachFrame(frame)
    if not frame or frame.ComunaxoHordeBlockerHooked then return end
    frame.ComunaxoHordeBlockerHooked = true
    local original = frame.AddMessage
    frame.AddMessage = function(self, message, ...)
        if UnitFactionGroup("player") == "Alliance" and isRenderedHordeChat(message) then
            return
        end
        return original(self, message, ...)
    end
end

for i = 1, NUM_CHAT_WINDOWS or 10 do
    attachFrame(_G["ChatFrame" .. i])
end
