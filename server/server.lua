RegisterServerEvent('SY_Killfeed:onPlayerDead')
AddEventHandler('SY_Killfeed:onPlayerDead', function(data)
    data.victim = GetPlayerName(source)
    data.killerServerId = GetPlayerName(data.killerServerId)

    if data.killedByPlayer then
        TriggerClientEvent('SY_Killfeed:ShowUi', -1, data)
    end
end)
