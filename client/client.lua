local menu = MenuV:CreateMenu('Couleur Phares', 'Choissez une couleur', 'topleft', 255, 180, 0)
local currentHeadlightsId = -1

for key, color in pairs(LexConfig.colors) do
    local checkbox = menu:AddButton({ label = color.label })
    checkbox:On('select', function(item)
        if currentHeadlightsId ~= color.id then
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            ChangeHeadlightsColor(veh, color.id)
            currentHeadlightsId = color.id
        end
    end)
end

RegisterNetEvent('lexinor:usedRGBKit')
AddEventHandler('lexinor:usedRGBKit', function (allowed)
    if allowed then
        MenuV:OpenMenu(menu)
    end
end)

function ChangeHeadlightsColor(vehicle, colorId)
    ToggleVehicleMod(vehicle, 22, true)
    SetVehicleHeadlightsColour(vehicle, colorId)
end