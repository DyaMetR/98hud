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
  items = {
    obj3d = { colour1 = Color(184, 188, 184), colour2 = Color(0, 0, 0) },
    atitle = { size = 18, colour1 = Color(0, 128, 200), colour2 = Color(0, 0, 120), fontFamily = 'pix MS Sans Serif 8pt', fontSize = 13, fontColour = Color(255, 255, 255), fontWeight = 1000 },
    aborder = { size = 1, colour1 = Color(184, 188, 184) },
    desktop = { colour1 = Color(0, 124, 120) },
    ititle = { size = 18, colour1 = Color(176, 176, 176), colour2 = Color(120, 124, 120), fontFamily = 'pix MS Sans Serif 8pt', fontSize = 13, fontColour = Color(184, 188, 184), fontWeight = 1000 },
    iborder = { size = 1, colour1 = Color(184, 188, 184) },
    menu = { size = 18, colour1 = Color(184, 188, 184), fontFamily = 'pix MS Sans Serif 8pt', fontSize = 13, fontColour = Color(0, 0, 0) },
    caption = { size = 18 },
    selitems = { colour1 = Color(0, 0, 120), colour2 = Color(255, 255, 255) }
  }
})
