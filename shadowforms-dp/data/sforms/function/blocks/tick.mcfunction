# Blackened Heart handling
execute as @a[scores={sforms.used_armor_stand=1..}] at @s run function sforms:blocks/scan_armor_stand
execute as @e[tag=sforms.placed_heart,distance=0..,type=interaction] at @s run function sforms:blocks/blackened_heart/tick

execute as @e[tag=sforms.gramophone,type=interaction] at @s run function sforms:blocks/gramophone/tick

scoreboard players set @a sforms.used_armor_stand 0