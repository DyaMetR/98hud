--[[------------------------------------------------------------------
  Windows 98 styled HUD
  Version 2
  April 14th, 2021

  Made by DyaMetR
  * full credits list to be determined
]]--------------------------------------------------------------------

W98HUD = {}

if CLIENT then
  -- addon information
  W98HUD.name = '98HUD'
  W98HUD.category = 'DyaMetR'
  W98HUD.version = '2'
  W98HUD.date = 'April 14th, 2021'
  W98HUD.credits = { -- {name, contribution}
    {'DyaMetR', 'Developer'}
  }
end

--[[------------------------------------------------------------------
  Includes a file sharedwise
  @param {string} file
]]--------------------------------------------------------------------
function W98HUD:include(file)
  include(file)
  if SERVER then AddCSLuaFile(file) end
end

-- include core
W98HUD:includeFile('98hud/core.lua')
