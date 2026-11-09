function cnk:cookbook/database/set/main {flag:"item.minecraft.fermented_spider_eye"}
execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only sformsxcnk:cookbook/fermented_spider_eye/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only sformsxcnk:cookbook/fermented_spider_eye/toast