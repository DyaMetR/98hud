--[[------------------------------------------------------------------
  Control with a label on top of it
]]--------------------------------------------------------------------

if SERVER then return end

local HEIGHT, MARGIN = 20, 17

local PANEL = {}

-- override
function PANEL:Init()
  self.Label = vgui.Create('DLabel', self)
end

--[[------------------------------------------------------------------
  Changes the label text and resizes it
  @param {string} label
]]--------------------------------------------------------------------
function PANEL:SetLabel(label)
  self.Label:SetText(label)
  self.Label:SizeToContents()
  if self.Control then return end
  self:SetSize(self.Label:GetWide(), self.Label:GetTall())
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
  control:SetParent(self)
  control:SetSize(self.Wide, HEIGHT)
  control:SetPos(0, MARGIN)
  self:SetTall(self.Label:GetTall() + self.Control:GetTall())
end

--[[------------------------------------------------------------------
  Creates a child control from the given class
  @param {string} class
]]--------------------------------------------------------------------
function PANEL:CreateControl(class)
  self:SetControl(vgui.Create(class))
end

--[[------------------------------------------------------------------
  Changes the child's control width
  @param {number} width
]]--------------------------------------------------------------------
function PANEL:SetWide(width)
  self.Control:SetWide(width)
  self.Wide = math.max(width, self.Label:GetWide())
end

vgui.Register( 'DLabeledControl', PANEL, 'Panel' )
