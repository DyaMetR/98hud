--[[------------------------------------------------------------------
  Core file where all pieces come together
]]--------------------------------------------------------------------

if SERVER then return end

--[[------------------------------------------------------------------
  Gets the current HUD scale
  @return {number} scale
]]--------------------------------------------------------------------
function W98HUD:getScale()
  return ScrH() / 480
end

-- include core
W98HUD:include('themes.lua')
W98HUD:include('parameters.lua')

-- include configuration
W98HUD:include('config/parameters.lua')
