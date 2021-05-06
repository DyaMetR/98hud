--[[------------------------------------------------------------------
  Window border element
]]--------------------------------------------------------------------

if SERVER then return end

-- register element
W98HUD:register(function()
  local config = W98HUD:getUserCfg().parameters
  local title = GetHostName() -- get server name as window title
  local w, h = ScrW(), ScrH()
  local borderSize = config.borderSize
  local col1, col2, colt, colb = config.aTitleCol1, config.aTitleCol2, config.aTitleTxtCol, config.aBorderCol
  if not LocalPlayer():Alive() then -- change colours while dead
    col1 = config.iTitleCol1
    col2 = config.iTitleCol2
    colt = config.iTitleTxtCol
    colb = config.iBorderCol
  end
  W98HUD.COMPONENTS:emptyWindow(title, 0, 0, w, h, W98HUD.FONTS.TITLE, config.bgCol1, colb, borderSize, colt, col1, col2, config.titleSize)
  W98HUD.COMPONENTS:windowControls(w - (4 + borderSize), 4 + borderSize, config.bgCol1, config.bgCol2, true, false, config.titleSize, W98HUD.FONTS.CAPTION)
end)
