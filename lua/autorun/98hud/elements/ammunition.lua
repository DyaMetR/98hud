--[[------------------------------------------------------------------
  Ammunition window
]]--------------------------------------------------------------------

if SERVER then return end

local TITLE, TITLE_WINDOWNAME = 'weapon', 'Weapon'
local ALT, RESERVE, CLIP = 'Alt', 'Reserve', 'Clip'
local ISW_COL1, ISW_COL2, ISW_COL3 = Color(0, 0, 120), Color(120, 0, 120), Color(255, 255, 255)

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
  @param {Color} edge colour
  @param {Color} light edge colour
  @param {Color} shadow colour
  @param {Color} dark shadow colour
]]--------------------------------------------------------------------
local function drawBar(x, y, w, h, label, percentage, value, isSegmented, isValid, frameColour, backgroundColour, colour, textColour, edgeColour, lightColour, shadowColour, darkShadowColour)
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
    W98HUD.COMPONENTS:segmentBar(x, y + 3, w, h, percentage, frameColour, colour, true, true, backgroundColour, edgeColour, lightColour, shadowColour, darkShadowColour)
  else
    W98HUD.COMPONENTS:progressBar(x, y + 3, w, h, percentage, frameColour, colour, backgroundColour, true, nil, nil, nil, nil, edgeColour, lightColour, shadowColour, darkShadowColour)
  end
end

-- register element
W98HUD:register(function()
  local mode =  W98HUD:GetAmmoConVar()
  if mode <= 0 then return end
  local config = W98HUD:getUserCfg().parameters
  local w, h = 127, 260
  local barW, barH = 17, h - 66
  local margin, spacing = 13, 24
  local col1, col2, colt, colb = config.aTitleCol1, config.aTitleCol2, config.aTitleTxtCol, config.aBorderCol -- colours
  local borderSize, titleSize = config.aBorderSize, config.titleSize -- surrounding sizes
  local textSize = config.msgSize
  local barBgCol = config.bgCol1

  -- get weapon variables
  local weapon = LocalPlayer():GetActiveWeapon()
  if not IsValid(weapon) then return end -- hide if weapon is invalid
	local isValid, primary, secondary, clip, reserve, alt = W98HUD:ammo(weapon)
  if not isValid then return end -- hide if the ammunition is not valid
  local maxClip, maxReserve, maxAlt = weapon:GetMaxClip1(), game.GetAmmoMax(primary), game.GetAmmoMax(secondary)
  local isSegmented = mode >= 3 -- whether the bars are segmented
  local title = TITLE_WINDOWNAME
  local extension = W98HUD:GetWeaponConVar()
  local barCol1, barCol2 = config.selItemsCol1, config.selItemsCol1

  -- take text size in account
  surface.SetFont(W98HUD.FONTS.MESSAGE_BOX)
  local textWidth = math.max(surface.GetTextSize(ALT) + surface.GetTextSize(RESERVE) + surface.GetTextSize(CLIP) - (spacing * 2) - (barW * 3), 0)
  local extraSpace, extraMargin = math.ceil(textWidth * .5), math.ceil(textWidth * .25)
  w = w + textWidth + (extraMargin * 2)
  spacing = spacing + extraSpace
  margin = margin + extraMargin

  -- select InstallShield Wizard colours based on mode
  if mode % 2 == 0 then
    barCol1 = ISW_COL1
    barCol2 = ISW_COL2
    barBgCol = ISW_COL3
  end

  -- separate title and extension with dot
  if string.len(extension) > 0 then title = TITLE .. '.' .. extension end

  -- change colours while out of ammo
  if reserve <= 0 and clip <= 0 and alt <= 0 then
    col1 = config.iTitleCol1
    col2 = config.iTitleCol2
    colt = config.iTitleTxtCol
    colb = config.iBorderCol
    borderSize = config.iBorderSize
  end

  -- apply title bar and border size
  w = w + ((borderSize - 1) * 2)
  h = h + (textSize - 13)

  -- get position
  local x, y = ScrW() - w - 20, (ScrH() * .5) - (h * .5)

  -- draw element
  W98HUD.COMPONENTS:window(title, x, y, w, h, W98HUD.FONTS.TITLE, config.bgCol1, colb, borderSize, colt, col1, col2, config.titleSize, config.bgEdge, config.bgLight, config.bgShadow, config.bgDarkShadow)
  W98HUD.COMPONENTS:windowControls(x + w - (4 + borderSize), y + (4 + borderSize), config.bgCol1, config.bgLight, config.bgShadow, config.bgDarkShadow, config.bgCol2, false, false, config.titleSize, W98HUD.FONTS.CAPTION)
  y = y + 41 -- bars vertical margin
  x = x + margin -- bars horizontal margin

  -- apply border and title bar sizes
  x = x + (borderSize - 1)
  y = y + (borderSize - 1) + (titleSize - 18) + (textSize - 13)
  barH = barH - ((borderSize * 2) - 2) - (titleSize - 18) - (textSize - 13)

  -- draw alt
  drawBar(x, y, barW, barH, ALT, alt / maxAlt, alt, isSegmented, secondary > 0, config.bgCol1, barBgCol, barCol1, config.msgCol, config.bgEdge, config.bgLight, config.bgShadow, config.bgDarkShadow)
  W98HUD.COMPONENTS:separator(x + barW + math.floor(spacing * .5), y + 3, barH, config.bgCol1, true, config.bgLight, config.bgShadow)
  x = x + barW + spacing

  -- draw reserve
  drawBar(x, y, barW, barH, RESERVE, reserve / maxReserve, reserve, isSegmented, true, config.bgCol1, barBgCol, barCol1, config.msgCol, config.bgEdge, config.bgLight, config.bgShadow, config.bgDarkShadow)
  W98HUD.COMPONENTS:separator(x + barW + math.floor(spacing * .5), y + 3, barH, config.bgCol1, true, config.bgLight, config.bgShadow)
  x = x + barW + spacing

  -- draw clip
  drawBar(x, y, barW, barH, CLIP, clip / maxClip, clip, isSegmented, clip > -1, config.bgCol1, barBgCol, barCol2, config.msgCol, config.bgEdge, config.bgLight, config.bgShadow, config.bgDarkShadow)
end)
