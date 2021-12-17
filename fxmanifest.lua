fx_version "cerulean"
game "gta5"

author "Lexinor"
description "Headlight Scripts by Lexinor"
version "0.1.0"



client_scripts {
    "@menuv/menuv.lua",
    "client/*.lua",
}

server_scripts {
    "server/*.lua"
}

shared_scripts {
    "shared/*.lua"
}


dependencies {
    "menuv"
}