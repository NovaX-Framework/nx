NX.Callbacks = {}
function NX.TriggerCallback(name, cb, ...)
    NX.Callbacks[name] = cb
    TriggerServerEvent("nx:server:triggerCallback", name, ...)
end

RegisterNetEvent("nx:client:triggerCallback")
AddEventHandler("nx:client:triggerCallback", function(name, ...)
    NX.Callbacks[name](...)
end)