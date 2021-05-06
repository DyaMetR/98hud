--[[------------------------------------------------------------------
  Groups of parameters
]]--------------------------------------------------------------------

if SERVER then return end

local items = {}
local itemOrder = {}

--[[------------------------------------------------------------------
  Create a grouping of parameters
  @param {string} id
  @param {string} print name
  @param {table} data
    size
    colour1
    colour2
    fontFamily
    fontSize
    fontColour
    fontWeight
    fontItalic
]]--------------------------------------------------------------------
function W98HUD:addItem(id, name, data)
  items[id] = {
    name = name,
    size = data.size,
    colour1 = data.colour1,
    colour2 = data.colour2,
    fontFamily = data.fontFamily,
    fontSize = data.fontSize,
    fontColour = data.fontColour,
    fontWeight = data.fontWeight,
    fontItalic = data.fontItalic,
  }
  table.insert(itemOrder, id)
end

--[[------------------------------------------------------------------
  Gets an item's parameters
  @param {string} id
  @return {table} item data
]]--------------------------------------------------------------------
function W98HUD:getItem(id)
  return items[id]
end

--[[------------------------------------------------------------------
  Gets all available items
  @return {table} items
]]--------------------------------------------------------------------
function W98HUD:getItems()
  return items
end

--[[------------------------------------------------------------------
  Gets the order of all items
  @return {table} items' order
]]--------------------------------------------------------------------
function W98HUD:getItemsOrdered()
  return itemsOrder
end
