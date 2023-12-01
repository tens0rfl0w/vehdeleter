fx_version 'cerulean'
game 'gta5'

name "vehdeleter"
description "Deletes unoccupied vehicles with the use of statebags and game timers"
author "tens0rfl0w"
version "1.0.0"

server_only 'yes'

lua54 'yes'
use_fxv2_oal 'yes'

server_script 'server.lua'

dependencies { '/onesync' }