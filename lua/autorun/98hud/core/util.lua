--[[------------------------------------------------------------------
  Utility functions
]]--------------------------------------------------------------------

if SERVER then return end

local WINDOW_OUT_BORDER_COLOUR1 = 1.17 -- multiplier
local WINDOW_IN_BORDER_COLOUR1 = Color(133, 137, 141) -- colour values to add
local WINDOW_IN_BORDER_COLOUR2 = 0.69 -- multiplier

local outCol1 = Color(0, 0, 0) -- outer border primary colour cache
local inCol1 = Color(0, 0, 0) -- inner border primary colour
local inCol2 = Color(0, 0, 0) -- innter border secondary colour

--[[------------------------------------------------------------------
  Sets the values of the given colour object
  @param {Color} colour object
  @param {number} red
  @param {number} green
  @param {number} blue
]]--------------------------------------------------------------------
local function setColour(colObj, r, g, b)
  colObj.r = r
  colObj.g = g
  colObj.b = b
  return colObj
end

--[[------------------------------------------------------------------
  Calculates and returns the outside outline colour for the given base
  colour
  @param {Color} colour
  @return {Color} outCol
]]--------------------------------------------------------------------
function W98HUD:CalculateOutCol1(colour)
  return setColour(outCol1, colour.r * WINDOW_OUT_BORDER_COLOUR1, colour.g * WINDOW_OUT_BORDER_COLOUR1, colour.b * WINDOW_OUT_BORDER_COLOUR1)
end

--[[------------------------------------------------------------------
  Calculates and returns the inside outline colour for the given base
  colour
  @param {Color} colour
  @return {Color} inCol1
]]--------------------------------------------------------------------
function W98HUD:CalculateInCol1(colour)
  return setColour(inCol1, colour.r + WINDOW_IN_BORDER_COLOUR1.r, colour.g + WINDOW_IN_BORDER_COLOUR1.g, colour.b + WINDOW_IN_BORDER_COLOUR1.b)
end

--[[------------------------------------------------------------------
  Calculates and returns the inside dark outline colour for the given
  base colour
  @param {Color} colour
  @return {Color} inCol2
]]--------------------------------------------------------------------
function W98HUD:CalculateInCol2(colour)
  return setColour(inCol2, colour.r * WINDOW_IN_BORDER_COLOUR2, colour.g * WINDOW_IN_BORDER_COLOUR2, colour.b * WINDOW_IN_BORDER_COLOUR2)
end
