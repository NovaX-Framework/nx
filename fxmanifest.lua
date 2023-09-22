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
    "modules/**/client/*"
}

server_scripts {
    "server/import.lua",
    "server/functions.lua",
    "server/main.lua",
    "modules/**/server/*"
}