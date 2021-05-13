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
  @param {Color} text colour
  @param {Color} text colour 2
]]--------------------------------------------------------------------
local function drawBar(x, y, w, h, label, value, isSegmented, frameColour, backgroundColour, foregroundColour, textColour, textColour2)
  draw.SimpleText(label, W98HUD.FONTS.MESSAGE_BOX, x + 2, y, textColour, nil, TEXT_ALIGN_BOTTOM)
  if isSegmented then
    W98HUD.COMPONENTS:segmentBar(x, y + 3, w, h, value * .01, frameColour, foregroundColour)
  else
    W98HUD.COMPONENTS:progressBar(x, y + 3, w, h, value * .01, frameColour, foregroundColour, backgroundColour, false, string.format(FORMAT, value), W98HUD.FONTS.PROGRESS, textColour, textColour2)
  end
end

-- register element
W98HUD:register(function()
  local mode = W98HUD:GetHealthConVar()
  if mode <= 0 then return end
  local config = W98HUD:getUserCfg().parameters
  local w, h = 285, 113
  local barW, barH, margin = w - 26, 17, 38
  local title = LocalPlayer():Name()
  local extension = W98HUD:GetPlayerConVar()
  local col1, col2, colt, colb = config.aTitleCol1, config.aTitleCol2, config.aTitleTxtCol, config.aBorderCol
  local titleSize, borderSize = config.titleSize, config.aBorderSize
  local bgCol = config.bgCol1
  local isSegmented = mode == 3
  local textSize = config.msgSize - 13
  if string.len(extension) > 0 then title = title .. '.' .. extension end -- separate name and extension with dot
  if mode == 2 then bgCol = config.selItemsCol2 end
  if isSegmented then -- make bars thinner if segmented and the frame shorter
    barH = 13
    h = 103
    margin = 33
  end
  -- apply border and title bar sizes to the window
  h = h + ((borderSize * 2) - 2) + (titleSize - 18) + (textSize * 2)

  -- get position
  local x, y = 20, ScrH() - (h + 20)

  if not LocalPlayer():Alive() then -- change colours while dead
    col1 = config.iTitleCol1
    col2 = config.iTitleCol2
    colt = config.iTitleTxtCol
    colb = config.iBorderCol
    borderSize = config.iBorderSize
  end

  -- draw element
  W98HUD.COMPONENTS:window(title, x, y, w, h, W98HUD.FONTS.TITLE, config.bgCol1, colb, borderSize, colt, col1, col2, config.titleSize, config.bgEdge, config.bgLight, config.bgShadow, config.bgDarkShadow)
  W98HUD.COMPONENTS:windowControls(x + w - (4 + borderSize), y + (4 + borderSize), config.captionCol, config.btnCol1, config.btnCol2, config.btnCol3, config.bgCol2, false, false, config.titleSize, W98HUD.FONTS.CAPTION)
  y = y + 41

  -- apply border and title bar sizes
  barW = barW - (borderSize * 2) + 2
  x = x + borderSize - 1
  y = y + (borderSize - 1) + (titleSize - 18) + textSize

  -- draw health
  drawBar(x + 13, y, barW, barH, HEALTH, math.max(LocalPlayer():Health(), 0), isSegmented, config.bgCol1, bgCol, config.selItemsCol1, config.msgCol, config.selItemsCol2)
  y = y + margin + textSize

  -- draw armour
  drawBar(x + 13, y, barW, barH, SUIT, LocalPlayer():Armor(), isSegmented, config.bgCol1, bgCol, config.selItemsCol1, config.msgCol, config.selItemsCol2)

end)
