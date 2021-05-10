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
  PROGRESS = '98hud_font3',
  MESSAGE_BOX = '98hud_font4'
}

-- desktop colour
W98HUD:addParameter('desktop')

-- 3D objects colours
W98HUD:addParameter('bgCol1')
W98HUD:addParameter('bgCol2')

-- buttons
W98HUD:addParameter('btnCol1')
W98HUD:addParameter('btnCol2')
W98HUD:addParameter('btnCol3')

-- declare common title bars' parameters
W98HUD:addParameter('titleSize')
W98HUD:addParameter('titleTxtFont')
W98HUD:addParameter('titleTxtSize')
W98HUD:addParameter('titleTxtWeight')
W98HUD:addParameter('titleTxtItalic')
W98HUD:shareParameter('titleSize', 'titleTxtSize', function(size) return size - 5 end)
W98HUD:shareParameter('titleTxtSize', 'titleSize', function(font) return font + 5 end)

-- caption buttons
W98HUD:addParameter('captionCol')

-- calculate
W98HUD:shareParameter('captionCol', 'btnCol1', function(colour) return table.Copy(W98HUD:CalculateInCol1(colour)) end)
W98HUD:shareParameter('captionCol', 'btnCol2', function(colour) return table.Copy(W98HUD:CalculateInCol2(colour)) end)
W98HUD:shareParameter('captionCol', 'btnCol3', function(colour) return nil end)

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
  W98HUD:addParameter(status .. 'BorderSize')
end

-- selected items parameters
W98HUD:addParameter('selItemsCol1')
W98HUD:addParameter('selItemsCol2')

-- message box
W98HUD:addParameter('msgFont')
W98HUD:addParameter('msgSize')
W98HUD:addParameter('msgCol')
W98HUD:addParameter('msgWeight')
W98HUD:addParameter('msgItalic')

W98HUD:getUserCfg():AddChangeEvent({'msgFont', 'msgSize', 'msgWeight', 'msgItalic'}, 'font', function()
  local cache = W98HUD:getUserCfg()
  surface.CreateFont(W98HUD.FONTS.MESSAGE_BOX, {
    font = cache.parameters.msgFont,
    size = cache.parameters.msgSize,
    weight = cache.parameters.msgWeight,
    italic = cache.parameters.msgItalic,
    antialias = false
  })
end)

-- window fonts
surface.CreateFont(W98HUD.FONTS.PROGRESS, {
  font = 'pix MS Sans Serif 8pt',
  size = 13,
  antialias = false,
  weight = 0,
  italic = 0
})
