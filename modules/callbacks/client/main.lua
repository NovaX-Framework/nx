NX.Callbacks = {}

---@param name string
---@param cb fun(...:any)
---@param ... any
function NX.TriggerCallback(name, cb ...)
    if(not NX.Callbacks[tostring(name)])then
        print('NX: Callback not found: '..tostring(name))
        return
    end
    NX.Callbacks[name] = cb
    triggerServerEvent('nx:server:triggerCallback', name, ...)
end

---@param name string
---@param ... any
function NX.HandleCallback(name, ...)
    if(not NX.Callbacks[tostring(name)])then
        print('NX: Callback not found: '..tostring(name))
        return
    end
    NX.Callbacks[tostring(name)](...)
    NX.Callbacks[tostring(name)] = nil
end

registerNetEvent('nx:client:triggerCallback', NX.HandleCallback)