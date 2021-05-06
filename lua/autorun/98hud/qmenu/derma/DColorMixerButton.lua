--[[------------------------------------------------------------------
  Button that prompts a colour mixer (and holds its value)
]]--------------------------------------------------------------------

if SERVER then return end

local HORIZONTAL_MARGIN, VERTICAL_MARGIN = 5, 4
local OUTLINE, OUTLINE_COLOUR = 1, Color(0, 0, 0)
local DISABLED, DISABLED_OUTLINE = Color(188, 188, 188), Color(100, 100, 100)
local MIXER_MARGIN = 5

local PANEL = {}

-- override
function PANEL:Init()
  self.Value = Color(255, 255, 255) -- default value
  self.ColorMixerWide = 200 -- colour picker default width
  self.ColorMixerTall = 200 -- colour picker default height
  self:SetText('') -- no text
end

--[[------------------------------------------------------------------
  Paints the colour rectangle indicating the current value
]]--------------------------------------------------------------------
function PANEL:PaintOver()
  local x, y, w, h = HORIZONTAL_MARGIN, VERTICAL_MARGIN, self:GetWide() - (HORIZONTAL_MARGIN * 2), self:GetTall() - (VERTICAL_MARGIN * 2)
  local col, out = self.Value, OUTLINE_COLOUR
  if not self:IsEnabled() then -- paint it grey if disabled
    col = DISABLED
    out = DISABLED_OUTLINE
  end
  draw.RoundedBox(0, x, y, w, h, out)
  draw.RoundedBox(0, x + OUTLINE, y + OUTLINE, w - (OUTLINE * 2), h - (OUTLINE * 2), col)
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

--[[------------------------------------------------------------------
  Creates the colour picker
]]--------------------------------------------------------------------
function PANEL:CreateColorMixer()
  -- get absolute position
  local frame = self
  local x, y = self.x, self.y
  while frame:GetParent() do
    frame = frame:GetParent()
    x = x + frame.x
    y = y + frame.y
  end

  -- create colour mixer
  self.ColorMixer = vgui.Create('DFrame')
  self.ColorMixer:SetPos(x, y + self:GetTall()) -- absolute screen position
  self.ColorMixer:SetSize(self.ColorMixerWide, self.ColorMixerTall)
  self.ColorMixer:ShowCloseButton(false)
  self.ColorMixer:SetTitle('')
  self.ColorMixer:MakePopup()
  self.ColorMixer.OnSizeChanged = function(_self, w, h) _self.Control:SetSize(w - (MIXER_MARGIN * 2), h - (MIXER_MARGIN * 2)) end
  self.ColorMixer.OnFocusChanged = function(_self, gained) if not gained then self:DestroyColorMixer() end end
  self.ColorMixer.Control = vgui.Create('DColorMixer', self.ColorMixer)
  self.ColorMixer.Control:SetPos(MIXER_MARGIN, MIXER_MARGIN)
  self.ColorMixer.Control:SetSize(self.ColorMixer:GetWide() - (MIXER_MARGIN * 2), self.ColorMixer:GetTall() - (MIXER_MARGIN * 2))
  self.ColorMixer.Control:SetAlphaBar(false)
  self.ColorMixer.Control:SetColor(self.Value)
  self.ColorMixer.Control.ValueChanged = function(_self, value) self:SetValue(value) end
end

--[[------------------------------------------------------------------
  Gets the colour picker panel (if active)
  @return {DColorMixer|nil} colour picker
]]--------------------------------------------------------------------
function PANEL:GetColorMixer()
  return self.ColorMixer
end

--[[------------------------------------------------------------------
  Sets the colour picker width
  @param {number} width
]]--------------------------------------------------------------------
function PANEL:SetColorMixerWide(w)
  self.ColorMixerWide = w
  if not self.ColorMixer then return end
  self.ColorMixer:SetWide(w)
end

--[[------------------------------------------------------------------
  Sets the colour picker height
  @param {number} height
]]--------------------------------------------------------------------
function PANEL:SetColorMixerHeight(h)
  self.ColorMixerTall = h
  if not self.ColorMixer then return end
  self.ColorMixer:SetTall(h)
end

--[[------------------------------------------------------------------
  Sets the colour picker size
  @param {number} width
  @param {number} height
]]--------------------------------------------------------------------
function PANEL:SetColorMixerSize(w, h)
  self:SetColorMixerWide(w)
  self:SetColorMixerTall(h)
end

--[[------------------------------------------------------------------
  Removes the colour mixer (if present)
]]--------------------------------------------------------------------
function PANEL:DestroyColorMixer()
  if not self.ColorMixer then return end
  self.ColorMixer:Remove()
  self.ColorMixer = nil
end

--[[------------------------------------------------------------------
  Removes the colour mixer upon deletion
]]--------------------------------------------------------------------
function PANEL:OnRemove()
  self:DestroyColorMixer()
end

--[[------------------------------------------------------------------
  Toggles the colour picker upon clicking it
]]--------------------------------------------------------------------
function PANEL:DoClick()
  if self.ColorMixer then
    self:DestroyColorMixer()
  else
    self:CreateColorMixer()
  end
end

vgui.Register( 'DColorMixerButton', PANEL, 'DButton' )
