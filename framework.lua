NX = setmetatable({}, NX)
NX.__index = NX
NX.LocalPlayer = LocalPlayer.State
NX.Globals = GlobalState
NX.Resource = GetCurrentResourceName()

if(NX.Resource == 'nx') then
    function GetSharedObject()
        return NX
    end
    exports('get', GetSharedObject)
end


local function renameGlobalsToCamelCase()
    for key, value in pairs(_G) do
        if type(value) == "function" and key:match("^[A-Z][a-zA-Z0-9]*$") then
            local camelCaseKey = key:sub(1, 1):lower() .. key:sub(2)
            _G[camelCaseKey] = value
        end
    end
end

Citizen.CreateThread(renameGlobalsToCamelCase)