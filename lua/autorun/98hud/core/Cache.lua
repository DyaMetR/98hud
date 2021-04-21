--[[------------------------------------------------------------------
  Contain a configuration for the HUD
]]--------------------------------------------------------------------

local CACHE = { items = {}, sounds = {}, events = {} }

--[[------------------------------------------------------------------
  Adds a function to be called when an item's parameter value changes
  @param {string} item
  @param {string|table} parameter
  @param {function} function to call
]]--------------------------------------------------------------------
function CACHE:AddChangeEvent(item, parameter, func)
  if not self.events[item] then self.events[item] = {} end
  if type(parameter) == 'table' then
    for _, param in pairs(parameter) do
      self.events[item][param] = func
    end
  else
    self.events[item][parameter] = func
  end
end

--[[------------------------------------------------------------------
  Calls the event function
  @param {string} item
  @param {string} parameter
]]--------------------------------------------------------------------
function CACHE:CallEvent(item, parameter)
  if not self.events[item] or not self.events[item][parameter] then return end
  self.events[item][parameter](item, parameter, self.items[item][parameter])
end

--[[------------------------------------------------------------------
  Changes an item's parameter value, calls the events, changes other
  items' parameter value if shared and applies conversion
  @param {string} item
  @param {string} parameter
  @param {any} value
  @param {boolean} skip shared parameters update
]]--------------------------------------------------------------------
function CACHE:SetItemValue(item, parameter, value, avoidLoop)
  self.items[item][parameter] = value
  -- share parameter
  if W98HUD:isParameterShared(item, parameter) and not avoidLoop then
    for sibling, _ in pairs(W98HUD:getSharedParameter(item, parameter)) do
      self:SetItemValue(sibling, parameter, value, true)
    end
  end
  -- apply conversion
  if W98HUD:isConversionApplied(item, parameter) then
    for child, func in pairs(W98HUD:getConversionTable(item, parameter)) do
      self.items[item][child] = func(value)
      self:CallEvent(item, child)
    end
  end
  -- call events
  self:CallEvent(item, parameter)
end

--[[------------------------------------------------------------------
  Precaches all cached sounds
]]--------------------------------------------------------------------
function CACHE:PrecacheSounds()
  for _, path in pairs(self.sounds) do
    util.PrecacheSound(path) -- precache sounds to avoid freezing when sounding
  end
end

--[[------------------------------------------------------------------
  Overrides the current cache parameters with the given data
  @param {table} items settings
  @param {table} sounds
  @param {string} which theme does the configuration belong to
]]--------------------------------------------------------------------
function CACHE:Override(items, sounds, theme)
  self.items = table.Copy(items)
  self.sounds = table.Copy(sounds)
  self.theme = theme
  self:PrecacheSounds()
end

--[[------------------------------------------------------------------
  Create a Cache instance
]]--------------------------------------------------------------------
function W98HUD:Cache()
  return table.Copy(CACHE)
end
