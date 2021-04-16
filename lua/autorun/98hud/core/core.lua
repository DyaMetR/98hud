--[[------------------------------------------------------------------
  Core file where all pieces come together
]]--------------------------------------------------------------------

if CLIENT then

  local SIGNATURE = '[%s] '

  --[[------------------------------------------------------------------
    Prints a message with the addon signature
    @param {varargs} messages
  ]]--------------------------------------------------------------------
  function W98HUD:print(...)
    print(string.format(SIGNATURE, W98HUD.name), ...)
  end

  --[[------------------------------------------------------------------
    Gets the current HUD scale
    @return {number} scale
  ]]--------------------------------------------------------------------
  function W98HUD:getScale()
    return ScrH() / 480
  end

end

-- include core
W98HUD:include('themes.lua')
W98HUD:include('parameters.lua')
W98HUD:include('sounds.lua')

-- include core default implementation
W98HUD:include('data/items.lua')
W98HUD:include('data/sounds.lua')
W98HUD:include('data/default.lua')

-- include configuration
W98HUD:include('config/parameters.lua')
W98HUD:include('config/qmenu.lua')
W98HUD:include('config/themes.lua')

-- include HUD elements


-- include add-ons
local files, _ = file.Find('autorun/98hud/add-ons/*', 'LUA')) -- read add-ons
for _, _file in pairs(files) do W98HUD:include('add-ons/' .. _file) end -- include files
