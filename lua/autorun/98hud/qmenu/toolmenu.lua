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
    panel:Help('\nLayout') -- separator
    --[[local mode, _ = panel:ComboBox('Layout mode', '98hud_layout')
      mode:AddChoice('Default', 1)
      mode:AddChoice('Desktop icons', 2)]]
    panel:CheckBox('Windowed', '98hud_window')
    --panel:CheckBox('Taskbar', '98hud_taskbar')
    panel:TextEntry('Player extension', '98hud_player')

    local health, _ = panel:ComboBox('Health & suit', '98hud_health')
    health:AddChoice('Disabled', 0)
    health:AddChoice('Progress bar', 1)
    health:AddChoice('Segmented', 2)

    panel:TextEntry('Weapon extension', '98hud_weapon')

    local ammo, _ = panel:ComboBox('Ammunition', '98hud_ammo')
    ammo:AddChoice('Disabled', 0)
    ammo:AddChoice('Straight', 1)
    ammo:AddChoice('Straight InstallShield Wizard', 2)
    ammo:AddChoice('Segmented', 3)
    ammo:AddChoice('Segmented InstallShield Wizard', 4)
    --panel:CheckBox('Weapon selector', '98hud_weapon')
    --panel:CheckBox('Pickup history', '98hud_pickup')

    panel:Help('') -- separator
    panel:Button('Open display settings', '98hud_menu')
    panel:Help('\nCredits') -- separator
    for i=1, #W98HUD.credits do
      local credit = W98HUD.credits[i]
      panel:Help(credit[1])
      panel:ControlHelp(credit[2])
    end
    panel:Help('\n' .. W98HUD.date)
    -- development version notice
    panel:Help('\nDevelopment version')
    panel:ControlHelp('Current build may not represent the final product')
  end)
end)
