loot spawn ~ ~ ~ loot sforms:items/blackened_heart
kill @n[distance=0..,tag=sforms.placed_heart,type=minecraft:item_display]
execute as @a[tag=sforms.shader.ritual] run function sforms:shaders/ritual/deactivate
kill @s