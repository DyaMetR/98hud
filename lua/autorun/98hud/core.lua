--[[------------------------------------------------------------------
  Core file where all pieces come together
]]--------------------------------------------------------------------

if CLIENT then

  W98HUD.COMPONENTS = {} -- store component functions

  local SIGNATURE = '[%s] '

  local elements = {}

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

  --[[------------------------------------------------------------------
    Registers a HUD element
    @param {function} draw function
  ]]--------------------------------------------------------------------
  function W98HUD:register(func)
    table.insert(elements, func)
  end

  --[[------------------------------------------------------------------
    Returns all registered HUD elements
    @return {table} elements
  ]]--------------------------------------------------------------------
  function W98HUD:getElements()
    return elements
  end

end

-- include core
W98HUD:include('core/convars.lua')
W98HUD:include('core/cache.lua')
W98HUD:include('core/themes.lua')
W98HUD:include('core/items.lua')
W98HUD:include('core/parameters.lua')
W98HUD:include('core/sounds.lua')
W98HUD:include('core/persistance.lua')

-- include core default implementation
W98HUD:include('data/items.lua')
W98HUD:include('data/parameters.lua')
W98HUD:include('data/sounds.lua')
W98HUD:include('data/default.lua')

-- include UI components
W98HUD:include('components/window.lua')
W98HUD:include('components/progressbar.lua')

-- include configuration menus
W98HUD:include('qmenu/toolmenu.lua')
W98HUD:include('qmenu/menu.lua')

-- include HUD elements
W98HUD:include('elements/border.lua')
W98HUD:include('elements/health.lua')
W98HUD:include('elements/ammunition.lua')

-- include add-ons
local files, _ = file.Find('autorun/98hud/add-ons/*', 'LUA') -- read add-ons
for _, _file in pairs(files) do W98HUD:include('add-ons/' .. _file) end -- include files

if SERVER then return end -- from here, it's all clientside

--[[------------------------------------------------------------------
  Loading phase
]]--------------------------------------------------------------------
W98HUD:setup()

--[[------------------------------------------------------------------
  Drawing phase
]]--------------------------------------------------------------------
hook.Add('HUDPaint', '98hud', function()
  if not W98HUD:GetEnabledConVar() then return end
  local elements = W98HUD:getElements()
  if #elements <= 0 then return end
  for i=1, #elements do
    elements[i]()
  end
end)

--[[------------------------------------------------------------------
  Hide HUD
]]--------------------------------------------------------------------
local HEALTH, BATTERY, AMMO, ALT, DAMAGE = 'CHudHealth', 'CHudBattery', 'CHudAmmo', 'CHudSecondaryAmmo', 'CHudDamageIndicator'
local hide = {
  [HEALTH] = true,
  [BATTERY] = true,
  [AMMO] = true,
  [ALT] = true
}
hook.Add('HUDShouldDraw', '98hud', function(name)
  if not W98HUD:GetEnabledConVar() then return end
  local health = W98HUD:GetHealthConVar() > 0
  local ammo = W98HUD:GetAmmoConVar() > 0
  hide[DAMAGE] = LocalPlayer().Alive and LocalPlayer():Alive()
  hide[HEALTH] = health
  hide[BATTERY] = health
  hide[AMMO] = ammo
  hide[ALT] = ammo
  if hide[name] then return false end
end)
