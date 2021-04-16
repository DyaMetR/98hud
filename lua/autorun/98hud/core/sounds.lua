--[[------------------------------------------------------------------
  Declare system sounds for each theme to use
]]--------------------------------------------------------------------

if SERVER then return end

local sounds = {} -- declared system sounds

--[[------------------------------------------------------------------
  Declares a system sound
  @param {string} name
]]--------------------------------------------------------------------
function W98HUD:addSound(name)
    sounds[name] = true
end

--[[------------------------------------------------------------------
  Plays the given sound from the current theme
]]--------------------------------------------------------------------
function W98HUD:playSound(sound)
    local path = W98HUD:getSoundFile(sound)
    if not sounds[sound] or not path then return end
    surface.PlaySound(path)
end