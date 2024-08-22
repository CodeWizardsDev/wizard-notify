fx_version 'cerulean'
game 'gta5'

author 'The_Hs5'
description 'Wizard Development Team Notification System'
version '1.0.0'

ui_page 'web/index.html'


shared_script 'config.lua'
client_script 'client.lua'

files {
    'web/index.html',
    'web/index.css',
    'web/index.js',
    'img/*.*',
}

export 'Send'

lua54 'yes'