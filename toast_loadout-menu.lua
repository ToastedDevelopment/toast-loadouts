-- Line below creates the menu, This is recommended not to edit unless you know how to use MenuV
local menu = MenuV:CreateMenu(false, 'Police Loadout Weapons', 'topright', 54, 127, 245, 'size-125', 'loadout_banner', 'loadout_menu', 'Toasted Development: Weapon Spawner')

-- Below is the weapon list, add/remove weapons as you wish (More information in readme.txt file)
local menu_weapon1 = menu:AddButton({ icon = '', label = 'Batton', description = 'Equip weapon from loadout menu' })
local menu_weapon2 = menu:AddButton({ icon = '', label = 'Taser', description = 'Equip weapon from loadout menu' })
local menu_weapon3 = menu:AddButton({ icon = '', label = 'Compat Pistol', description = 'Equip weapon from loadout menu' })
local menu_weapon4 = menu:AddButton({ icon = '', label = 'Carbine Rifle', description = 'Equip weapon from loadout menu' })
local menu_removeallweapons = menu:AddButton({ icon = '', label = '~r~RETURN ALL WEAPONS', description = 'Unequip all weapons'})

-- Weapon and Vehicle Lists (Find more information in the readme.txt)
local weapon_list = {"WEAPON_KNIFE", "WEAPON_KNUCKLE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB", "WEAPON_CROWBAR", "WEAPON_BOTTLE", "WEAPON_DAGGER", "WEAPON_HATCHET", "WEAPON_MACHETE", "WEAPON_FLASHLIGHT", "WEAPON_SWITCHBLADE", "WEAPON_PISTOL", "WEAPON_PISTOL_MK2", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_PISTOL50", "WEAPON_SNSPISTOL", "WEAPON_HEAVYPISTOL", "WEAPON_VINTAGEPISTOL", "WEAPON_STUNGUN", "WEAPON_FLAREGUN", "WEAPON_MARKSMANPISTOL", "WEAPON_REVOLVER", "WEAPON_MICROSMG", "WEAPON_SMG", "WEAPON_MINISMG", "WEAPON_SMG_MK2", "WEAPON_ASSAULTSMG", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_COMBATMG_MK2", "WEAPON_COMBATPDW", "WEAPON_GUSENBERG", "WEAPON_RAYPISTOL", "WEAPON_MACHINEPISTOL", "WEAPON_ASSAULTRIFLE", "WEAPON_ASSAULTRIFLE_MK2", "WEAPON_CARBINERIFLE", "WEAPON_CARBINERIFLE_MK2", "WEAPON_ADVANCEDRIFLE", "WEAPON_SPECIALCARBINE", "WEAPON_BULLPUPRIFLE", "WEAPON_COMPACTRIFLE", "WEAPON_PUMPSHOTGUN", "WEAPON_SAWNOFFSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_MUSKET", "WEAPON_HEAVYSHOTGUN", "WEAPON_DBSHOTGUN", "WEAPON_SNIPERRIFLE", "WEAPON_HEAVYSNIPER", "WEAPON_HEAVYSNIPER_MK2", "WEAPON_MARKSMANRIFLE", "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_STINGER", "WEAPON_FIREWORK", "WEAPON_HOMINGLAUNCHER", "WEAPON_GRENADE", "WEAPON_STICKYBOMB", "WEAPON_PROXMINE", "WEAPON_MINIGUN", "WEAPON_RAILGUN", "WEAPON_POOLCUE", "WEAPON_BZGAS", "WEAPON_SMOKEGRENADE", "WEAPON_MOLOTOV", "WEAPON_FIREEXTINGUISHER", "WEAPON_PETROLCAN", "WEAPON_SNOWBALL", "WEAPON_FLARE", "WEAPON_BALL"}

-- Function for Weapon 1 in menu (Only recommended that you change the weapon model it spawns)
local weapon1 = {"WEAPON_NIGHTSTICK"}
menu_weapon1:On('select', function(item)
    for _, weapon1 in pairs(weapon1) do
        local _whash = GetHashKey(weapon1)
        GiveWeaponToPed(PlayerPedId(), _whash, 3000)
    end
end)

-- Function for Weapon 2 in menu (Only recommended that you change the weapon model it spawns)
local weapon2 = {"WEAPON_STUNGUN"}
menu_weapon2:On('select', function(item)
    for _, weapon2 in pairs(weapon2) do
        local _whash = GetHashKey(weapon2)
        GiveWeaponToPed(PlayerPedId(), _whash, 3000)
    end
end)

-- Function for Weapon 3 in menu (Only recommended that you change the weapon model it spawns)
local weapon3 = {"WEAPON_COMBATPISTOL"}
menu_weapon3:On('select', function(item)
    for _, weapon3 in pairs(weapon3) do
        local _whash = GetHashKey(weapon3)
        GiveWeaponToPed(PlayerPedId(), _whash, 3000)
    end
end)

-- Function for Weapon 4 in menu (Only recommended that you change the weapon model it spawns)
local weapon4 = {"WEAPON_CARBINERIFLE"}
menu_weapon4:On('select', function(item)
    for _, weapon4 in pairs(weapon4) do
        local _whash = GetHashKey(weapon4)
        GiveWeaponToPed(PlayerPedId(), _whash, 3000)
    end
end)

-- Remove all weapons function (Recommended not to touch this)
menu_removeallweapons:On('select', function(item)
    for _, weapon in pairs(weapon_list) do
        local _whash = GetHashKey(weapon)
        RemoveWeaponFromPed(PlayerPedId(), _whash)
    end
end)

-- This function allows the menu to open ...(REMEMBER TO FINISH LATER)
RegisterCommand("loadout", function()
    MenuV:OpenMenu(menu)
end)

-- What displays on the chat command (Command must match here aswell as above to work correctly)
TriggerEvent('chat:addSuggestion', '/loadout', 'Access Police Loadout Weapons Menu')