NX.Callbacks = {}

function NX.RegisterCallback(name, func)
    if(NX.Callbacks[name]) then
        print('NX: Callback "' .. name .. '" already exists')
    end
    NX.Callbacks[name] = func
end

function NX.HandleCallback(name, ...)
    if(not NX.Callbacks[name]) then
        print('NX: Callback "' .. name .. '" does not exist')
        return
    end
    local playerId = tonumber(source)
    triggerClientEvent('nx:client:triggerCallback', playerId, name, NX.Callbacks[name](playerId, ...))
end

registerNetEvent('nx:server:triggerCallback', NX.HandleCallback)
