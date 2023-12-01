Config = {}
Config.frequency = 5 * 1000 --Seconds between each check
Config.threshold = 3600 * 1000 --Seconds a vehicle has to be unoccupied before it gets deleted

CreateThread(function()
    while true do
        Wait(Config.frequency)
        local timer = GetGameTimer()
        for _, veh in pairs(GetAllVehicles()) do
            local ent = Entity(veh)
            if ent then
                local driver = GetPedInVehicleSeat(veh, -1)
                if driver ~= 0 and IsPedAPlayer(driver) then
                    ent.state:set('deletionTimer', timer, false)
                elseif ent.state.deletionTimer and timer - ent.state.deletionTimer > Config.threshold then
                    DeleteEntity(ent)
                end
            end
        end
    end
end)