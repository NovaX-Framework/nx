NX.Callbacks = {}

function NX.RegisterCallback(name, func)
    
    NX.Callbacks[name] = func
end

RegisterNetEvent("nx:server:triggerCallback")
AddEventHandler("nx:server:triggerCallback", function(name, ...)
    TriggerClientEvent("nx:client:triggerCallback", source, name, NX.Callbacks[name](source, ...))
end)