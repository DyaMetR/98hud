--[[------------------------------------------------------------------
  Appearance editor menu
]]--------------------------------------------------------------------

if SERVER then return end

local FONT_PREFIX = '98hud_settings_%s'
local ATITLE, ITITLE = 'atitle', 'ititle'
local CAPTION_ICON_FONT = '98hud_settings_3'
local SCHEME, ITEM, FONT, SIZE, COLOUR, COLOUR2 = 'Scheme', 'Item', 'Font', 'Size', 'Color', 'Color 2'
local FONT_TOOLTIP = 'Press ENTER to preview the new font family'
local APPLY, CANCEL, OK = 'Apply', 'Cancel', 'OK'
local APPEARANCE, SOUNDS = 'Appearance', 'Sounds'
local SAVE_AS, DELETE = 'Save As...', 'Delete'
local INACTIVE_WINDOW, ACTIVE_WINDOW = 'Inactive Window', 'Active Window'
local DEFAULT_COLOUR = Color(167, 171, 174)
local BOLD, REGULAR = 1000, 0 -- font weights
local CAPTION_ITEMS = { -- list of items that share size with caption icons
  ititle = true,
  atitle = true,
  caption = true
}

--[[------------------------------------------------------------------
  Updates the font used for the preview screen
  @param {string} item which font is being updated
  @param {table} item data to get parameters from
]]--------------------------------------------------------------------
local function updateSampleFont(i, item)
  surface.CreateFont(string.format(FONT_PREFIX, i), {
    font = item.fontFamily,
    size = item.fontSize,
    antialias = false,
    weight = item.fontWeight,
    italic = item.fontItalic
  })
end

--[[------------------------------------------------------------------
  Updates the caption preview icons font
]]--------------------------------------------------------------------
local function updateCaptionFont(size)
  size = size or 8
  surface.CreateFont(CAPTION_ICON_FONT, {
    font = 'MarlettCustom',
    size = size * .5,
    antialias = false
  })
end

--[[------------------------------------------------------------------
  Makes creating labeled controls easier
  @param {Panel} parent
  @param {string} control class
  @param {string} label
  @param {number} x
  @param {number} y
  @param {number} width
]]--------------------------------------------------------------------
local function labeledControl(parent, control, label, x, y, w)
  local panel = vgui.Create('DLabeledControl', parent)
  panel:SetPos(x, y)
  panel:CreateControl(control)
  panel:SetWide(w)
  panel:SetLabel(label)
  return panel
end

--[[------------------------------------------------------------------
  Creates a simple button
  @param {Panel} parent
  @param {string} label
  @param {number} x
  @param {number} y
  @param {number} width
]]--------------------------------------------------------------------
local function button(parent, label, x, y, w)
  local button = vgui.Create('DButton', parent)
  button:SetSize(w, 20)
  button:SetPos(x, y)
  button:SetText(label)
  return button
end

--[[------------------------------------------------------------------
  Creates the appereance editor menu
  @param {Panel} parent panel
  @param {table} cache table
  @return {Panel} appereance menu
]]--------------------------------------------------------------------
function W98HUD.CreateAppereanceMenu(sheet, cache)
  -- create container
  local parent = vgui.Create('DPanel')
  parent:SetSize(sheet:GetWide() - 16, sheet:GetTall() - 16)
  parent.Paint = function() end

  --[[------------------------------------------------------------------
    Preview window
  ]]--------------------------------------------------------------------

  -- cache sample fonts
  updateSampleFont(ATITLE, cache.items.atitle)
  updateCaptionFont(cache.items.caption.size)

  -- preview window
  local preview = vgui.Create('DPanel', parent)
  preview:SetPos(5, 5)
  preview:SetSize(parent:GetWide() - (preview.x * 2), 200)
  preview.Paint = function()
    local w, h = preview:GetWide() * .95, preview:GetTall() * .7
    local items = cache.items
    local titleFont = string.format(FONT_PREFIX, ATITLE)
    -- draw
    draw.RoundedBox(0, 0, 0, preview:GetWide(), preview:GetTall(), items.desktop.colour1)
    W98HUD.COMPONENTS:windowBorder(0, 0, preview:GetWide(), preview:GetTall(), DEFAULT_COLOUR, true)
    -- inactive window
    local x, y = preview:GetWide() * .02, preview:GetTall() * .04
    W98HUD.COMPONENTS:window(INACTIVE_WINDOW, x, y, w, h, titleFont, items.obj3d.colour1, items.iborder.colour1, items.ititle.fontColour, items.ititle.colour1, items.ititle.colour2, items.ititle.size)
    W98HUD.COMPONENTS:windowControls(x + w - 6, y + 6, items.obj3d.colour1, items.obj3d.colour2, true, nil, items.ititle.size, CAPTION_ICON_FONT)
    -- active window
    x, y = preview:GetWide() * .03, preview:GetWide() * .09
    W98HUD.COMPONENTS:window(ACTIVE_WINDOW, x, y, w, h, titleFont, items.obj3d.colour1, items.aborder.colour1, items.atitle.fontColour, items.atitle.colour1, items.atitle.colour2, items.atitle.size)
    W98HUD.COMPONENTS:windowControls(x + w - 6, y + 6, items.obj3d.colour1, items.obj3d.colour2, true, nil, items.atitle.size, CAPTION_ICON_FONT)
  end

  --[[------------------------------------------------------------------
    Controls
  ]]--------------------------------------------------------------------
  local x, y = 8, preview.y + preview:GetTall() + 6
  local largeWidth, labelMargin = 200, 17
  local buttonWidth, sizeWidth, colourWidth, fontWidth = 78, 55, 48, 24

  -- scheme
  local scheme = labeledControl(parent, 'DComboBox', SCHEME, x, y, largeWidth)
  scheme:GetControl().OnSelect = function(self, index, value, data) -- replace cache with theme data
    local theme = W98HUD:getTheme(data).data
    cache.theme = index
    cache.items = table.Copy(theme.items) -- replace item configuration
    cache.sounds = table.Copy(theme.sounds) -- replace sound configuration
  end
  for i, theme in pairs(W98HUD:getThemes()) do -- populate schemes list
    scheme:GetControl():AddChoice(theme.name, i, W98HUD:getUserCfg().theme == i)
  end

  -- save current configuration
  local save = button(parent, SAVE_AS, x + scheme:GetWide() + 5, y + labelMargin, buttonWidth)

  -- delete scheme
  local delete = button(parent, DELETE, x + scheme:GetWide() + save:GetWide() + 10, y + labelMargin, buttonWidth)

  -- items
  local item = labeledControl(parent, 'DComboBox', ITEM, x, scheme.y + 45, largeWidth)

  -- item size
  local size = labeledControl(parent, 'DNumberWang', SIZE, x + item:GetWide() + 5, item.y, sizeWidth)
  size:GetControl().OnValueChanged = function(self, value)
    if not self:IsEnabled() then return end
    local _, _item = item:GetControl():GetSelected()
    cache:SetItemValue(_item, 'size', value)
  end

  -- primary colour
  local colour1 = labeledControl(parent, 'DColorMixerButton', COLOUR, size.x + size:GetWide() + 5, size.y, colourWidth)
  colour1:GetControl().OnValueChanged = function(self, value)
    local _, _item = item:GetControl():GetSelected()
    cache:SetItemValue(_item, 'colour1', value)
  end

  -- secondary colour
  local colour2 = labeledControl(parent, 'DColorMixerButton', COLOUR2, colour1.x + colour1:GetWide() + 5, colour1.y, colourWidth)
  colour2:GetControl().OnValueChanged = function(self, value)
    local _, _item = item:GetControl():GetSelected()
    cache:SetItemValue(_item, 'colour2', value)
  end

  -- font family
  local fFamily = labeledControl(parent, 'DTextEntry', FONT, x, scheme.y + 90, largeWidth)
  fFamily:GetControl():SetToolTip(FONT_TOOLTIP)
  fFamily:GetControl().OnEnter = function(self)
    local _, _item = item:GetControl():GetSelected()
    cache:SetItemValue(_item, 'fontFamily', self:GetText())
  end

  -- font size
  local fSize = labeledControl(parent, 'DNumberWang', SIZE, x + fFamily:GetWide() + 5, fFamily.y, sizeWidth)
  fSize:GetControl().OnValueChanged = function(self, value)
    local _, _item = item:GetControl():GetSelected()
    value = tonumber(value) -- parse to number
    cache:SetItemValue(_item, 'fontSize', value)
  end

  -- font colour
  local fColour = labeledControl(parent, 'DColorMixerButton', COLOUR, fSize.x + fSize:GetWide() + 5, fSize.y, colourWidth)
  fColour:GetControl().OnValueChanged = function(self, value)
    local _, _item = item:GetControl():GetSelected()
    cache:SetItemValue(_item, 'fontColour', value)
  end

  -- font weight
  local fBold = button(parent, 'B', fColour.x + fColour:GetWide() + 5, fSize.y + labelMargin, fontWidth)
  fBold.DoClick = function(self)
    local _, _item = item:GetControl():GetSelected()
    local data = cache.items[_item] -- get item data
    local value = REGULAR
    if data.fontWeight == REGULAR then value = BOLD end
    cache:SetItemValue(_item, 'fontWeight', value)
  end

  -- font italic
  local fItalic = button(parent, 'I', fBold.x + fBold:GetWide(), fBold.y, fontWidth)
  fItalic.DoClick = function(self)
    local _, _item = item:GetControl():GetSelected()
    cache:SetItemValue(_item, 'fontItalic', not cache.items[_item].fontItalic)
  end

  --[[------------------------------------------------------------------
    Cache change event listeners
  ]]--------------------------------------------------------------------
  cache:AddChangeEvent('caption', 'size', function(_, _, value) updateCaptionFont(value) end)
  cache:AddChangeEvent('atitle', {'fontSize', 'fontFamily', 'fontWeight', 'fontItalic'}, function(item, parameter)
    updateSampleFont(item, cache.items[item])
    if parameter == 'fontSize' then size:GetControl():SetValue(cache.items[item].size) end
  end)
  cache:AddChangeEvent('atitle', 'size', function(item) fSize:GetControl():SetValue(cache.items[item].fontSize) end)

  --[[------------------------------------------------------------------
    Update all controls after selecting a new item or theme
  ]]--------------------------------------------------------------------
  -- call function upon changing items
  item:GetControl().OnSelect = function(self, index, value, data)
    local _item = W98HUD:getItem(data)
    -- toggle controls based on item properties
    size:SetEnabled(_item.size)
    colour1:SetEnabled(_item.colour1)
    colour2:SetEnabled(_item.colour2)
    fFamily:SetEnabled(_item.font)
    fSize:SetEnabled(_item.font)
    fColour:SetEnabled(_item.font)
    fBold:SetEnabled(_item.font)
    fItalic:SetEnabled(_item.font)
    -- change controls' values to that of the cache
    local values = cache.items[data]
    if _item.size then size:GetControl():SetValue(values.size) end
    if _item.colour1 then colour1:GetControl():SetValue(values.colour1) end
    if _item.colour2 then colour2:GetControl():SetValue(values.colour2) end
    if _item.font then
      fFamily:GetControl():SetText(values.fontFamily)
      fSize:GetControl():SetValue(values.fontSize)
      fColour:GetControl():SetValue(values.fontColour)
    end
  end

  -- initialize items
  for i, _item in pairs(W98HUD:getItems()) do
    item:GetControl():AddChoice(_item.name, i, not item:GetControl():GetSelected())
  end

  return parent
end
