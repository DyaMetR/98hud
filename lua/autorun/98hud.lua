--[[------------------------------------------------------------------
  Windows 98 styled HUD
  Version 2.0.2
  May 14th, 2022

  Made by DyaMetR
  * full credits found in the details below
]]--------------------------------------------------------------------

W98HUD = {}

if CLIENT then
  -- addon information
  W98HUD.name = '9XHUD'
  W98HUD.category = 'DyaMetR'
  W98HUD.version = '2.0.2'
  W98HUD.date = 'May 14th, 2022'
  W98HUD.credits = { -- {name, contribution}
    {'DyaMetR', 'Developer'},
    {'Matsilagi', 'Reference material\nPorting all 75 themes\nTesting'},
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
