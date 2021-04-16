--[[------------------------------------------------------------------
  Add addon to the Q menu
]]--------------------------------------------------------------------

if SERVER then return end

local CATEGORY = 'Options'
local UID = '98hud'

-- populate tool menu
hook.Add('PopulateToolMenu', UID, function()
  -- add option
  spawnmenu.AddToolMenuOption(CATEGORY, W98HUD.category, UID, W98HUD.name, nil, nil, function(panel)
    panel:ClearControls()
    panel:CheckBox('Enabled', '98hud_enabled')
    panel:Label('\nLayout') -- separator
    panel:CheckBox('Windowed', '98hud_window')
    panel:ComboBox('Health', '98hud_health')
    panel:ComboBox('Ammunition', '98hud_ammo')
    panel:CheckBox('Weapon selector', '98hud_weapon')
    panel:Label('') -- separator
    panel:Button('Open display settings', '98hud_menu')
    panel:Label('\nCredits') -- separator
    for i=1, #W98HUD.credits do
      local credit = W98HUD.credits[i]
      panel:Label(credit[1])
      panel:ControlHelp(credit[2])
    end
  end)
end)