function cnk:cookbook/database/set/main {flag:"item.sforms.gloombloom_blossom"}
execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only sformsxcnk:cookbook/gloombloom_blossom/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only sformsxcnk:cookbook/gloombloom_blossom/toast
