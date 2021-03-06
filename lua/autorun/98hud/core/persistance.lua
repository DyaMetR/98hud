--[[------------------------------------------------------------------
  Persistance for configurations on UI items and sounds
]]--------------------------------------------------------------------

if SERVER then return end

local GAME_FOLDER = 'DATA' -- store configuration in the data folder
local MASTER_FOLDER = '98hud' -- where is the addon configuration stored
local EXTENSION = '.dat' -- configuration files extension
local CACHE_FILE_NAME = '_current' -- file containing the current configuration
local THEMES_FOLDER = 'themes' -- where custom themes are stored
local FOLDER_FORMAT = '%s/%s'
local THEMES_READ = 'Read %i custom themes from disk.'
local NO_THEMES_FOUND = 'No custom themes were found. Skipping...'
local CURRENT_READ = 'Layout loaded successfully.'
local NO_CURRENT_FOUND = 'No previous layout configuration found. Skipping...'
local CURRENT_SAVED = 'Layout saved successfully.'
local SAVE_ERROR = 'Attempted saving a theme with an invalid name!'
local SAVING = 'Saving \'%s\' theme as \'%s\'...'
local SAVE_SUCCESS = 'Theme \'%s\' saved successfully as \'%s\'.'
local DELETING = 'Deleting \'%s\' theme...'
local DELETE_SUCCESS = 'Deleted theme \'%s\'.'
local DONE = 'Done.'

local cache = W98HUD:Cache() -- current configuration instance

--[[------------------------------------------------------------------
  Returns a file name with the master folder attached to it
  @param {string} file name
  @return {string} file path in folder
]]--------------------------------------------------------------------
local function filename(path)
    return string.format(FOLDER_FORMAT, MASTER_FOLDER, path)
end

--[[------------------------------------------------------------------
  Persists the current layout in disk
]]--------------------------------------------------------------------
local function storeLayout()
  file.Write(filename(CACHE_FILE_NAME .. EXTENSION), util.TableToJSON(cache, true))
  W98HUD:print(CURRENT_SAVED)
end

--[[------------------------------------------------------------------
  Applies a theme's properties
  @param {string} theme identifier
]]--------------------------------------------------------------------
function W98HUD:applyTheme(id)
  local theme = W98HUD:getTheme(id)
  W98HUD:applyChanges(theme.parameters, theme.sounds, id)
end

--[[------------------------------------------------------------------
  Applies the given theme data to the current one and stores it
  @param {table} parameters
  @param {table} sounds
  @param {string} which theme does the configuration belong to
]]--------------------------------------------------------------------
function W98HUD:applyChanges(parameters, sounds, theme)
  cache:Override(parameters, sounds, theme) -- override cache data
  storeLayout() -- save to disk
end

--[[------------------------------------------------------------------
  Saves the current configuration in cache as a new theme
  @param {string} theme name
]]--------------------------------------------------------------------
function W98HUD:saveAs(name)
  if string.len(name) <= 0 then -- failproof invalid themes
    W98HUD:print(SAVE_ERROR)
    return
  end
  local fileName = string.lower(name)
  local themeFolder = filename(THEMES_FOLDER)
  if not file.Exists(themeFolder, GAME_FOLDER) then
      file.CreateDir(themeFolder, GAME_FOLDER) -- create master data folder
  end
  W98HUD:print(string.format(SAVING, name, fileName .. EXTENSION)) -- start save process
  local new = { -- build new theme object
    name = name,
    data = {
      theme = cache.theme,
      parameters = cache.parameters,
      sounds = cache.sounds
    }
  }
  file.Write(filename(string.format(FOLDER_FORMAT, THEMES_FOLDER, fileName .. EXTENSION)), util.TableToJSON(new))
  W98HUD:addTheme(fileName, name, new.data, true)
  W98HUD:print(string.format(SAVE_SUCCESS, name, fileName .. EXTENSION)) -- notify user of successful save
end

--[[------------------------------------------------------------------
  Deletes the given theme
  @param {string} theme identifier
]]--------------------------------------------------------------------
function W98HUD:delete(id)
  local theme = W98HUD:getTheme(id)
  local name = theme.name
  if not theme or theme.pure then return end
  W98HUD:print(string.format(DELETING, name))
  file.Delete(filename(string.format(FOLDER_FORMAT, THEMES_FOLDER, id .. EXTENSION)))
  W98HUD:removeTheme(id)
  W98HUD:print(string.format(DELETE_SUCCESS, name))
end

--[[------------------------------------------------------------------
  Creates the 'themes' folder if it doesn't exist and loads
  configuration and custom themes (if any)
]]--------------------------------------------------------------------
function W98HUD:setup()
    if not file.Exists(MASTER_FOLDER, GAME_FOLDER) then
        file.CreateDir(MASTER_FOLDER, GAME_FOLDER) -- create master data folder
    end

    -- read themes
    local files, _ = file.Find(filename(THEMES_FOLDER) .. '/*' .. EXTENSION, GAME_FOLDER) -- find custom themes
    if files then -- check whether any custom themes have been stored
      local len = string.len(EXTENSION) -- file extension length
      for i=1, #files do
        local _file = files[i] -- file name
        local path = filename(string.format(FOLDER_FORMAT, THEMES_FOLDER, _file)) -- file full path
        local raw = file.Read(path, GAME_FOLDER) -- raw file data
        local theme = util.JSONToTable(raw) -- table data
        local name = string.sub(_file, 1, string.len(_file) - len) -- file name without extension
        W98HUD:addTheme(name, theme.name, theme.data, true) -- add new theme
      end
      W98HUD:print(string.format(THEMES_READ, #files))
    else -- otherwise notify user that no themes were found
      W98HUD:print(NO_THEMES_FOUND)
    end

    -- read cache
    local _file = file.Read(filename(CACHE_FILE_NAME .. EXTENSION))
    if _file then
      local data = util.JSONToTable(_file)
      cache:Override(data.parameters, data.sounds, data.theme) -- override cache object with the file's data
      W98HUD:print(CURRENT_READ)
    else
      local default = W98HUD:getDefaultTheme() -- get default theme
      local data = W98HUD:getTheme(default).data -- get theme's data
      cache:Override(data.parameters, data.sounds, default) -- override cache with default theme data
      W98HUD:print(NO_CURRENT_FOUND) -- if not found, return to default
    end

    -- mark as done
    W98HUD:print(DONE);
end

--[[------------------------------------------------------------------
  Retrieves the current settings used
  @return {table} cache
]]--------------------------------------------------------------------
function W98HUD:getUserCfg()
  return cache
end

--[[------------------------------------------------------------------
  Returns an item's parameter's value from the current configuration
  @param {string} parameter
  @return {any} value
]]--------------------------------------------------------------------
function W98HUD:getItemValue(parameter)
  return cache.parameters[parameter]
end

--[[------------------------------------------------------------------
  Gets a sound's path from the current configuration
  @param {string} sound
  @return {string|nil} sound file path
]]--------------------------------------------------------------------
function W98HUD:getSoundFile(sound)
  return cache.sounds[sound]
end
