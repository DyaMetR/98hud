if SERVER then return end

--[[------------------------------------------------------------------
  Retreives the ammunition information of the given weapon.
  @return {boolean} is ammunition data valid
  @return {number} primary ammunition type
  @return {number} secondary ammunition type
  @return {number} clip ammunition amount
  @return {number} primary reserve ammunition
  @return {number} secondary ammunition
]]--------------------------------------------------------------------
local function fetchAmmo(weapon)
  local isValid = true

  -- select ammunition types
  local clip1, primary, secondary = weapon:Clip1(), weapon:GetPrimaryAmmoType(), weapon:GetSecondaryAmmoType()
  local reserve, alt = LocalPlayer():GetAmmoCount(primary), LocalPlayer():GetAmmoCount(secondary)

  -- check for custom ammo display
  if weapon.CustomAmmoDisplay and weapon:CustomAmmoDisplay() then
    local ammoData = weapon:CustomAmmoDisplay()

    -- do not draw if the custom ammo display is disabled
    if not ammoData.Draw then
      isValid = false
    end

    -- get ammunition data
    clip1 = ammoData.PrimaryClip or -1
    reserve = ammoData.PrimaryAmmo or -1
    alt = ammoData.SecondaryAmmo or -1

    -- if reserve is unavailable, show clip instead
    if reserve <= -1 then
      reserve = clip1
      clip1 = -1
    end
  else
    -- check if secondary ammunition is the only valid type
    if primary <= 0 and secondary > 0 then
      primary = secondary
      reserve = alt
      clip1 = -1
      secondary = -1
      alt = -1
    end

    -- do not draw if both ammo types are invalid
    if primary <= 0 and secondary <= 0 then
      isValid = false
    end
  end

  return isValid, primary, secondary, clip1, reserve, alt
end

-- export function
function W98HUD:ammo(weapon) return fetchAmmo(weapon) end
