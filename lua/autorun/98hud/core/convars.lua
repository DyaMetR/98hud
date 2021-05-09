--[[------------------------------------------------------------------
  General settings
]]--------------------------------------------------------------------

if SERVER then return end

local PREFIX = '98hud_'
local BOOLEAN = 'boolean'
local STRING = 'string'
local CONVARS = { -- console variables to use
  enabled = true,
  layout = 0,
  window = true,
  health = 2,
  ammo = 2,
  player = 'xslx',
  weapon = 'dll'
}

local convars = {} -- declared convars

-- declare console variables
for convar, default in pairs(CONVARS) do
  -- generate getter function for convar
  local func
  if type(default) == BOOLEAN then
    if default then -- convert from boolean to number
      default = 1
    else
      default = 0
    end
    func = function() return convars[convar]:GetBool() end
  elseif type(default) == STRING then
    func = function() return convars[convar]:GetString() end
  else
    func = function() return convars[convar]:GetInt() end
  end
  -- add convar
  convars[convar] = CreateClientConVar(PREFIX .. convar, default, true)
  -- add it to the W98 API
  W98HUD['Get' .. string.upper(string.sub(convar, 1, 1)) .. string.sub(convar, 2) .. 'ConVar'] = func
end
