--[[------------------------------------------------------------------
  Control with a label on top of it
]]--------------------------------------------------------------------

if SERVER then return end

local HEIGHT, MARGIN = 20, 17

local PANEL = {}

-- override
function PANEL:Init()
  self.Label = vgui.Create('DLabel', self)
  self:SetTall(self.Label:GetTall() + HEIGHT + MARGIN)
end

--[[------------------------------------------------------------------
  Changes the label text and resizes it
  @param {string} label
]]--------------------------------------------------------------------
function PANEL:SetLabel(label)
  self.Label:SetText(label)
  self.Label:SizeToContents()
  if self.Control or self:GetWide() >= self.Label:GetWide() then return end
  self:SetWide(self.Label:GetWide())
end

--[[------------------------------------------------------------------
  Gets the current child control
  @param {Panel} child panel
]]--------------------------------------------------------------------
function PANEL:GetControl()
  return self.Control
end

--[[------------------------------------------------------------------
  Sets the given control as the panel's child
  @param {Panel} control
]]--------------------------------------------------------------------
function PANEL:SetControl(control)
  self.Control = control
  control:SetParent(self)
  control:SetSize(self:GetWide(), HEIGHT)
  control:SetPos(0, MARGIN)
end

--[[------------------------------------------------------------------
  Creates a child control from the given class
  @param {string} class
]]--------------------------------------------------------------------
function PANEL:CreateControl(class)
  self:SetControl(vgui.Create(class))
end

--[[------------------------------------------------------------------
  Called when the size changes
  @param {number} width
]]--------------------------------------------------------------------
function PANEL:OnSizeChanged(w, h)
  if not self.Control then return end
  self.Control:SetWide(w)
end

--[[------------------------------------------------------------------
  Toggles the control usability
  @param {boolean} enabled
]]--------------------------------------------------------------------
function PANEL:SetEnabled(enabled)
  if not self.Control then return end
  self.Control:SetEnabled(enabled)
end

vgui.Register( 'DLabeledControl', PANEL, 'Panel' )
