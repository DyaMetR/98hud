--[[------------------------------------------------------------------
  Declare themes' customization parameters
]]--------------------------------------------------------------------

if SERVER then return end

local TYPE_TABLE = 'table'

local parameters = {} -- parameters
local shared = {} -- parameters that upon changing affect other parameters

--[[------------------------------------------------------------------
  Declares a new customization parameter
  @param {string} parameter
]]--------------------------------------------------------------------
function W98HUD:addParameter(id)
  parameters[id] = true
end

--[[------------------------------------------------------------------
  Gives a function to apply to another parameter when this one changes
  @param {string} origin
  @param {string|table} destination
  @param {function} function to apply
]]--------------------------------------------------------------------
function W98HUD:shareParameter(origin, destination, func)
  if not shared[origin] then shared[origin] = {} end
  if type(destination) == TYPE_TABLE then
    for _, dest in pairs(destination) do
      shared[origin][dest] = func
    end
  else
    shared[origin][destination] = func
  end
end

--[[------------------------------------------------------------------
  Gets the parameters the given one is sharing a function with
  @param {string} id
  @return {table} parameters shared
]]--------------------------------------------------------------------
function W98HUD:getParametersShared(id)
  return shared[id]
end
