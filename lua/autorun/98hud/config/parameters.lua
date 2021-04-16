--[[------------------------------------------------------------------
  Parameters' values persistance
]]--------------------------------------------------------------------

if SERVER then return end

local PREFIX = '98hud_%s_%s'
local COMPONENT_FORMAT = '%s_%s'
local COLOUR_COMPONENTS = {'r', 'g', 'b'}
local DEFAULT_FONT_DATA = {
  fontFamily = 'Roboto',
  fontSize = 16,
  fontWeight = 0,
  fontItalic = false
}
local INVALID = 'nil'

local convars = {} -- all available item related convars
local colours = {} -- which colour does every component belong to
local fonts = {} -- which font does every convar belong to
local cache = {} -- colours cache

--[[------------------------------------------------------------------
  Gets the formatted name for a item's parameter console variable
  @param {string} item unique identifier
  @param {string} parameter
]]--------------------------------------------------------------------
local function conVarName(item, parameter)
  return string.format(PREFIX, item, parameter)
end

--[[------------------------------------------------------------------
  Updates a colour's component value
]]--------------------------------------------------------------------
local function updateColourComponent(convar, _, value)
  local colour = colours[convar]
  cacheColour(colour.item, colour.parameter, colour.component, value)
end

--[[------------------------------------------------------------------
  Updates the convar's font when a property is changed
]]--------------------------------------------------------------------
local function updateFont(convar, _, _)
  if not fonts[convar] then return end
  local _convar = fonts[convar]
  buildFont(_convar.item, _convar.parameter)
end

--[[------------------------------------------------------------------
  Declares a colour's console variables
  @param {string} item unique identifier
  @param {string} parameter
]]--------------------------------------------------------------------
local function declareColour(item, parameter)
  if not cache[item] then cache[item] = {} end -- prepare cache
  cache[item][parameter] = {}
  if not convars[item] then convars[item] = {} end -- prepare convar list
  convars[item][parameter] = {}
  local default = W98HUD:getDefaultTheme()
  for _, component in pairs(COLOUR_COMPONENTS) do
    local name = string.format(COMPONENT_FORMAT, conVarName(item, parameter), component)
    local value = 0 -- failproof for items unsupported by default theme
    if default[item] then value = default[item][parameter][component] end
    CreateClientConVar(name, value, true) -- create convar
    cvars.AddChangeCallback(name, updateColourComponent) -- add callback to cache colour
    colours[name] = {item = item, parameter = parameter, component = component} -- add to colour list
    cache[item][parameter][component] = name -- add as cacheable variable
    convars[item][parameter][component] = name -- add to convar list
  end
end

--[[------------------------------------------------------------------
  Declares a font's console variables
  @param {string} item unique identifier
  @param {string} parameter
]]--------------------------------------------------------------------
local function declareFont(item, parameter)
  if not convars[item] then convars[item] = {} end -- prepare convars list
  convars[item][parameter] = {}
  local default = W98HUD:getDefaultTheme()
  for param, _default in pairs(DEFAULT_FONT_DATA) do
    local name = string.format(COMPONENT_FORMAT, conVarName(item, parameter), param)
    local value = _default -- failproof for items unsupported by default theme
    if default[item] then value = default[item][parameter][param] end
    CreateClientConVar(font, value, true)
    cvars.AddChangeCallback(name, updateFont) -- add callback to update font
    fonts[name] = {item = item, parameter = parameter} -- add to font list
    convars[item][parameter][param] = name -- add to convar list
  end
end

--[[------------------------------------------------------------------
  Declares a generic console variable
  @param {string} item unique identifier
  @param {string} parameter
]]--------------------------------------------------------------------
local function declareGeneric(item, parameter)
  if not convars[item] then convars[item] = {} end -- prepare convars list
  local default = W98HUD:getDefaultTheme()
  local name = conVarName(id, parameter)
  local value = INVALID
  if default[item] then value = default[item][parameter] end
  CreateClientConVar(name, value, true)
  convars[item][parameter] = name
end

--[[------------------------------------------------------------------
  Declares an item's console variables
  @param {string} item unique identifier
]]--------------------------------------------------------------------
local function buildItemConVars(id)
  local item = W98HUD:getItem(id)
  if item.size then declareGeneric(id, 'size') end
  if item.colour1 then declareColour(id, 'colour1') end
  if item.colour2 then declareColour(id, 'colour2') end
  if item.font then
    declareFont(id, 'font')
    buildFont(id)
  end
end

--[[------------------------------------------------------------------
  Builds a font out of its item parameter's console variables
  @param {string} item unique identifier
  @param {string} parameter
]]--------------------------------------------------------------------
local function buildFont(item)
  local _convars = convars[item]['font']
  local family = GetConVar(_convars.fontFamily):GetString()
  local size = GetConVar(_convars.fontSize):GetInt()
  local weight = GetConVar(_convars.fontWeight):GetInt()
  local italic = GetConVar(_convars.fontItalic):GetBool()
  surface.CreateFont(item), {
    font = family,
    size = size,
    weight = weight,
    italic = italic
  })
end

--[[------------------------------------------------------------------
  Caches the given colour with the given value
  @param {string} item unique identifier
  @param {string} item parameter
  @param {string} component to update
  @param {number} value
]]--------------------------------------------------------------------
local function cacheColour(item, parameter, component, value)
  cache[item][parameter][component][value]
end

--[[------------------------------------------------------------------
  Caches all available colours
]]--------------------------------------------------------------------
local function cacheColours()
  for item, _ in pairs(cache) do
    for parameter, _ in pairs(item) do
      local colour = Color(0, 0, 0)
      for component, convar in pairs(cache[item][parameter]) do
        colour[component] = GetConVar(convar):GetInt()
      end
      cache[item][parameter] = colour
    end
  end
end

--[[------------------------------------------------------------------
  Gets an item's console variables
  @param {string} item unique identifier
  @return {table} console variables per item parameter
]]--------------------------------------------------------------------
function W98HUD:getParameterConVars(item)
  return convars[item]
end

--[[------------------------------------------------------------------
  Sets up the parameters' values
]]--------------------------------------------------------------------
function W98HUD:loadParameters()
  for item, _ in pairs(W98HUD:getItems()) do
    buildItemConVars(item)
  end
  cacheColours()
end
