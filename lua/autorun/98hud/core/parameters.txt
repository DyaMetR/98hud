--[[------------------------------------------------------------------
  Declare themes' customization parameters
]]--------------------------------------------------------------------

if SERVER then return end

local fonts = {} -- items with fonts (reduce iterations)
local parameters = {} -- items
local parameterOrder = {} -- in which order do items appear
local shared = {} -- items that share properties with other items
local convert = {} -- items that have to convert their properties

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
  if hasFont then table.insert(fonts, id) end
end

--[[------------------------------------------------------------------
  Shares a parameter value between items
  @param {string} parameter
  @param {table} items to share with
]]--------------------------------------------------------------------
function W98HUD:shareParameter(parameter, items)
  for _, item in pairs(items) do
    if not shared[item] then shared[item] = {} end
    if not shared[item][parameter] then shared[item][parameter] = {} end
    for _, sibling in pairs(items) do -- add other items
      if sibling == item then continue end
      shared[item][parameter][sibling] = true
    end
  end
end

--[[------------------------------------------------------------------
  Adds a parameter to convert when another one is updated
  @param {table} items
  @param {string} parameter origin
  @param {string} parameter target
  @param {function} conversion function
]]--------------------------------------------------------------------
function W98HUD:convertParameter(items, origin, target, func)
  for _, item in pairs(items) do
    if not convert[item] then convert[item] = {} end
    if not convert[item][origin] then convert[item][origin] = {} end
    convert[item][origin][target] = func
  end
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

--[[------------------------------------------------------------------
  Gets all items with a font attached to them
  @return {table} fonts
]]--------------------------------------------------------------------
function W98HUD:getFonts()
  return fonts
end

--[[------------------------------------------------------------------
  Returns the list of items an item is sharing a parameter with
  @param {string} item
  @param {string} parameter
  @return {table} shared items
]]--------------------------------------------------------------------
function W98HUD:getSharedParameter(item, parameter)
  return shared[item][parameter]
end

--[[------------------------------------------------------------------
  Whether a parameter is shared (or if the item shares anything at all)
  @param {string} item
  @param {string} parameter
  @return {boolean} shares
]]--------------------------------------------------------------------
function W98HUD:isParameterShared(item, parameter)
  return shared[item] and shared[item][parameter]
end

--[[------------------------------------------------------------------
  Returns the list of parameters connected in an item
  @param {string} item
  @param {string} parameter
  @return {table} parameters
]]--------------------------------------------------------------------
function W98HUD:getConversionTable(item, parameter)
  return convert[item][parameter]
end

--[[------------------------------------------------------------------
  Whether there are parameters to make a conversion
  @param {string} item
  @param {string} parameter
  @return {boolean} is there anything to convert
]]--------------------------------------------------------------------
function W98HUD:isConversionApplied(item, parameter)
  return convert[item] and convert[item][parameter]
end
