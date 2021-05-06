--[[------------------------------------------------------------------
  DEFAULT THEME DECLARATION

  !!! WARNING !!!
  This is the theme the addon falls back to if everything fails.
  Edit at your own risk!

  You can also declare your own default theme with:
  W98HUD:addDefaultTheme(identifier, print_name, theme_data)
]]--------------------------------------------------------------------

if SERVER then return end

W98HUD:addDefaultTheme('default', 'Windows Standard-Gradients', {
  parameters = {
    desktop = Color(0, 124, 120),
    bgCol1 = Color(184, 188, 184),
    bgCol2 = Color(0, 0, 0),
    titleSize = 18,
    titleTxtFont = 'pix MS Sans Serif 8pt',
    titleTxtSize = 13,
    titleTxtWeight = 1000,
    titleTxtItalic = false,
    aTitleCol1 = Color(0, 128, 200),
    aTitleCol2 = Color(0, 0, 120),
    aTitleTxtCol = Color(255, 255, 255),
    iTitleCol1 = Color(176, 176, 176),
    iTitleCol2 = Color(120, 124, 120),
    iTitleTxtCol = Color(184, 188, 184),
    borderSize = 1,
    aBorderCol = Color(184, 188, 184),
    iBorderCol = Color(184, 188, 184),
    menuSize = 18,
    menuCol = Color(184, 188, 184),
    menuTxtFont = 'pix MS Sans Serif 8pt',
    menuTxtSize = 13,
    menuTxtCol = Color(0, 0, 0),
    menuTxtWeight = 0,
    menuTxtItalic = false,
    selItemsCol1 = Color(0, 0, 120),
    selItemsCol2 = Color(255, 255, 255),
    winBgCol = Color(255, 255, 255),
    winTxtCol = Color(0, 0, 0)
  }
})
