function cnk:cookbook/database/set/main {flag:"item.sforms.shade_hide"}
execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only sformsxcnk:cookbook/shade_hide/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only sformsxcnk:cookbook/shade_hide/toast