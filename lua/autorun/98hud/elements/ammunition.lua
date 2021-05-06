--[[------------------------------------------------------------------
  Ammunition window
]]--------------------------------------------------------------------

if SERVER then return end

local TITLE = 'weapon.dll'

--[[------------------------------------------------------------------
  Draws an ammunition bar
  @param {number} x
  @param {number} y
  @param {number} width
  @param {number} height
  @param {string} label
  @param {number} bar fill percentage
  @param {number} numeric value shown below
  @param {boolean} whether the bar is segmented
  @param {boolean} whether the bar has a valid value
  @param {Color} bar fill colour
  @param {Color} bar frame colour
  @param {Color} background colour
  @param {Color} text colour
]]--------------------------------------------------------------------
local function drawBar(x, y, w, h, label, percentage, value, isSegmented, isValid, colour, frameColour, backgroundColour, textColour)
  colour = colour or
  draw.SimpleText(label, W98HUD.FONTS.PROGRESS, x + (w * .5), y, textColour, TEXT_ALIGN_CENTER) -- draw label
  -- if the percentage is invalid, don't draw bar filling and grey out the background
  if not isValid then
    percentage = 0
    backgroundColour = frameColour
  else
    draw.SimpleText(value, W98HUD.FONTS.PROGRESS, x + (w * .5), y + h + 19, textColour, TEXT_ALIGN_CENTER)
  end
  -- draw bar
  if isSegmented then
    W98HUD.COMPONENTS:segmentBar(x, y + 3, w, h, percentage, frameColour, backgroundColour, true, true, colour)
  else
    W98HUD.COMPONENTS:progressBar(x, y + 3, w, h, percentage, frameColour, backgroundColour, colour, true)
  end
end

-- register element
W98HUD:register(function()
  local config = W98HUD:getUserCfg().parameters
  local w, h = 127, 260 -- 113
  local x, y = ScrW() - w - 20, (ScrH() * .5) - (h * .5)
  local barW, barH = 17, h - 66 -- 56
  local col1, col2, colt, colb = config.aTitleCol1, config.aTitleCol2, config.aTitleTxtCol, config.aBorderCol
  local borderSize, titleSize = config.borderSize, config.titleSize

  -- get weapon variables
  local weapon = LocalPlayer():GetActiveWeapon()
  if not IsValid(weapon) then return end -- hide if weapon is invalid
  local primary, secondary = weapon:GetPrimaryAmmoType(), weapon:GetSecondaryAmmoType()
  if primary <= 0 and secondary <= 0 then return end -- hide if weapon does not use ammo
  local clip, reserve, alt = weapon:Clip1(), LocalPlayer():GetAmmoCount(primary), LocalPlayer():GetAmmoCount(secondary)
  local maxClip, maxReserve, maxAlt = weapon:GetMaxClip1(), game.GetAmmoMax(primary), game.GetAmmoMax(secondary)
  local isSegmented = false -- whether the bars are segmented

  -- use alt as reserve if the weapon only uses alt ammunition
  if primary <= 0 then
    reserve = alt
    maxReserve = maxAlt
    secondary = 0
    maxAlt = 0
    clip = -1
    maxClip = -1
  end

  -- change colours while out of ammo
  if reserve <= 0 and clip <= 0 and alt <= 0 then
    col1 = config.iTitleCol1
    col2 = config.iTitleCol2
    colt = config.iTitleTxtCol
    colb = config.iBorderCol
  end

  -- draw element
  W98HUD.COMPONENTS:window(TITLE, x, y, w, h, W98HUD.FONTS.TITLE, config.bgCol1, colb, config.borderSize, colt, col1, col2, config.titleSize)
  W98HUD.COMPONENTS:windowControls(x + w - (4 + borderSize), y + (4 + borderSize), config.bgCol1, config.bgCol2, false, false, config.titleSize, W98HUD.FONTS.CAPTION)
  y = y + 28

  -- apply border and title bar sizes
  y = y + math.max(borderSize - 6, 0) + math.max(titleSize - 20, 0)
  barH = barH - math.max((borderSize * 2) - 12, 0) - math.max(titleSize - 20, 0)

  -- TODO: abstract bars into a separate function

  -- draw alt
  drawBar(x + 13, y + 16, barW, barH, 'Alt', alt / maxAlt, alt, isSegmented, secondary > 0, config.selItemsCol1, config.bgCol1, config.selItemsCol2, config.winTxtCol)
  x = x + barW + 24
  --[[local altCol = config.selItemsCol2
  local altBar = alt / maxAlt
  if secondary <= 0 then -- disable alt ammo counter
    altBar = 0
    altCol = config.bgCol1
  else -- display alt ammo counter if there's a valid ammo type
    draw.SimpleText(alt, W98HUD.FONTS.PROGRESS, x + 13 + (barW * .5), y + barH + 19, config.winTxtCol, TEXT_ALIGN_CENTER)
  end
  draw.SimpleText('Alt', W98HUD.FONTS.PROGRESS, x + 13 + (barW * .5), y, config.winTxtCol, TEXT_ALIGN_CENTER)
  if isSegmented then -- draw bar
    W98HUD.COMPONENTS:segmentBar(x + 13, y + 16, barW, barH, altBar, config.bgCol1, config.selItemsCol1, true, true, altCol)
  else
    W98HUD.COMPONENTS:progressBar(x + 13, y + 16, barW, barH, altBar, config.bgCol1, config.selItemsCol1, altCol, true)
  end
  W98HUD.COMPONENTS:separator(x + barW + 24, y + 16, barH, config.bgCol1, true)]]

  -- draw reserve
  --[[draw.SimpleText('Reserve', W98HUD.FONTS.PROGRESS, x + 13 + (barW * .5), y, config.winTxtCol, TEXT_ALIGN_CENTER, TEXT_ALIGN)
  if isSegmented then -- draw bar
    W98HUD.COMPONENTS:segmentBar(x + 13, y + 16, barW, barH, reserve / maxReserve, config.bgCol1, config.selItemsCol1, true, true, config.selItemsCol2)
  else
    W98HUD.COMPONENTS:progressBar(x + 13, y + 16, barW, barH, reserve / maxReserve, config.bgCol1, config.selItemsCol1, config.selItemsCol2, true)
  end
  draw.SimpleText(reserve, W98HUD.FONTS.PROGRESS, x + 13 + (barW * .5), y + barH + 19, config.winTxtCol, TEXT_ALIGN_CENTER)
  W98HUD.COMPONENTS:separator(x + barW + 24, y + 16, barH, config.bgCol1, true)]]
  drawBar(x + 13, y + 16, barW, barH, 'Reserve', reserve / maxReserve, reserve, isSegmented, true, config.selItemsCol1, config.bgCol1, config.selItemsCol2, config.winTxtCol)
  x = x + barW + 24

  -- draw clip
  drawBar(x + 13, y + 16, barW, barH, 'Clip', clip / maxClip, clip, isSegmeted, clip > -1, Color(120, 0, 120), config.bgCol1, config.selItemsCol2, config.winTxtCol)
  --[[local clipCol = config.selItemsCol2
  local clipBar = clip / maxClip
  if clip <= -1 then -- disable clip counter
    clipBar = 0
    clipCol = config.bgCol1
  else -- display clip counter if it uses clips
    draw.SimpleText(clip, W98HUD.FONTS.PROGRESS, x + 13 + (barW * .5), y + barH + 19, config.winTxtCol, TEXT_ALIGN_CENTER)
  end
  draw.SimpleText('Clip', W98HUD.FONTS.PROGRESS, x + 13 + (barW * .5), y, config.winTxtCol, TEXT_ALIGN_CENTER)
  if isSegmented then  -- draw bar
    W98HUD.COMPONENTS:segmentBar(x + 13, y + 16, barW, barH, clipBar, config.bgCol1, Color(120, 0, 120), true, true, clipCol)
  else
    W98HUD.COMPONENTS:progressBar(x + 13, y + 16, barW, barH, clipBar, config.bgCol1, Color(120, 0, 120), clipCol, true)
  end]]
end)
