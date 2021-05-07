--[[------------------------------------------------------------------
  Health and armour window
]]--------------------------------------------------------------------

if SERVER then return end

local FORMAT = '%i%%';
local HEALTH, SUIT = 'Health', 'Suit'

--[[------------------------------------------------------------------
  Draws a player status bar
  @param {number} x
  @param {number} y
  @param {number} width
  @param {number} height
  @param {string} label
  @param {number} value
  @param {boolean} whether the bars are segmented
  @param {Color} frame colour
  @param {Color} background colour
  @param {Color} foreground colour
  @param {string} text colour
]]--------------------------------------------------------------------
local function drawBar(x, y, w, h, label, value, isSegmented, frameColour, backgroundColour, foregroundColour, textColour)
  draw.SimpleText(label, W98HUD.FONTS.PROGRESS, x + 2, y, textColour, nil, TEXT_ALIGN_BOTTOM)
  if isSegmented then
    W98HUD.COMPONENTS:segmentBar(x, y + 3, w, h, value * .01, frameColour, foregroundColour)
  else
    W98HUD.COMPONENTS:progressBar(x, y + 3, w, h, value * .01, frameColour, foregroundColour, backgroundColour, false, string.format(FORMAT, value), W98HUD.FONTS.PROGRESS, textColour)
  end
end

-- register element
W98HUD:register(function()
  local config = W98HUD:getUserCfg().parameters
  local w, h = 285, 113
  local barW, barH, margin = w - 26, 17, 38
  local title = LocalPlayer():Name() .. '.' .. W98HUD:GetPlayerConVar()
  local col1, col2, colt, colb = config.aTitleCol1, config.aTitleCol2, config.aTitleTxtCol, config.aBorderCol
  local titleSize, borderSize = config.titleSize, config.borderSize
  local isSegmented = W98HUD:GetHealthConVar()
  if isSegmented then -- make bars thinner if segmented and the frame shorter
    barH = 13
    h = 103
    margin = 33
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

  -- draw health
  drawBar(x + 13, y, barW, barH, HEALTH, math.max(LocalPlayer():Health(), 0), isSegmented, config.bgCol1, config.selItemsCol2, config.selItemsCol1, config.winTxtCol)
  y = y + margin

  -- draw armour
  drawBar(x + 13, y, barW, barH, SUIT, LocalPlayer():Armor(), isSegmented, config.bgCol1, config.selItemsCol2, config.selItemsCol1, config.winTxtCol)

end)
