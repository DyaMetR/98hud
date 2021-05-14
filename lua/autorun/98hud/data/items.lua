--[[------------------------------------------------------------------
  DEFAULT CUSTOMIZABLE ITEMS DECLARATION

  !!! WARNING !!!
  These are the default parameter groupings which allows the user to
  customize their HUD through the Display Settings menu.
  Altering or removing any of these values could break customization.
  Edit at your own risk!

  You can also add your own customizable items with:
  W98HUD:addItem(identifier, print_name, has_size, has_colour1, has_colour2, has_font_family, has_font_size, has_font_colour, has_font_weight, has_font_italic)
]]--------------------------------------------------------------------

if SERVER then return end

-- add items
W98HUD:addItem('desktop', 'Background', { colour1 = 'desktop' })
W98HUD:addItem('obj3d', '3D Objects', { colour1 = 'bgCol1', fontColour = 'bgCol2' })
W98HUD:addItem('atitle', 'Active Title Bar', {
  size = 'titleSize',
  colour1 = 'aTitleCol2',
  colour2 = 'aTitleCol1',
  fontFamily = 'titleTxtFont',
  fontSize = 'titleTxtSize',
  fontColour = 'aTitleTxtCol',
  fontWeight = 'titleTxtWeight',
  fontItalic = 'titleTxtItalic'
})
W98HUD:addItem('aborder', 'Active Windows Border', { size = 'aBorderSize', colour1 = 'aBorderCol' })
W98HUD:addItem('ititle', 'Inactive Title Bar', {
  size = 'titleSize',
  colour1 = 'iTitleCol2',
  colour2 = 'iTitleCol1',
  fontFamily = 'titleTxtFont',
  fontSize = 'titleTxtSize',
  fontColour = 'iTitleTxtCol',
  fontWeight = 'titleTxtWeight',
  fontItalic = 'titleTxtItalic'
})
W98HUD:addItem('iborder', 'Inactive Window Border', { size = 'iBorderSize', colour1 = 'iBorderCol' })
W98HUD:addItem('caption', 'Caption Buttons', { size = 'titleSize' })
W98HUD:addItem('selitems', 'Selected Items', { colour1 = 'selItemsCol1', colour2 = 'selItemsCol2' })
W98HUD:addItem('msgbox', 'Message Box', {
  fontFamily = 'msgFont',
  fontSize = 'msgSize',
  fontColour = 'msgCol',
  fontWeight = 'msgWeight',
  fontItalic = 'msgItalic'
})
