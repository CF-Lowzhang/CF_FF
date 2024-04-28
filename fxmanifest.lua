fx_version 'cerulean'
game 'gta5'

description 'CrystalFall_FF_menu '
Author 'LowZhang'

lua54 'yes'
version '1.0.0'

dependencies {
    'es_extended',
    'oxmysql'
}

shared_scripts {
    '@es_extended/imports.lua',
    '@es_extended/locale.lua',
    '@ox_lib/init.lua',
}


client_scripts {
    "config.lua",
    "FF_menu.lua",
    "functions.lua",
}



ui_page "html/FF_menu.html"

files {
    "html/FF_menu.html",
    "html/F1_menu.css",
    "html/F1_img/*.png",
    "html/F3_app.js",
    "html/F3_menu.css",
    
}

