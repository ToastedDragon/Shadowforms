execute as @n[tag=sforms.gloombloom_bulb,distance=0..,type=interaction] at @s run loot spawn ~ ~ ~ loot sforms:blocks/gloombloom_bulb
execute as @n[tag=sforms.gloombloom_bulb,distance=0..,type=item_display] run kill @s
execute as @n[tag=sforms.gloombloom_bulb,distance=0..,type=interaction] run kill @s
advancement revoke @s only sforms:technical/player_hit_gloombloom

execute as @e[tag=sforms.gloombloom,distance=..7,type=interaction] at @s run function sforms:blocks/gloombloom/bulb/remove