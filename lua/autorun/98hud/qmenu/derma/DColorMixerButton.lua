--[[------------------------------------------------------------------
  Button that prompts a colour mixer (and holds its value)
]]--------------------------------------------------------------------

local PANEL = {}

-- override
function PANEL:Init()
  self.Value = Color(255, 255, 255) -- default value
end

--[[------------------------------------------------------------------
  Called when the value changes
  @param {Color} new colour
]]--------------------------------------------------------------------
function PANEL:OnValueChanged(color) end

--[[------------------------------------------------------------------
  Sets the value of the colour its holding and calls OnValueChanged
  @param {Color} colour
]]--------------------------------------------------------------------
function PANEL:SetValue(color)
  self.Value = color
  self:OnValueChanged(color)
end

--[[------------------------------------------------------------------
  Returns the colour its holding
  @return {Color} colour
]]--------------------------------------------------------------------
function PANEL:GetValue()
  return self.Value
end

-- TODO: color picker

vgui.Register( 'DColorMixerButton', PANEL, 'DButton' )
