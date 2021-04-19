--[[------------------------------------------------------------------
  Theme menu
]]--------------------------------------------------------------------

W98HUD:include('derma/DColorMixerButton.lua')
W98HUD:include('derma/DLabeledControl.lua')

if SERVER then return end

local W, H = 404, 448 -- Windows 98 default resolution
local TITLE = 'Display Properties'
local SCHEME, ITEM, FONT, SIZE, COLOUR, COLOUR2 = 'Scheme', 'Item', 'Font', 'Size', 'Color', 'Color 2'
local APPLY, CANCEL, OK = 'Apply', 'Cancel', 'OK'
local APPEARANCE, SOUNDS = 'Appearance', 'Sounds'
local SAVE_AS, DELETE = 'Save As...', 'Delete'
local DEFAULT_COLOUR = Color(167, 171, 174)
local BLACK = Color(0, 0, 0)
local INACTIVE_WINDOW, ACTIVE_WINDOW = 'Inactive Window', 'Active Window'
local CAPTION_ITEMS = {
  ititle = true,
  atitle = true,
  caption = true
}

-- fonts
surface.CreateFont('98hud_settings_1', {
  font = 'pix MS Sans Serif 8pt',
  size = 13,
  weight = 1000,
  antialias = false
})

local cache = {} -- menu theme cache

--[[------------------------------------------------------------------
  Updates the captions font with the new size
  @param {number|nil} size
]]--------------------------------------------------------------------
local function updateCaptionFont(size)
  size = size or 8
  surface.CreateFont('98hud_settings_2', {
    font = 'MarlettCustom',
    size = size * .5,
    antialias = false
  })
end

--[[------------------------------------------------------------------
  Creates a control with a label
  @param {string} label
  @param {string} panel class
  @param {number} x
  @param {number} y
  @param {number} width
  @return {DLabel} label
  @return {any} control
]]--------------------------------------------------------------------
local function labeledControl(parent, _label, _control, x, y, w)
  -- label
  local label = vgui.Create('DLabel', parent)
  label:SetPos(x, y)
  label:SetText(_label)
  label:SizeToContents()
  -- control
  local control
  if type(_control) == 'string' then
    control = vgui.Create(_control, parent)
    control:SetPos(x, y + 17)
    control:SetSize(w, 20)
  else
    control = _control
    control:SetPos(x, y + 17)
    control:SetSize(w, 20)
  end

  return label, control
end

--[[------------------------------------------------------------------
  Creates a button and returns it
  @param {number} x
  @param {number} y
  @param {number} width
  @param {number} height
  @param {string} label
  @return {DLabel} label
]]--------------------------------------------------------------------
local function button(parent, x, y, w, h, label)
  local button = vgui.Create('DButton', parent)
  button:SetSize(w, h)
  button:SetPos(x, y)
  button:SetText(label)
  return button
end

--[[------------------------------------------------------------------
  Creates a button with a colour square, which upon pressing
  creates a colour picker to change its colour value
  @param {number} x
  @param {number} y
  @param {number} width
  @param {number} height
  @param {Color} default colour
  @return {DButton} control
]]--------------------------------------------------------------------
local function colourPicker(parent, x, y, w, h, colour)
  local button = vgui.Create('DButton', parent)
  button:SetSize(w, h)
  button:SetPos(x, y)
  button:SetText('')
  button.colour = colour or Color(255, 255, 255)
  button.PaintOver = function(self)
    draw.RoundedBox(0, 5, 4, self:GetWide() - 10, self:GetTall() - 8, BLACK)
    draw.RoundedBox(0, 6, 5, self:GetWide() - 12, self:GetTall() - 10, self.colour)
  end
  button.ValueChanged = function(self, value) end
  return button
end

--[[------------------------------------------------------------------
  Opens the appearance options panel
  @param {DPanel} parent panel
  @return {DPanel} panel
]]--------------------------------------------------------------------
local function appearance(sheet)
  -- create container
  local parent = vgui.Create('DPanel')
  parent:SetSize(sheet:GetWide() - 16, sheet:GetTall() - 16)
  parent.Paint = function() end

  -- cache caption icons font
  updateCaptionFont(cache.items.caption.size)

  -- preview window
  local preview = vgui.Create('DPanel', parent)
  preview:SetPos(5, 5)
  preview:SetSize(parent:GetWide() - (preview.x * 2), 200)
  preview.Paint = function()
    local w, h = preview:GetWide() * .95, preview:GetTall() * .7
    local items = cache.items
    -- get values
    local header = math.max(items.ititle.size, items.atitle.size, items.caption.size)
    -- draw
    draw.RoundedBox(0, 0, 0, preview:GetWide(), preview:GetTall(), items.desktop.colour1)
    W98HUD.COMPONENTS:windowBorder(0, 0, preview:GetWide(), preview:GetTall(), DEFAULT_COLOUR, true)
    -- inactive window
    local x, y = preview:GetWide() * .02, preview:GetTall() * .04
    W98HUD.COMPONENTS:window(INACTIVE_WINDOW, x, y, w, h, '98hud_settings_1', items.obj3d.colour1, items.iborder.colour1, items.ititle.fontColour, items.ititle.colour1, items.ititle.colour2, header)
    W98HUD.COMPONENTS:windowControls(x + w - 6, y + 6, items.obj3d.colour1, items.obj3d.colour2, true, nil, header, '98hud_settings_2')
    -- active window
    x, y = preview:GetWide() * .03, preview:GetWide() * .09
    W98HUD.COMPONENTS:window(ACTIVE_WINDOW, x, y, w, h, '98hud_settings_1', items.obj3d.colour1, items.aborder.colour1, items.atitle.fontColour, items.atitle.colour1, items.atitle.colour2, header)
    W98HUD.COMPONENTS:windowControls(x + w - 6, y + 6, items.obj3d.colour1, items.obj3d.colour2, true, nil, header, '98hud_settings_2')
  end

  -- schemes
  local _, schemes = labeledControl(parent, SCHEME, 'DComboBox', 8, preview.y + preview:GetTall() + 6, 200)
  local x, w = schemes.x + schemes:GetWide() + 5, 78
  local save = button(parent, x, schemes.y, w, schemes:GetTall(), SAVE_AS)
  local delete = button(parent, x + save:GetWide() + 5, schemes.y, w, schemes:GetTall(), DELETE)

  -- items
  local sizeWidth, colWidth = 55, 48 -- size control and colour controls sizes
  local _items, items = labeledControl(parent, ITEM, 'DComboBox', 8, preview.y + preview:GetTall() + 51, 200)
  local _, size = labeledControl(parent, SIZE, 'DNumberWang', x, _items.y, sizeWidth, items:GetTall())
  local _, col1 = labeledControl(parent, COLOUR, 'DButton', x + size:GetWide() + 5, _items.y, colWidth, items:GetTall())
  local _, col2 = labeledControl(parent, COLOUR2, colourPicker(parent, 0, 0, colWidth, items:GetTall()), x + size:GetWide() + col1:GetWide() + 10, _items.y, colWidth, items:GetTall())

  local colour1 = vgui.Create('DColorMixerButton', parent)

  -- item font
  local fPropWidth = 24 -- font properties button size
  local _font, font = labeledControl(parent, FONT, 'DTextEntry', 8, preview.y + preview:GetTall() + 96, 200)
  local _, fsize = labeledControl(parent, SIZE, 'DNumberWang', x, _font.y, sizeWidth, font:GetTall())
  local _, fcol = labeledControl(parent, COLOUR, 'DButton', x + fsize:GetWide() + 5, _font.y, colWidth, font:GetTall())
  local bold = button(parent, x + fsize:GetWide() + fcol:GetWide() + 10, font.y, fPropWidth, font:GetTall(), 'B')
  local italic = button(parent, x + fsize:GetWide() + fcol:GetWide() + bold:GetWide() + 10, font.y, fPropWidth, font:GetTall(), 'I')

  --[[------------------------------------------------------------------
    Selector functions
  ]]--------------------------------------------------------------------

  -- updates the controls with the parameters of the current cache for the given item
  items.Update = function(self, id)
    local item = W98HUD:getItem(id)
    local values = cache.items[id]
    if item.size then size:SetValue(values.size) end
    size:SetEnabled(item.size)
    col1:SetEnabled(item.colour1)
    if item.colour1 then col1.colour = values.colour1 end
    col2:SetEnabled(item.colour2)
    if item.colour2 then col2.colour = values.colour2 end
    if item.font then
      font:SetText(values.fontFamily)
      fsize:SetValue(values.fontSize)
      --fcol:SetValue(values.fontColour)
    end
    font:SetEnabled(item.font)
    fsize:SetEnabled(item.font)
    fcol:SetEnabled(item.font)
    bold:SetEnabled(item.font)
    italic:SetEnabled(item.font)
  end

  -- lock or unlock controls when selecting an item
  items.OnSelect = function(self, index, value, data)
    items.Update(self, data)
  end

  -- cache new theme data
  schemes.OnSelect = function(self, index, value, data)
    local theme = W98HUD:getTheme(data).data
    cache.theme = index
    cache.items = table.Copy(theme.items) -- replace item configuration
    cache.sounds = table.Copy(theme.sounds) -- replace sound configuration
  end

  --[[------------------------------------------------------------------
    Populate selectors
  ]]--------------------------------------------------------------------

  -- populate schemes
  for i, theme in pairs(W98HUD:getThemes()) do
    schemes:AddChoice(theme.name, i, W98HUD:getUserCfg().theme == i)
  end

  -- populate items
  for i, item in pairs(W98HUD:getItems()) do
    items:AddChoice(item.name, i, not items:GetSelected())
  end

  --[[------------------------------------------------------------------
    Options
  ]]--------------------------------------------------------------------

  size.OnValueChanged = function(self, value)
    if not self:IsEnabled() then return end
    local _, item = items:GetSelected()
    cache.items[item].size = value
    if CAPTION_ITEMS[item] then updateCaptionFont(value) end -- update custom caption icons font
  end

  return parent -- return container
end

--[[------------------------------------------------------------------
  Opens the sounds options panel
  @param {DPanel} parent panel
  @return {DPanel} panel
]]--------------------------------------------------------------------
local function sounds(sheet)
  -- create container
  local parent = vgui.Create('DPanel')
  parent:SetSize(sheet:GetWide() - 16, sheet:GetTall() - 16)
  parent.Paint = function() end

  return parent -- return container
end

--[[------------------------------------------------------------------
  Opens the theme's menu and returns the frame
  @return {DFrame} frame
]]--------------------------------------------------------------------
local function menu()
  cache = table.Copy(W98HUD:getUserCfg()) -- cache user configuration

  -- create frame
  local frame = vgui.Create('DFrame')
  frame:SetTitle(TITLE)
  frame:SetSize(W, H)
  frame:Center()
  frame:MakePopup()

  -- create property sheet to host the options
  local sheet = vgui.Create('DPropertySheet', frame)
  sheet:SetPos(5, 29)
  sheet:SetSize(frame:GetWide() - (sheet.x * 2), frame:GetTall() - (sheet.y + sheet.x + 33))

  -- add sheets
  sheet:AddSheet(APPEARANCE, appearance(sheet))
  sheet:AddSheet(SOUNDS, sounds(sheet))

  -- buttons width
  local w, m = 75, 3

  -- accept button
  local accept = button(frame, frame:GetWide() - sheet.x - (w * 3) - (m * 2), sheet.y + sheet:GetTall() + sheet.x, w, 23, OK)

  -- cancel button
  local cancel = button(frame, frame:GetWide() - sheet.x - (w * 2) - m, sheet.y + sheet:GetTall() + sheet.x, w, 23, CANCEL)

  -- apply button
  local apply = button(frame, frame:GetWide() - sheet.x - w, sheet.y + sheet:GetTall() + sheet.x, w, 23, APPLY)

  return frame -- return frame
end

--[[------------------------------------------------------------------
  Open menu through console command
]]--------------------------------------------------------------------
concommand.Add('98hud_menu', menu)
