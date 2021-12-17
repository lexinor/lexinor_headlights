ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem("rgb_kit", function(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    local item = xPlayer.getInventoryItem("rgb_kit")
    if item ~= nil then
        xPlayer.triggerEvent('lexinor:usedRGBKit', true)
    end
end)