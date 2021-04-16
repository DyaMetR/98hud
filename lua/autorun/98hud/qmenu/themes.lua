--[[------------------------------------------------------------------
  Theme menu
]]--------------------------------------------------------------------

if SERVER then return end

local W, H = 640, 480 -- Windows 98 default resolution
local TITLE = 'Display settings'

--[[------------------------------------------------------------------
  Opens the theme's menu and returns the frame
  @return {DFrame} frame
]]--------------------------------------------------------------------
local function menu()
  -- create frame
  local frame = vgui.Create('DFrame')
  frame:SetTitle(TITLE)
  frame:SetSize(W, H)
  frame:Center()
  frame:MakePopup()

  -- preview window
  local preview = vgui.Create('DPanel', frame)
  preview:SetSize(frame:GetWide() - 50, 50)
  preview:SetPos((frame:GetWide() * .5) - (preview:GetWide() * .5), 50)
  preview.Paint = function()
    -- draw windows
  end

  return frame -- return frame
end