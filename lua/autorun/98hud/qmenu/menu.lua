--[[------------------------------------------------------------------
  Theme menu
]]--------------------------------------------------------------------

W98HUD:include('derma/dcolormixerbutton.lua')
W98HUD:include('derma/dlabeledcontrol.lua')
W98HUD:include('menu/appearance.lua')

if SERVER then return end

local W, H = 404, 448 -- original window size
local TITLE = 'Display Properties'
local APPLY, CANCEL, OK = 'Apply', 'Cancel', 'OK'
local APPEARANCE, SOUNDS = 'Appearance', 'Sounds'
local BUTTON_WIDTH, BUTTON_HEIGHT, BUTTON_MARGIN = 75, 23, 3

local cache -- menu theme cache

--[[------------------------------------------------------------------
  Creates a button and returns it
  @param {number} x
  @param {number} y
  @param {number} width
  @param {string} label
  @return {DLabel} label
]]--------------------------------------------------------------------
local function button(parent, x, y, label)
  local button = vgui.Create('DButton', parent)
  button:SetSize(BUTTON_WIDTH, BUTTON_HEIGHT)
  button:SetPos(x, y)
  button:SetText(label)
  return button
end

--[[------------------------------------------------------------------
  Opens the sounds options panel
  @param {DPanel} parent panel
  @return {DPanel} panel
  @deprecated
]]--------------------------------------------------------------------
local function sounds(sheet)
  -- create container
  local parent = vgui.Create('DPanel')
  parent:SetSize(sheet:GetWide() - 16, sheet:GetTall() - 16)
  parent.Paint = function() end

  return parent -- return container
end

--[[------------------------------------------------------------------
  Opens the theme's menu and returns the frame
  @return {DFrame} frame
]]--------------------------------------------------------------------
local function menu()
  cache = table.Copy(W98HUD:getUserCfg()) -- cache user configuration

  -- create frame
  local frame = vgui.Create('DFrame')
  frame:SetTitle(TITLE)
  frame:SetSize(W, H)
  frame:Center()
  frame:MakePopup()

  -- create property sheet to host the options
  local sheet = vgui.Create('DPropertySheet', frame)
  sheet:SetPos(5, 29)
  sheet:SetSize(frame:GetWide() - (sheet.x * 2), frame:GetTall() - (sheet.y + sheet.x + 33))

  -- add sheets
  sheet:AddSheet(APPEARANCE, W98HUD.CreateAppereanceMenu(sheet, cache))
  -- sheet:AddSheet(SOUNDS, sounds(sheet))

  -- accept button
  local accept = button(frame, frame:GetWide() - sheet.x - (BUTTON_WIDTH * 3) - (BUTTON_MARGIN * 2), sheet.y + sheet:GetTall() + sheet.x, OK)
  accept.DoClick = function()
    W98HUD:applyChanges(cache.parameters, cache.sounds, cache.theme)
    frame:Close()
  end

  -- cancel button
  local cancel = button(frame, frame:GetWide() - sheet.x - (BUTTON_WIDTH * 2) - BUTTON_MARGIN, sheet.y + sheet:GetTall() + sheet.x, CANCEL)
  cancel.DoClick = function() frame:Close() end

  -- apply button
  local apply = button(frame, frame:GetWide() - sheet.x - BUTTON_WIDTH, sheet.y + sheet:GetTall() + sheet.x, APPLY)
  apply.DoClick = function()
    W98HUD:applyChanges(cache.parameters, cache.sounds, cache.theme)
  end

  return frame -- return frame
end

--[[------------------------------------------------------------------
  Open menu through console command
]]--------------------------------------------------------------------
concommand.Add('98hud_menu', menu)
