--[[------------------------------------------------------------------
  Ammunition window
]]--------------------------------------------------------------------

if SERVER then return end

local TITLE, TITLE_WINDOWNAME = 'weapon', 'Weapon'
local ALT, RESERVE, CLIP = 'Alt', 'Reserve', 'Clip'
local ISW_COL1, ISW_COL2 = Color(0, 0, 120), Color(120, 0, 120)

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
local function drawBar(x, y, w, h, label, percentage, value, isSegmented, isValid, frameColour, backgroundColour, colour, textColour)
  draw.SimpleText(label, W98HUD.FONTS.MESSAGE_BOX, x + (w * .5), y, textColour, TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM) -- draw label
  -- if the percentage is invalid, don't draw bar filling and grey out the background
  if not isValid then
    percentage = 0
    backgroundColour = frameColour
  else
    draw.SimpleText(value, W98HUD.FONTS.MESSAGE_BOX, x + (w * .5), y + h + 6, textColour, TEXT_ALIGN_CENTER)
  end
  -- draw bar
  if isSegmented then
    W98HUD.COMPONENTS:segmentBar(x, y + 3, w, h, percentage, frameColour, colour, true, true, backgroundColour)
  else
    W98HUD.COMPONENTS:progressBar(x, y + 3, w, h, percentage, frameColour, colour, backgroundColour, true)
  end
end

-- register element
W98HUD:register(function()
  local mode =  W98HUD:GetAmmoConVar()
  if mode <= 0 then return end
  local config = W98HUD:getUserCfg().parameters
  local w, h = 127, 260
  local barW, barH = 17, h - 66
  local col1, col2, colt, colb = config.aTitleCol1, config.aTitleCol2, config.aTitleTxtCol, config.aBorderCol -- colours
  local borderSize, titleSize = config.aBorderSize, config.titleSize -- surrounding sizes
  local textSize = config.msgSize
  local barBgCol = config.bgCol1

  -- get weapon variables
  local weapon = LocalPlayer():GetActiveWeapon()
  if not IsValid(weapon) then return end -- hide if weapon is invalid
  local primary, secondary = weapon:GetPrimaryAmmoType(), weapon:GetSecondaryAmmoType()
  if primary <= 0 and secondary <= 0 then return end -- hide if weapon does not use ammo
  local clip, reserve, alt = weapon:Clip1(), LocalPlayer():GetAmmoCount(primary), LocalPlayer():GetAmmoCount(secondary)
  local maxClip, maxReserve, maxAlt = weapon:GetMaxClip1(), game.GetAmmoMax(primary), game.GetAmmoMax(secondary)
  local isSegmented = mode >= 3 -- whether the bars are segmented
  local title = TITLE_WINDOWNAME
  local extension = W98HUD:GetWeaponConVar()
  local barCol1, barCol2 = config.selItemsCol1, config.selItemsCol1
  local textHorMargin = math.Round((textSize - 13) * 1.33) -- text horizontal margin

  -- select InstallShield Wizard colours based on mode
  if mode % 2 == 0 then
    barCol1 = ISW_COL1
    barCol2 = ISW_COL2
    barBgCol = config.selItemsCol2
  end

  -- separate title and extension with dot
  if string.len(extension) > 0 then title = TITLE .. '.' .. extension end

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
    borderSize = config.iBorderSize
  end

  -- apply title bar and border size
  w = w + ((borderSize - 1) * 2) + (textHorMargin * 2)
  h = h + (textSize - 13)

  -- get position
  local x, y = ScrW() - w - 20, (ScrH() * .5) - (h * .5)

  -- draw element
  W98HUD.COMPONENTS:window(title, x, y, w, h, W98HUD.FONTS.TITLE, config.bgCol1, colb, borderSize, colt, col1, col2, config.titleSize)
  W98HUD.COMPONENTS:windowControls(x + w - (4 + borderSize), y + (4 + borderSize), config.captionCol, config.btnCol1, config.btnCol2, config.bgCol2, false, false, config.titleSize, W98HUD.FONTS.CAPTION)
  y = y + 41

  -- apply border and title bar sizes
  x = x + (borderSize - 1)
  y = y + (borderSize - 1) + (titleSize - 18) + (textSize - 13)
  barH = barH - ((borderSize * 2) - 2) - (titleSize - 18) - (textSize - 13)

  -- draw alt
  drawBar(x + 13, y, barW, barH, ALT, alt / maxAlt, alt, isSegmented, secondary > 0, config.bgCol1, barBgCol, barCol1, config.msgCol)
  x = x + barW + 24 + textHorMargin

  -- draw reserve
  drawBar(x + 13, y, barW, barH, RESERVE, reserve / maxReserve, reserve, isSegmented, true, config.bgCol1, barBgCol, barCol1, config.msgCol)
  x = x + barW + 24 + textHorMargin

  -- draw clip
  drawBar(x + 13, y, barW, barH, CLIP, clip / maxClip, clip, isSegmented, clip > -1, config.bgCol1, barBgCol, barCol2, config.msgCol)
end)
