--[[------------------------------------------------------------------
  Appearance editor menu
]]--------------------------------------------------------------------

if SERVER then return end

local PRIMARY_FONT, SECONDARY_FONT, CAPTION_ICON_FONT, OK_FONT = '98hud_settings_1', '98hud_settings_2', '98hud_settings_3', '98hud_settings_4'
local SCHEME, ITEM, FONT, SIZE, COLOUR, COLOUR2 = 'Scheme', 'Item', 'Font', 'Size', 'Color', 'Color 2'
local FONT_TOOLTIP = 'Press ENTER to preview the new font family'
local APPLY, CANCEL, OK = 'Apply', 'Cancel', 'OK'
local APPEARANCE, SOUNDS = 'Appearance', 'Sounds'
local SAVE_AS, DELETE = 'Save As...', 'Delete'
local INACTIVE_WINDOW, ACTIVE_WINDOW = 'Inactive Window', 'Active Window'
local MESSAGE_BOX, MESSAGE_TEXT = 'Message Box', 'Message text'
local DEFAULT_COLOUR = Color(167, 171, 174)
local BOLD, REGULAR = 1000, 0 -- font weights
local SAVE_QUERY1 = 'Enter a name for your new scheme.'
local SAVE_QUERY2 = 'Enter a file name to store your scheme into.'
local SAVED_MESSAGE = 'Scheme \'%s\' saved successfully!'
local SAVE_ERROR = 'File names cannot contain \' / : * ? < > |'
local DELETE_QUERY = 'Are you sure you want to delete this scheme?'
local DELETE_ERROR = 'Default scheme \'%s\' cannot be deleted.'
local DELETED_MESSAGE = 'Scheme \'%s\' has been deleted.'
local YES, NO, OK = 'Yes', 'No', 'OK'
local ILLEGAL_CHARACTERS = {'\'', '/', ':', '*', '?', '"', '<', '>', '|'}

--[[------------------------------------------------------------------
  Updates the primary font with the given cache's properties
  @param {table} cache
]]--------------------------------------------------------------------
local function updatePrimaryFont(cache)
  surface.CreateFont(PRIMARY_FONT, {
    font = cache.parameters.titleTxtFont,
    size = cache.parameters.titleTxtSize,
    antialias = false,
    weight = cache.parameters.titleTxtWeight,
    italic = cache.parameters.titleTxtItalic
  })
end

--[[------------------------------------------------------------------
  Updates the secondary font with the given cache's properties
  @param {table} cache
]]--------------------------------------------------------------------
local function updateSecondaryFont(cache)
  -- message text font
  surface.CreateFont(SECONDARY_FONT, {
    font = cache.parameters.msgFont,
    size = cache.parameters.msgSize,
    antialias = false,
    weight = cache.parameters.msgWeight,
    italic = cache.parameters.msgItalic
  })
  -- ok button font
  surface.CreateFont(OK_FONT, {
    font = cache.parameters.msgFont,
    size = cache.parameters.msgSize + 1,
    antialias = false,
    weight = 1000,
    italic = false
  })
end

--[[------------------------------------------------------------------
  Updates the caption preview icons font
  @param {table} cache
]]--------------------------------------------------------------------
local function updateCaptionFont(cache)
  surface.CreateFont(CAPTION_ICON_FONT, {
    font = 'MarlettCustom',
    size = cache.parameters.titleSize * .5,
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
  Sets a control's value without triggering any events
  @param {Panel} control
  @param {any} value
]]--------------------------------------------------------------------
local function setValuePure(control, value)
  control.AvoidUpdate = true
  control:GetControl():SetValue(value)
  control.AvoidUpdate = nil
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
  updatePrimaryFont(cache)
  updateSecondaryFont(cache)
  updateCaptionFont(cache)

  -- preview window
  local preview = vgui.Create('DPanel', parent)
  preview:SetPos(5, 5)
  preview:SetSize(parent:GetWide() - (preview.x * 2), 200)
  preview.Paint = function()
    local w, h = preview:GetWide() * .95, preview:GetTall() * .7
    local parameters = cache.parameters
    -- draw
    draw.RoundedBox(0, 0, 0, preview:GetWide(), preview:GetTall(), parameters.desktop)
    W98HUD.COMPONENTS:windowBorder(0, 0, preview:GetWide(), preview:GetTall(), DEFAULT_COLOUR, true)
    -- inactive window
    local x, y = preview:GetWide() * .02, preview:GetTall() * .04
    local borderSize = parameters.iBorderSize
    W98HUD.COMPONENTS:window(INACTIVE_WINDOW, x, y, w, h, PRIMARY_FONT, parameters.bgCol1, parameters.iBorderCol, borderSize, parameters.iTitleTxtCol, parameters.iTitleCol1, parameters.iTitleCol2, parameters.titleSize, parameters.bgEdge, parameters.bgLight, parameters.bgShadow, parameters.bgDarkShadow)
    W98HUD.COMPONENTS:windowControls(x + w - (5 + borderSize), y + (5 + borderSize), parameters.bgCol1, parameters.bgLight, parameters.bgShadow, parameters.bgDarkShadow, parameters.bgCol2, true, nil, parameters.titleSize, CAPTION_ICON_FONT)
    -- active window
    x, y = preview:GetWide() * .03, preview:GetTall() * .17
    borderSize = parameters.aBorderSize
    W98HUD.COMPONENTS:window(ACTIVE_WINDOW, x, y, w, h, PRIMARY_FONT, parameters.bgCol1, parameters.aBorderCol, parameters.aBorderSize, parameters.aTitleTxtCol, parameters.aTitleCol1, parameters.aTitleCol2, parameters.titleSize, parameters.bgEdge, parameters.bgLight, parameters.bgShadow, parameters.bgDarkShadow)
    W98HUD.COMPONENTS:windowControls(x + w - (5 + borderSize), y + (5 + borderSize), parameters.bgCol1, parameters.bgLight, parameters.bgShadow, parameters.bgDarkShadow, parameters.bgCol2, true, nil, parameters.titleSize, CAPTION_ICON_FONT)
    -- message box
    local titleHeight, textSize = parameters.titleSize - 18, parameters.msgSize - 9
    local btnW, btnH = 72, 24 + textSize -- button sizes
    w, h = preview:GetWide() * .6, (preview:GetTall() * .35) + (titleHeight + (textSize * 2) + (borderSize - 1))
    x, y = preview:GetWide() * .09, (preview:GetTall() * .95) - h
    W98HUD.COMPONENTS:window(MESSAGE_BOX, x, y, w, h, PRIMARY_FONT, parameters.bgCol1, parameters.aBorderCol, parameters.aBorderSize, parameters.aTitleTxtCol, parameters.aTitleCol1, parameters.aTitleCol2, parameters.titleSize, parameters.bgEdge, parameters.bgLight, parameters.bgShadow, parameters.bgDarkShadow)
    W98HUD.COMPONENTS:windowControls(x + w - (5 + borderSize), y + (5 + borderSize), parameters.bgCol1, parameters.bgLight, parameters.bgShadow, parameters.bgDarkShadow, parameters.bgCol2, true, nil, parameters.titleSize, CAPTION_ICON_FONT)
    draw.SimpleText(MESSAGE_TEXT, SECONDARY_FONT, x + (5 + borderSize), y + 23 + borderSize + titleHeight, parameters.msgCol)
    -- OK button
    y = y + h - btnH - 6 - borderSize
    W98HUD.COMPONENTS:windowBorder(x + (w * .5) - (btnW * .5), y, btnW, btnH, parameters.bgCol1, false, parameters.bgEdge, parameters.bgLight, parameters.bgShadow, parameters.bgDarkShadow)
    draw.SimpleText(OK, OK_FONT, x + (w * .5), y + (btnH * .5), parameters.msgCol, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
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
    cache:Override(theme.parameters, theme.sounds, data)
  end
  for i, theme in pairs(W98HUD:getThemes()) do -- populate schemes list
    scheme:GetControl():AddChoice(theme.name, i, W98HUD:getUserCfg().theme == i)
  end

  -- save current configuration
  local save = button(parent, SAVE_AS, x + scheme:GetWide() + 5, y + labelMargin, buttonWidth)
  save.DoClick = function()
    local _, _theme = scheme:GetControl():GetSelected()
    local theme = W98HUD:getTheme(_theme)
    local name, fileName = '', ''
    if _theme and theme and not theme.pure then -- if custom scheme is being edited, ease overwrite
      name = theme.name
      fileName = _theme
    end

    -- do questions
    Derma_StringRequest(SAVE_AS, SAVE_QUERY1, name, function(_name)
      Derma_StringRequest(SAVE_AS, SAVE_QUERY2, fileName, function(_fileName)
        local illegal = string.len(string.Trim(_fileName)) <= 0
        for _, char in pairs(ILLEGAL_CHARACTERS) do
          if string.find(_fileName, char) then
            illegal = true
            break
          end
        end
        if illegal then
          Derma_Message(SAVE_ERROR, SAVE_AS, OK)
        else
          W98HUD:applyChanges(cache.parameters, cache.sounds, _fileName)
          W98HUD:saveAs(_fileName, _name)
          LocalPlayer():ChatPrint(string.format(SAVED_MESSAGE, _name))
          sheet:GetParent():Close() -- close frame
        end
      end)
    end)
  end

  -- delete scheme
  local delete = button(parent, DELETE, x + scheme:GetWide() + save:GetWide() + 10, y + labelMargin, buttonWidth)
  delete.DoClick = function()
    local _, _theme = scheme:GetControl():GetSelected()
    if not _theme then return end -- ignore invalid selections
    local theme = W98HUD:getTheme(_theme)
    if theme.pure then
      Derma_Message(string.format(DELETE_ERROR, theme.name), DELETE)
    else
      local name = theme.name
      Derma_Query(DELETE_QUERY, DELETE, YES, function()
        W98HUD:delete(W98HUD:getUserCfg().theme)
        LocalPlayer():ChatPrint(string.format(DELETED_MESSAGE, name))
        sheet:GetParent():Close()
      end, NO)
    end
  end

  -- items
  local item = labeledControl(parent, 'DComboBox', ITEM, x, scheme.y + 45, largeWidth)

  -- group all controls
  local controls = {}

  -- item size
  local size = labeledControl(parent, 'DNumberWang', SIZE, x + item:GetWide() + 5, item.y, sizeWidth)
  size:GetControl().OnValueChanged = function(self, value)
    if not self:IsEnabled() or size.AvoidUpdate then return end
    local _, _item = item:GetControl():GetSelected()
    cache:SetParameterValue(W98HUD:getItem(_item).size, value)
  end
  controls['size'] = size

  -- primary colour
  local colour1 = labeledControl(parent, 'DColorMixerButton', COLOUR, size.x + size:GetWide() + 5, size.y, colourWidth)
  colour1:GetControl().OnValueChanged = function(self, value)
    if not self:IsEnabled() or colour1.AvoidUpdate then return end
    local _, _item = item:GetControl():GetSelected()
    cache:SetParameterValue(W98HUD:getItem(_item).colour1, value)
  end
  controls['colour1'] = colour1

  -- secondary colour
  local colour2 = labeledControl(parent, 'DColorMixerButton', COLOUR2, colour1.x + colour1:GetWide() + 5, colour1.y, colourWidth)
  colour2:GetControl().OnValueChanged = function(self, value)
    if not self:IsEnabled() or colour2.AvoidUpdate then return end
    local _, _item = item:GetControl():GetSelected()
    cache:SetParameterValue(W98HUD:getItem(_item).colour2, value)
  end
  controls['colour2'] = colour2

  -- font family
  local fFamily = labeledControl(parent, 'DTextEntry', FONT, x, scheme.y + 90, largeWidth)
  fFamily:GetControl():SetToolTip(FONT_TOOLTIP)
  fFamily:GetControl().OnEnter = function(self)
    if not self:IsEnabled() or fFamily.AvoidUpdate then return end
    local _, _item = item:GetControl():GetSelected()
    cache:SetParameterValue(W98HUD:getItem(_item).fontFamily, self:GetText())
  end
  controls['fontFamily'] = fFamily

  -- font size
  local fSize = labeledControl(parent, 'DNumberWang', SIZE, x + fFamily:GetWide() + 5, fFamily.y, sizeWidth)
  fSize:GetControl().OnValueChanged = function(self, value)
    if not self:IsEnabled() or fSize.AvoidUpdate then return end
    local _, _item = item:GetControl():GetSelected()
    value = tonumber(value) -- parse to number
    cache:SetParameterValue(W98HUD:getItem(_item).fontSize, value)
  end
  controls['fontSize'] = fSize

  -- font colour
  local fColour = labeledControl(parent, 'DColorMixerButton', COLOUR, fSize.x + fSize:GetWide() + 5, fSize.y, colourWidth)
  fColour:GetControl().OnValueChanged = function(self, value)
    if not self:IsEnabled() or fColour.AvoidUpdate then return end
    local _, _item = item:GetControl():GetSelected()
    cache:SetParameterValue(W98HUD:getItem(_item).fontColour, value)
  end
  controls['fontColour'] = fColour

  -- font weight
  local fBold = button(parent, 'B', fColour.x + fColour:GetWide() + 5, fSize.y + labelMargin, fontWidth)
  fBold.DoClick = function(self)
    if not self:IsEnabled() or fBold.AvoidUpdate then return end
    local _, _item = item:GetControl():GetSelected()
    local data = W98HUD:getItem(_item).fontWeight -- get item data
    local value = REGULAR
    if cache.parameters[data] == REGULAR then value = BOLD end
    cache:SetParameterValue(data, value)
  end
  controls['fontWeight'] = fBold

  -- font italic
  local fItalic = button(parent, 'I', fBold.x + fBold:GetWide(), fBold.y, fontWidth)
  fItalic.DoClick = function(self)
    if not self:IsEnabled() or fItalic.AvoidUpdate then return end
    local _, _item = item:GetControl():GetSelected()
    local parameter = W98HUD:getItem(_item).fontItalic
    cache:SetParameterValue(parameter, not cache.parameters[parameter])
  end
  controls['fontItalic'] = fItalic

  --[[------------------------------------------------------------------
    Cache change event listeners
  ]]--------------------------------------------------------------------
  cache:AddChangeHook('sharedUpdate', function(parameter, value, shared)
    if not shared then return end
    local _, _item = item:GetControl():GetSelected()
    for param, _ in pairs(shared) do -- go through all shared parameters
      for _type, value in pairs(W98HUD:getItem(_item)) do -- check on the item's parameters whether something matches
        if value ~= param then continue end
        setValuePure(controls[_type], cache.parameters[param])
      end
    end
  end)
  cache:AddChangeEvent('titleSize', 'font', function() updateCaptionFont(cache) end)
  cache:AddChangeEvent({'titleTxtFont', 'titleTxtSize', 'titleTxtWeight', 'titleTxtItalic'}, 'font', function() updatePrimaryFont(cache) end)
  cache:AddChangeEvent({'msgFont', 'msgSize', 'msgWeight', 'msgItalic'}, 'font', function() updateSecondaryFont(cache) end)

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
    fFamily:SetEnabled(_item.fontFamily)
    fSize:SetEnabled(_item.fontSize)
    fColour:SetEnabled(_item.fontColour)
    fBold:SetEnabled(_item.fontWeight)
    fItalic:SetEnabled(_item.fontItalic)
    -- change controls' values to that of the cache
    local values = cache.parameters
    if _item.size then setValuePure(size, values[_item.size]) end
    if _item.colour1 then setValuePure(colour1, values[_item.colour1]) end
    if _item.colour2 then setValuePure(colour2, values[_item.colour2]) end
    if _item.fontFamily then setValuePure(fFamily, values[_item.fontFamily]) end
    if _item.fontSize then setValuePure(fSize, values[_item.fontSize]) end
    if _item.fontColour then setValuePure(fColour, values[_item.fontColour]) end
  end

  -- initialize items
  for i, _item in pairs(W98HUD:getItems()) do
    item:GetControl():AddChoice(_item.name, i, not item:GetControl():GetSelected())
  end

  return parent
end
