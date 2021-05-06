--[[------------------------------------------------------------------
  DEFAULT CUSTOMIZATION PARAMETERS DECLARATION

  !!! WARNING !!!
  These parameters are used to render the default HUD elements.
  It is advised against altering or removing anything.
  Edit at your own risk!

  You can also add your own customizable parameters with:
  W98HUD:addParameter(identifier)

  and then implement its values with:
  W98HUD:getItemValue(identifier)
]]--------------------------------------------------------------------

if SERVER then return end

W98HUD.FONTS = { -- font names
  TITLE = '98hud_font1',
  CAPTION = '98hud_font2',
  PROGRESS = '98hud_font3'
}

-- desktop colour
W98HUD:addParameter('desktop')

-- 3D objects colours
W98HUD:addParameter('bgCol1')
W98HUD:addParameter('bgCol2')

-- declare common title bars' parameters
W98HUD:addParameter('titleSize')
W98HUD:addParameter('titleTxtFont')
W98HUD:addParameter('titleTxtSize')
W98HUD:addParameter('titleTxtWeight')
W98HUD:addParameter('titleTxtItalic')
W98HUD:shareParameter('titleSize', 'titleTxtSize', function(size) return size - 5 end)
W98HUD:shareParameter('titleTxtSize', 'titleSize', function(font) return font + 5 end)

-- title bar font
W98HUD:getUserCfg():AddChangeEvent('titleSize', 'font', function()
  local cache = W98HUD:getUserCfg()
  surface.CreateFont(W98HUD.FONTS.TITLE, {
    font = cache.parameters.titleTxtFont,
    size = cache.parameters.titleTxtSize,
    antialias = false,
    weight = cache.parameters.titleTxtWeight,
    italic = cache.parameters.titleTxtItalic
  })
end)

-- caption icons font
W98HUD:getUserCfg():AddChangeEvent({'titleTxtFont', 'titleTxtSize', 'titleTxtWeight', 'titleTxtItalic'}, 'font', function()
  surface.CreateFont(W98HUD.FONTS.CAPTION, {
    font = 'MarlettCustom',
    size = W98HUD:getUserCfg().parameters.titleSize * .5,
    antialias = false
  })
end)

-- declare common window border's properties
W98HUD:addParameter('borderSize')

-- windows status types
local windowStatuses = {'a', 'i'}

-- declare settings for each window status
for _, status in pairs(windowStatuses) do
  -- declare title bars' parameters
  W98HUD:addParameter(status .. 'TitleCol1')
  W98HUD:addParameter(status .. 'TitleCol2')
  W98HUD:addParameter(status .. 'TitleTxtCol')

  -- declare window borders' parameters
  W98HUD:addParameter(status .. 'BorderCol')
end

-- declare menu properties
W98HUD:addParameter('menuSize')
W98HUD:addParameter('menuCol')
W98HUD:addParameter('menuTxtFont')
W98HUD:addParameter('menuTxtSize')
W98HUD:addParameter('menuTxtCol')
W98HUD:addParameter('menuTxtWeight')
W98HUD:addParameter('menuTxtItalic')

-- selected items parameters
W98HUD:addParameter('selItemsCol1')
W98HUD:addParameter('selItemsCol2')

-- window text
W98HUD:addParameter('winBgCol')
W98HUD:addParameter('winTxtCol')

-- window fonts
surface.CreateFont(W98HUD.FONTS.PROGRESS, {
  font = 'pix MS Sans Serif 8pt',
  size = 13,
  antialias = false,
  weight = 0,
  italic = 0
})
