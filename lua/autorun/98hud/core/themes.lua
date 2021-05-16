--[[------------------------------------------------------------------
  Declare persistent themes
]]--------------------------------------------------------------------

if SERVER then return end

local themes = {}
local themeOrder = {} -- how themes appear in the list
local defaultTheme -- default theme

--[[------------------------------------------------------------------
  Adds a persistent theme
  @param {string} unique identifier
  @param {string} print name
  @param {table} theme data
  @param {boolean} whether it was loaded from disk (enable overriding/deletion)
]]--------------------------------------------------------------------
function W98HUD:addTheme(id, name, data, fromDisk)
  themes[id] = {name = name, data = data, pure = not fromDisk}
  table.insert(themeOrder, id)
end

--[[------------------------------------------------------------------
  Adds an item's value to an existing theme
  @param {string} theme unique identifier
  @param {string} item unique identifier
  @param {table} item parameters' values
]]--------------------------------------------------------------------
function W98HUD:addThemeItem(id, item, data)
  themes[id].data[item] = data
end

--[[------------------------------------------------------------------
  Removes a theme from the list
  @param {string} unique identifier
]]--------------------------------------------------------------------
function W98HUD:removeTheme(id)
  themes[id] = nil
end

--[[------------------------------------------------------------------
  Adds the default theme
  @param {string} unique identifier
  @param {string} print name
  @param {table} theme data
]]--------------------------------------------------------------------
function W98HUD:addDefaultTheme(id, name, data)
  W98HUD:addTheme(id, name, data)
  defaultTheme = id
end

--[[------------------------------------------------------------------
  Gets a theme's details
  @param {string} unique identifier
  @return {table} theme details
]]--------------------------------------------------------------------
function W98HUD:getTheme(id)
  return themes[id]
end

--[[------------------------------------------------------------------
  Returns all declared themes
  @return {table} themes
]]--------------------------------------------------------------------
function W98HUD:getThemes()
  return themes
end

--[[------------------------------------------------------------------
  Returns the themes' ordered list
  @return {table} themes
]]--------------------------------------------------------------------
function W98HUD:getThemesOrderedList()
  return themeOrder
end

--[[------------------------------------------------------------------
  Returns the default theme's data
  @return {table} theme data
]]--------------------------------------------------------------------
function W98HUD:getDefaultTheme()
  return defaultTheme
end
