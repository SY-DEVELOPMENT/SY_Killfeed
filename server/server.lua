ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('SY_Killfeed:onPlayerDead')
AddEventHandler('SY_Killfeed:onPlayerDead', function(data)
    local victim = ESX.GetPlayerFromId(source)
    local killer = ESX.GetPlayerFromId(data.killerServerId)
    data.victim = victim.getName()
    data.killerServerId = killer.getName()

    if data.killedByPlayer then
        TriggerClientEvent('SY_Killfeed:ShowUi', -1, data)
    end
end)
