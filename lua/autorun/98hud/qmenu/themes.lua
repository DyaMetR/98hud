--[[------------------------------------------------------------------
  Theme menu
]]--------------------------------------------------------------------

if SERVER then return end

local W, H = 404, 448 -- Windows 98 default resolution
local TITLE = 'Display Properties'
local SCHEME, ITEM, FONT, SIZE, COLOUR, COLOUR2 = 'Scheme', 'Item', 'Font', 'Size', 'Color', 'Color 2'
local APPLY, CANCEL, OK = 'Apply', 'Cancel', 'OK'
local APPEARANCE, SOUNDS = 'Appearance', 'Sounds'
local SAVE_AS, DELETE = 'Save As...', 'Delete'
local DEFAULT_COLOUR = Color(167, 171, 174)
local INACTIVE_WINDOW, ACTIVE_WINDOW = 'Inactive Window', 'Active Window'

-- fonts
surface.CreateFont('98hud_settings_1', {
  font = 'pix MS Sans Serif 8pt',
  size = 13,
  weight = 1000,
  antialias = false
})

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
  local control = vgui.Create(_control, parent)
  control:SetPos(x, y + 17)
  control:SetSize(w, 20)

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
  Opens the appearance options panel
  @param {DPanel} parent panel
  @return {DPanel} panel
]]--------------------------------------------------------------------
local function appearance(sheet)
  -- create container
  local parent = vgui.Create('DPanel')
  parent:SetSize(sheet:GetWide() - 16, sheet:GetTall() - 16)
  parent.Paint = function() end

  -- get player colour in Color structure
  local playerColour = LocalPlayer():GetPlayerColor():ToColor()

  -- preview window
  local preview = vgui.Create('DPanel', parent)
  preview:SetPos(5, 5)
  preview:SetSize(parent:GetWide() - (preview.x * 2), 200)
  preview.Paint = function()
    local w, h = preview:GetWide() * .95, preview:GetTall() * .7
    draw.RoundedBox(0, 0, 0, preview:GetWide(), preview:GetTall(), playerColour)
    W98HUD.COMPONENTS:windowBorder(0, 0, preview:GetWide(), preview:GetTall(), DEFAULT_COLOUR, true)
    -- inactive window
    local x, y = preview:GetWide() * .02, preview:GetTall() * .02
    W98HUD.COMPONENTS:window(INACTIVE_WINDOW, x, y, w, h, '98hud_settings_1', Color(188, 188, 188), nil, Color(200, 200, 200), Color(166, 166, 166), Color(100, 100, 100))
    W98HUD.COMPONENTS:windowControls(x + w - 6, y + 6, Color(188, 188, 188), Color(70, 70, 70), true)
    -- active window
    x, y = preview:GetWide() * .03, preview:GetWide() * .08
    W98HUD.COMPONENTS:window(ACTIVE_WINDOW, x, y, w, h, '98hud_settings_1', Color(188, 188, 188), nil, nil, Color(0, 128, 200), Color(0, 0, 120))
    W98HUD.COMPONENTS:windowControls(x + w - 6, y + 6, Color(188, 188, 188), Color(0, 0, 0), true)
  end

  -- schemes
  local _, schemes = labeledControl(parent, SCHEME, 'DComboBox', 8, preview.y + preview:GetTall() + 6, 200)

  -- schemes options
  local x, w = schemes.x + schemes:GetWide() + 5, 78
  local save = button(parent, x, schemes.y, w, schemes:GetTall(), SAVE_AS)
  local delete = button(parent, x + save:GetWide() + 5, schemes.y, w, schemes:GetTall(), DELETE)

  -- items
  local sizeWidth, colWidth = 55, 48 -- size control and colour controls sizes
  local _items, items = labeledControl(parent, ITEM, 'DComboBox', 8, preview.y + preview:GetTall() + 51, 200)
  local _, size = labeledControl(parent, SIZE, 'DNumberWang', x, _items.y, sizeWidth, items:GetTall())
  local _, col1 = labeledControl(parent, COLOUR, 'DButton', x + size:GetWide() + 5, _items.y, colWidth, items:GetTall())
  local _, col2 = labeledControl(parent, COLOUR2, 'DButton', x + size:GetWide() + col1:GetWide() + 10, _items.y, colWidth, items:GetTall())

  -- item font
  local fPropWidth = 24 -- font properties button size
  local _font, font = labeledControl(parent, FONT, 'DTextEntry', 8, preview.y + preview:GetTall() + 96, 200)
  local _, fsize = labeledControl(parent, SIZE, 'DNumberWang', x, _font.y, sizeWidth, font:GetTall())
  local _, fcol = labeledControl(parent, COLOUR, 'DButton', x + fsize:GetWide() + 5, _font.y, colWidth, font:GetTall())
  local bold = button(parent, x + fsize:GetWide() + fcol:GetWide() + 10, font.y, fPropWidth, font:GetTall(), 'B')
  local italic = button(parent, x + fsize:GetWide() + fcol:GetWide() + bold:GetWide() + 10, font.y, fPropWidth, font:GetTall(), 'I')

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
