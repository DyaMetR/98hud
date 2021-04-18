--[[------------------------------------------------------------------
  DEFAULT CUSTOMIZABLE ITEMS DECLARATION

  !!! WARNING !!!
  These items are used to render the default HUD elements.
  It is advised against altering or removing any of these parameters.
  Edit at your own risk!

  You can also add your own customizable items with:
  W98HUD:addItem(identifier, print_name, has_size, has_colour1, has_colour2, uses_font)

  and then implement its values with:
  W98HUD:getItemValue(item_identifier, parameter_name)
]]--------------------------------------------------------------------

if SERVER then return end

W98HUD:addItem('obj3d', '3D Objects', false, true, true)
W98HUD:addItem('atitle', 'Active Title Bar', true, true, true, true)
W98HUD:addItem('aborder', 'Active Window Border', true, true)
W98HUD:addItem('desktop', 'Desktop', false, true)
W98HUD:addItem('ititle', 'Inactive Title Bar', true, true, true, true)
W98HUD:addItem('iborder', 'Inactive Window Border', true, true)
W98HUD:addItem('menu', 'Menu', true, true, false, true)
W98HUD:addItem('caption', 'Caption Buttons', true)
W98HUD:addItem('selitems', 'Selected Items', false, true, true)
