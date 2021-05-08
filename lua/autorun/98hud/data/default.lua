--[[------------------------------------------------------------------
  DEFAULT THEME DECLARATION

  !!! WARNING !!!
  This is the theme the addon falls back to if everything fails.
  Edit at your own risk!

  You can also declare your own default theme with:
  W98HUD:addDefaultTheme(identifier, print_name, theme_data)
]]--------------------------------------------------------------------

if SERVER then return end

W98HUD:addDefaultTheme('default', 'Windows Default (high color)', {
  parameters = {
    desktop = Color(0, 128, 128), -- Background
    bgCol1 = Color(192, 192, 192), -- Window Color
    bgCol2 = Color(0, 0, 0), -- Caption Button Icon Color
    captionCol = Color(192, 192, 192), -- Caption Button Color
    btnCol1 = Color(255, 255, 255), -- Button Light
    btnCol2 = Color(0, 0, 0), -- Button Shadow
    titleSize = 18, -- Titlebar Size
    titleTxtFont = 'pix MS Sans Serif 8pt', -- Titlebar Font
    titleTxtSize = 13, -- Titlebar Font Size
    titleTxtWeight = 1000, -- Titlebar Text Weight
    titleTxtItalic = false, -- Titlebar Text Italic
    aTitleCol1 = Color(16, 132, 208), -- Ative Titlebar Gradient Color
    aTitleCol2 = Color(0, 0, 128), -- Active Titlebar Color
    aTitleTxtCol = Color(255, 255, 255), -- Active Titlebar Text Color
    iTitleCol1 = Color(184, 180, 184), -- Inactive Titlebar Gradient Color
    iTitleCol2 = Color(128, 128, 128), -- Inactive Titlebar Color
    iTitleTxtCol = Color(192, 192, 192), -- Inactive Titlebar Text Color
    aBorderSize = 1, -- Active Window Border Size
    aBorderCol = Color(192, 192, 192), -- Active Window Border Color
    iBorderSize = 1, -- Inactive Window Border Size
    iBorderCol = Color(192, 192, 192), -- Inactive Window Border Color
    selItemsCol1 = Color(0, 0, 128), -- Selected Item (Highlight) Color
    selItemsCol2 = Color(255, 255, 255), -- Selected Item (Highlight) Text Color
    msgFont = 'pix MS Sans Serif 8pt', -- Message Box Font
    msgSize = 13, -- Message Box Font Size
    msgCol = Color(0, 0, 0), -- Message Box Font Colour
    msgWeight = 0, -- Message Box Font Weight
    msgItalic = false -- Message Box Font Italic
  }
})
