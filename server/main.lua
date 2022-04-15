
RegisterNetEvent('tnj-stealshoes:server:TheftShoe', function(playerId)
    local source = source
    local Player = ESX.GetPlayerFromId(source)
    local Receiver = ESX.GetPlayerFromId(playerId)
    if Receiver then 
        TriggerClientEvent("tnj-stealshoes:client:StoleShoe", Receiver.source, Player.source)
    end
end)

RegisterNetEvent('tnj-stealshoes:server:Complete', function(playerId)
    local source = source
    local Player = ESX.GetPlayerFromId(source)
    local Receiver = ESX.GetPlayerFromId(playerId)
    if Receiver then
        Receiver.addWeapon('weapon_shoe', 1)
    end
end)
