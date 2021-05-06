--[[------------------------------------------------------------------
  Health and armour window
]]--------------------------------------------------------------------

if SERVER then return end

local FORMAT = '%i%%';
local HEALTH, SUIT = 'Health', 'Suit'

-- register element
W98HUD:register(function()
  local config = W98HUD:getUserCfg().parameters
  local w, h = 285, 113
  local barW, barH = w - 26, 17
  local title = LocalPlayer():Name() .. '.xlsx'
  local col1, col2, colt, colb = config.aTitleCol1, config.aTitleCol2, config.aTitleTxtCol, config.aBorderCol
  local titleSize, borderSize = config.titleSize, config.borderSize
  local isSegmented = false
  if isSegmented then -- make bars thinner if segmented and the frame shorter
    barH = 13
    h = 103
  end
  local x, y = 20, ScrH() - (h + 20)

  if not LocalPlayer():Alive() then -- change colours while dead
    col1 = config.iTitleCol1
    col2 = config.iTitleCol2
    colt = config.iTitleTxtCol
    colb = config.iBorderCol
  end

  -- draw element
  W98HUD.COMPONENTS:window(title, x, y, w, h, W98HUD.FONTS.TITLE, config.bgCol1, colb, config.borderSize, colt, col1, col2, config.titleSize)
  W98HUD.COMPONENTS:windowControls(x + w - (4 + borderSize), y + (4 + borderSize), config.bgCol1, config.bgCol2, false, false, config.titleSize, W98HUD.FONTS.CAPTION)
  y = y + 41

  -- apply border and title bar sizes
  barW = barW - (borderSize * 2) + 2
  x = x + borderSize - 1
  y = y + math.max(borderSize - 4, 0) + math.max(titleSize - 20, 0)

  -- TODO: abstract bars into a separate function

  -- draw health
  local health = math.max(LocalPlayer():Health(), 0)
  draw.SimpleText(HEALTH, W98HUD.FONTS.PROGRESS, x + 15, y, config.winTxtCol, nil, TEXT_ALIGN_BOTTOM)
  if isSegmented then
    W98HUD.COMPONENTS:segmentBar(x + 13, y + 3, barW, barH, health * .01, config.bgCol1, config.selItemsCol1)
    y = y + 33
  else
    W98HUD.COMPONENTS:progressBar(x + 13, y + 3, barW, barH, health * .01, config.bgCol1, config.selItemsCol1, config.selItemsCol2, false, string.format(FORMAT, health), W98HUD.FONTS.PROGRESS, config.winTxtCol)
    y = y + 38
  end

  -- draw armour
  local armour = LocalPlayer():Armor()
  draw.SimpleText(SUIT, W98HUD.FONTS.PROGRESS, x + 15, y, config.winTxtCol, nil, TEXT_ALIGN_BOTTOM)
  if isSegmented then
    W98HUD.COMPONENTS:segmentBar(x + 13, y + 3, barW, barH, armour * .01, config.bgCol1, config.selItemsCol1, false, false, config.selItemsCol2)
  else
    W98HUD.COMPONENTS:progressBar(x + 13, y + 3, barW, barH, armour * .01, config.bgCol1, config.selItemsCol1, config.selItemsCol2, false, string.format(FORMAT, armour), W98HUD.FONTS.PROGRESS, config.winTxtCol)
  end
end)
