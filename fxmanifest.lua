fx_version 'cerulean'
games { 'gta5' }
author 'NovaX Framework'

lua54 'yes'

shared_scripts {
    "config.lua",
    "shared/*"

}

client_scripts {
    "client/import.lua",
    "client/functions.lua",
    "client/main.lua",
    "modules/callbacks/client/*.lua",
    "modules/player/client/*.lua",
    "modules/spawn/client/*.lua"
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "server/import.lua",
    "server/functions.lua",
    "server/main.lua",
    "modules/callbacks/server/*.lua",
    "modules/player/server/*.lua",
    "modules/spawn/server/*.lua"
}