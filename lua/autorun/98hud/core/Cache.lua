--[[------------------------------------------------------------------
  Contain a configuration for the HUD
]]--------------------------------------------------------------------

local CACHE = { parameters = {}, sounds = {}, events = {}, onChangeHook = {} }

--[[------------------------------------------------------------------
  Adds a function to be triggered when a parameter is changed
  @param {string|table} parameter
  @param {string} func id
  @param {function} function to call
]]--------------------------------------------------------------------
function CACHE:AddChangeEvent(parameter, id, func)
  if type(parameter) == 'table' then
    for _, param in pairs(parameter) do
      if not self.events[param] then self.events[param] = {} end
      self.events[param][id] = func
    end
  else
    if not self.events[parameter] then self.events[parameter] = {} end
    self.events[parameter][id] = func
  end
end

--[[------------------------------------------------------------------
  Calls the event function
  @param {string} parameter
  @param {string} id of the event
]]--------------------------------------------------------------------
function CACHE:CallEvent(parameter, id)
  if not self.events[parameter] or not self.events[parameter][id] then return end
  self.events[parameter][id](parameter, self.parameters[parameter])
end

--[[------------------------------------------------------------------
  Calls all event functions from parameter
  @param {string} parameter
]]--------------------------------------------------------------------
function CACHE:CallEvents(parameter)
  if not self.events[parameter] then return end
  for id, func in pairs(self.events[parameter]) do
    func(parameter, self.parameters[parameter])
  end
end

--[[------------------------------------------------------------------
  Calls all registered event functions
]]--------------------------------------------------------------------
function CACHE:CallAllEvents()
  for parameter, _ in pairs(self.events) do
    self:CallEvents(parameter)
  end
end

--[[------------------------------------------------------------------
  Adds a function to be called anytime a parameter is changed
  @param {function} function to be called
]]--------------------------------------------------------------------
function CACHE:AddChangeHook(id, func)
  self.onChangeHook[id] = func
end

--[[------------------------------------------------------------------
  Calls all on change hooks
  @param {string} parameter
  @param {any} new value
  @param {table} shared parameters
]]--------------------------------------------------------------------
function CACHE:CallHooks(parameter, value, shared)
  for id, func in pairs(self.onChangeHook) do
    func(parameter, value, shared)
  end
end

--[[------------------------------------------------------------------
  Changes a parameter value, applying the shared functions and
  calling the events
  @param {string} parameter
  @param {any} value
  @param {boolean} skip shared parameters update
]]--------------------------------------------------------------------
function CACHE:SetParameterValue(parameter, value, avoidSkip)
  self.theme = nil -- a custom unsaved theme is being used
  self.parameters[parameter] = value
  -- share parameter
  local shared = W98HUD:getParametersShared(parameter)
  if shared then
    for param, func in pairs(shared) do
      self.parameters[param] = func(value)
      self:CallEvents(param)
    end
  end
  -- call events
  self:CallEvents(parameter)
  -- call hooks
  self:CallHooks(parameter, value, shared)
end

--[[------------------------------------------------------------------
  Precaches all cached sounds
]]--------------------------------------------------------------------
function CACHE:PrecacheSounds()
  if not self.sounds then return end
  for _, path in pairs(self.sounds) do
    util.PrecacheSound(path) -- precache sounds to avoid freezing when sounding
  end
end

--[[------------------------------------------------------------------
  Overrides the current cache parameters with the given data
  @param {table} parameters
  @param {table} sounds
  @param {string} which theme does the configuration belong to
]]--------------------------------------------------------------------
function CACHE:Override(parameters, sounds, theme)
  self.parameters = table.Copy(parameters)
  self.sounds = table.Copy(sounds)
  self.theme = theme
  self:PrecacheSounds()
  self:CallAllEvents()
end

--[[------------------------------------------------------------------
  Create a Cache instance
]]--------------------------------------------------------------------
function W98HUD:Cache()
  return table.Copy(CACHE)
end
