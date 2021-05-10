--[[------------------------------------------------------------------
  Window border element
]]--------------------------------------------------------------------

if SERVER then return end

-- register element
W98HUD:register(function()
  if not W98HUD:GetWindowConVar() then return end -- hide if disabled
  local config = W98HUD:getUserCfg().parameters
  local title = GetHostName() -- get server name as window title
  local w, h = ScrW(), ScrH()
  local borderSize = config.aBorderSize
  local col1, col2, colt, colb = config.aTitleCol1, config.aTitleCol2, config.aTitleTxtCol, config.aBorderCol
  if not LocalPlayer():Alive() then -- change colours while dead
    col1 = config.iTitleCol1
    col2 = config.iTitleCol2
    colt = config.iTitleTxtCol
    colb = config.iBorderCol
    borderSize = config.iBorderSize
  end
  W98HUD.COMPONENTS:emptyWindow(title, 0, 0, w, h, W98HUD.FONTS.TITLE, config.bgCol1, colb, borderSize, colt, col1, col2, config.titleSize)
  W98HUD.COMPONENTS:windowControls(w - (4 + borderSize), 4 + borderSize, config.captionCol, config.btnCol1, config.btnCol2, config.btnCol3, config.bgCol2, true, false, config.titleSize, W98HUD.FONTS.CAPTION)
end)
