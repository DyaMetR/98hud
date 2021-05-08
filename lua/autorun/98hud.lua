--[[------------------------------------------------------------------
  Windows 98 styled HUD
  Version 2 (alpha revision 3)
  May 7th, 2021

  Made by DyaMetR
  * full credits found in the details below
]]--------------------------------------------------------------------

W98HUD = {}

if CLIENT then
  -- addon information
  W98HUD.name = '98HUD'
  W98HUD.category = 'DyaMetR'
  W98HUD.version = '2 (alpha revision 3)'
  W98HUD.date = 'May 8th, 2021'
  W98HUD.credits = { -- {name, contribution}
    {'DyaMetR', 'Developer'},
    {'Matsilagi', 'Reference material\nThemes porting\nTesting'},
    {'Microsoft', 'Original components design\nDefault themes reference'}
  }
end

--[[------------------------------------------------------------------
  Includes a file sharedwise
  @param {string} file
]]--------------------------------------------------------------------
function W98HUD:include(path)
  include(path)
  if SERVER then AddCSLuaFile(path) end
end

-- include core
W98HUD:include('98hud/core.lua')
