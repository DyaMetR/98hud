--[[------------------------------------------------------------------
  Declare themes' customization parameters
]]--------------------------------------------------------------------

if SERVER then return end

local parameters = {} -- items
local parameterOrder = {} -- in which order do items appear

--[[------------------------------------------------------------------
  Declares a new parameter item
  @param {string} unique identifier
  @param {string} print name
  @param {boolean} whether the item size can be changed
  @param {boolean} whether it has a primary colour
  @param {boolean} whether it has a secondary colour
  @param {boolean} whether has an editable font
]]--------------------------------------------------------------------
function W98HUD:addItem(id, name, hasSize, hasColour1, hasColour2, hasFont)
  parameters[id] = {name = name, size = hasSize, colour1 = hasColour1, colour2 = hasColour2, font = hasFont}
  table.insert(parameterOrder, id)
end

--[[------------------------------------------------------------------
  Get a declared parameter item
  @param {string} unique identifier
  @return {table} item details
]]--------------------------------------------------------------------
function W98HUD:getItem(id)
  return parameters[id]
end

--[[------------------------------------------------------------------
  Gets all declared parameter items
  @return {table} items
]]--------------------------------------------------------------------
function W98HUD:getItems()
  return parameters
end

--[[------------------------------------------------------------------
  Gets all declared parameter items' order
  @return {table} items' order
]]--------------------------------------------------------------------
function W98HUD:getItemsOrdered()
  return parameterOrder
end
