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
    panel:CheckBox('Segmented health/suit', '98hud_health')
    panel:TextEntry('Weapon extension', '98hud_weapon')
    panel:CheckBox('Segmented ammunition', '98hud_ammo')
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
