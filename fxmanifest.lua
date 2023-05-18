fx_version 'adamant'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'

name 'SY_KILLFEED'
author '𝐒 𝐘 𝐍 𝐎#1760'
version '1.0'
license 'GNU General Public License v3.0'
repository 'https://github.com/SYNO-SY/SY_Killfeed'
description 'A Fivem Killfeed System'

ui_page 'web/index.html'

shared_scripts {
	'config.lua',
}

client_scripts {
	'client/*.lua',
}
server_scripts {
	'server/*.lua',
}

files {
	'web/*.*',
	'web/weapons/*.png'
}
