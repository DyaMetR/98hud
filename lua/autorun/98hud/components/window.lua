--[[------------------------------------------------------------------
  Basic window component
]]--------------------------------------------------------------------

if SERVER then return end

local WINDOW_BORDER_THICKNESS = 1
local WINDOW_BORDER_TINT_THICKNESS = 1
local WINDOW_OUT_BORDER_COLOUR2 = Color(0, 0, 0) -- outer dark shadow fallback
local TITLE_LABEL_HORIZONTAL_MARGIN = 2 -- horizontal title text inner margin
local TITLE_LABEL_VERTICAL_MARGIN = 5 -- vertical title text inner margin
local WINDOW_TITLE_MARGIN = 1 -- title bar margin from window borders
local GRADIENT = surface.GetTextureID('gui/gradient') -- title bar gradient texture
local WINDOW_CONTROL_W, WINDOW_CONTROL_H = 16, 14 -- window controls buttons' size
local WINDOW_CONTROL_FONT = 'internal_98hud_wcontrol' -- window controls font
local C_CLOSE, C_MAX, C_MIN, C_HELP = 'C', 'B', 'A', '?' -- window control icons
local WINDOW_CONTROL_MARGIN = 2 -- window control buttons margin with title bar
local WINDOW_CONTROL_ICON_MARGIN = 1 -- window control button icon margin

-- control icons font
surface.CreateFont(WINDOW_CONTROL_FONT, {
  font = 'MarlettCustom',
  size = 8,
  antialias = false
})

--[[------------------------------------------------------------------
  Gets the real text height
  @param {string} text
  @param {string} font
  @return
]]--------------------------------------------------------------------
function W98HUD:getTextHeight(text, font)
  surface.SetFont(font)
  local _w, _h = surface.GetTextSize(text)
  return _h
end

--[[------------------------------------------------------------------
  Gets the the
  @param {string} text
  @param {string} font
  @param {number} height
]]--------------------------------------------------------------------
function W98HUD:getTitleBarHeight(text, font, h)
  return math.max(W98HUD:getTextHeight(text, font) + TITLE_LABEL_VERTICAL_MARGIN, h or 0)
end

--[[------------------------------------------------------------------
  Draws an outline
  @param {number} x
  @param {number} y
  @param {number} width
  @param {number} height
  @param {Color} primary colour
  @param {Color} secondary colour
  @param {number} thickness
]]--------------------------------------------------------------------
local function drawOutline(x, y, w, h, col1, col2, thick)
  col2 = col2 or col1
  thick = thick or 1
  draw.RoundedBox(0, x, y, w - thick, thick, col1) -- top
  draw.RoundedBox(0, x, y + thick, thick, h - (thick * 2), col1) -- left
  draw.RoundedBox(0, x + w - thick, y, thick, h - thick, col2) -- right
  draw.RoundedBox(0, x, y + h - thick, w, thick, col2) -- bottom
end

--[[------------------------------------------------------------------
  Draws a title bar
  @param {string} title
  @param {number} x
  @param {number} y
  @param {number} width
  @param {number} height
  @param {string|nil} title font
  @param {Color|nil} title colour
  @param {Color|nil} primary colour
  @param {Color|nil} secondary colour
  @return {number} height
]]--------------------------------------------------------------------
function W98HUD.COMPONENTS:title(label, x, y, w, h, font, textColour, colour1, colour2)
  local margin = TITLE_LABEL_HORIZONTAL_MARGIN
  draw.RoundedBox(0, x, y, w, h, colour1)
  if colour2 then -- draw gradient
    surface.SetTexture(GRADIENT)
    surface.SetDrawColor(colour2)
    surface.DrawTexturedRect(x, y, w, h)
  end
  draw.SimpleText(label, font, x + margin, y + math.floor(h * .5) - 1, textColour, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
  return h
end

--[[------------------------------------------------------------------
  Draws a fake 3D border
  @param {number} x
  @param {number} y
  @param {number} width
  @param {number} height
  @param {Color} outer top colour
  @param {Color} outer bottom colour
  @param {Color} inner top colour
  @param {Color} inner bottom colour
  @return {number} size
]]--------------------------------------------------------------------
function W98HUD.COMPONENTS:border(x, y, w, h, col1, col2, col3, col4)
  local thick = WINDOW_BORDER_THICKNESS
  drawOutline(x, y, w, h, col1, col2, thick)
  drawOutline(x + thick, y + thick, w - (thick * 2), h - (thick * 2), col3, col4, thick)
  return thick * 2 -- size
end

--[[------------------------------------------------------------------
  Draws a fake 3D border with window colour scheme
  @param {number} x
  @param {number} y
  @param {number} width
  @param {number} height
  @param {Color} base colour
  @param {boolean} whether the colours are inverted
  @param {Color|nil} light colour
  @param {Color|nil} shadow colour
  @param {Color|nil} dark shadow colour
]]--------------------------------------------------------------------
function W98HUD.COMPONENTS:windowBorder(x, y, w, h, colour, inverted, edgeColour, lightColour, shadowColour, darkShadowColour)
  edgeColour = edgeColour or W98HUD:CalculateOutCol1(colour)
  lightColour = lightColour or W98HUD:CalculateInCol1(colour)
  shadowColour = shadowColour or W98HUD:CalculateInCol2(colour)
  darkShadowColour = darkShadowColour or WINDOW_OUT_BORDER_COLOUR2
  -- draw border with colours in desired order
  if not inverted then
    return W98HUD.COMPONENTS:border(x, y, w, h, edgeColour, darkShadowColour, lightColour, shadowColour)
  else
    return W98HUD.COMPONENTS:border(x, y, w, h, shadowColour, lightColour, darkShadowColour, edgeColour)
  end
end

--[[------------------------------------------------------------------
  Draws a single outline fake 3D border with window colour scheme
  @param {number} x
  @param {number} y
  @param {number} width
  @param {number} height
  @param {Color} colour
  @param {boolean} whether the colours are inverted
  @param {Color|nil} light colour
  @param {Color|nil} shadow colour
]]--------------------------------------------------------------------
function W98HUD.COMPONENTS:simpleBorder(x, y, w, h, colour, inverted, lightColour, shadowColour)
  lightColour = lightColour or W98HUD:CalculateInCol1(colour)
  shadowColour = shadowColour or W98HUD:CalculateInCol2(colour)
  local thick = WINDOW_BORDER_THICKNESS
  -- draw border with colours in desired order
  if not inverted then
    drawOutline(x, y, w, h, lightColour, shadowColour, thick)
  else
    drawOutline(x, y, w, h, shadowColour, lightColour, thick)
  end
  return thick
end

--[[------------------------------------------------------------------
  Draws a simple separator
  @param {number} x
  @param {number} y
  @param {number} size
  @param {Color} colour
  @param {boolean} vertical
  @param {Color|nil} light colour
  @param {Color|nil} shadow colour
]]--------------------------------------------------------------------
function W98HUD.COMPONENTS:separator(x, y, size, colour, vertical, lightColour, shadowColour)
  lightColour = lightColour or W98HUD:CalculateInCol1(colour)
  shadowColour = shadowColour or W98HUD:CalculateInCol2(colour)
  -- draw
  if vertical then
    draw.RoundedBox(0, x, y, 1, size, shadowColour)
    draw.RoundedBox(0, x + 1, y, 1, size, lightColour)
  else
    draw.RoundedBox(0, x, y, size, 1, shadowColour)
    draw.RoundedBox(0, x, y + 1, size, 1, lightColour)
  end
end

--[[------------------------------------------------------------------
  Draws a window control button
  @param {number} x
  @param {number} y
  @param {string} text
  @param {Color} colour
  @param {Color|nil} light colour
  @param {Color|nil} shadow colour
  @param {Color|nil} dark shadow colour
  @param {Color|nil} icon colour
  @param {number|nil} title bar size
  @param {string|nil} font for icons
]]--------------------------------------------------------------------
local function windowControl(x, y, text, colour, lightColour, shadowColour, darkShadowColour, iconColour, size, font)
  size = size or WINDOW_CONTROL_W
  font = font or WINDOW_CONTROL_FONT
  local w, h = size - WINDOW_CONTROL_MARGIN, size - (WINDOW_CONTROL_MARGIN + (WINDOW_CONTROL_W - WINDOW_CONTROL_H))
  local margin = WINDOW_CONTROL_ICON_MARGIN
  local thick = WINDOW_BORDER_THICKNESS
  x = x - w -- aligned to the right
  draw.RoundedBox(0, x, y, w, h, colour) -- background
  drawOutline(x, y, w, h, lightColour, darkShadowColour, thick) -- exterior outline
  -- do inner shadow
  draw.RoundedBox(0, x + w - (thick * 2), y + thick, thick, h - (thick * 2), shadowColour)
  draw.RoundedBox(0, x + thick, y + h - (thick * 2), w - (thick * 3), thick, shadowColour)
  draw.SimpleText(text, font, x + math.Round(w * .5) - margin, math.Round(y + (h * .5)), iconColour, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) -- icon
  return w, h
end

--[[------------------------------------------------------------------
  Draws the title bar controls for a window
  @param {number} x
  @param {number} y
  @param {Color} colour
  @param {Color} light colour
  @param {Color} shadow colour
  @param {Color} dark shadow colour
  @param {Color} icon colour
  @param {boolean|nil} window minimization controls
  @param {boolean|nil} help
  @param {number|nil} title bar size
  @param {string|nil} icon font
]]--------------------------------------------------------------------
function W98HUD.COMPONENTS:windowControls(x, y, colour, lightColour, shadowColour, darkShadowColour, iconColour, minimize, help, size, font)
  lightColour = lightColour or W98HUD:CalculateInCol1(colour)
  shadowColour = shadowColour or W98HUD:CalculateInCol2(colour)
  darkShadowColour = darkShadowColour or WINDOW_OUT_BORDER_COLOUR2
  local margin = WINDOW_CONTROL_MARGIN
  -- close button
  local w = windowControl(x, y, C_CLOSE, colour, lightColour, shadowColour, darkShadowColour, iconColour, size, font)
  if minimize then
    x = x - w - margin
    -- maximize button
    w = windowControl(x, y, C_MAX, colour, lightColour, shadowColour, darkShadowColour, iconColour, size, font)
    x = x - w
    -- minimize button
    w = windowControl(x, y, C_MIN, colour, lightColour, shadowColour, darkShadowColour, iconColour, size, font)
  end
  if help then
    x = x - w - margin
    w = windowControl(x, y, C_HELP, colour, lightColour, shadowColour, darkShadowColour, iconColour, size, font)
  end
end

--[[------------------------------------------------------------------
  Draws an empty window with a title bar
  @param {string} title
  @param {number} x
  @param {number} y
  @param {number} width
  @param {number} height
  @param {string|nil} font
  @param {Color|nil} background colour
  @param {Color|nil} border colour
  @param {number|nil} title bar height
  @param {Color|nil} title colour
  @param {Color|nil} title bar primary colour
  @param {Color|nil} title bar secondary colour
  @param {Color|nil} edge colour
  @param {Color|nil} light colour
  @param {Color|nil} shadow colour
  @param {Color|nil} dark shadow colour
  @return {number} title bar height + margin
  @return {number} frame size
]]--------------------------------------------------------------------
function W98HUD.COMPONENTS:emptyWindow(label, x, y, w, h, font, colour, borderTint, borderSize, titleColour, titleColour1, titleColour2, titleHeight, edgeColour, lightColour, shadowColour, darkShadowColour)
  titleHeight = W98HUD:getTitleBarHeight(label, font, titleHeight or 0) -- get actual height
  local margin = WINDOW_TITLE_MARGIN
  local frame = W98HUD.COMPONENTS:windowBorder(x, y, w, h, colour, false, edgeColour, lightColour, shadowColour, darkShadowColour) -- window frame
  if borderTint then -- draw border
    drawOutline(x + frame, y + frame, w - (frame * 2), h - (frame * 2), borderTint, borderTint, borderSize)
    frame = frame + borderSize
  end
  draw.RoundedBox(0, x + frame, y + frame, w - (frame * 2), titleHeight + (margin * 2), colour) -- header
  W98HUD.COMPONENTS:title(label, x + frame, y + frame, w - (frame * 2), titleHeight, font, titleColour, titleColour1, titleColour2) -- title bar
  return titleHeight, frame
end

--[[------------------------------------------------------------------
  Draws window
  @param {string} title
  @param {number} x
  @param {number} y
  @param {number} width
  @param {number} height
  @param {string|nil} font
  @param {Color|nil} background colour
  @param {Color|nil} border colour
  @param {number|nil} border size
  @param {Color|nil} title colour
  @param {Color|nil} title bar primary colour
  @param {Color|nil} title bar secondary colour
  @param {number|nil} title bar height
  @param {Color|nil} edge colour
  @param {Color|nil} light colour
  @param {Color|nil} shadow colour
  @param {Color|nil} dark shadow colour
]]--------------------------------------------------------------------
function W98HUD.COMPONENTS:window(label, x, y, w, h, font, colour, borderTint, borderSize, titleColour, titleColour1, titleColour2, titleHeight, edgeColour, lightColour, shadowColour, darkShadowColour)
  local margin, frame = W98HUD.COMPONENTS:emptyWindow(label, x, y, w, h, font, colour, borderTint, borderSize, titleColour, titleColour1, titleColour2, titleHeight, edgeColour, lightColour, shadowColour, darkShadowColour)
  draw.RoundedBox(0, x + frame, y + frame + margin, w - (frame * 2), h - ((frame * 2) + margin), colour) -- draw filling
end
