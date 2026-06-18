## TICK

# Check everyone
execute as @e[tag=!sforms.checked,tag=!smithed.entity,distance=0..,type=#sforms:evil] at @s run function sforms:variant

# Blood particles
execute as @e[tag=sforms.particle.blood,distance=0..,type=text_display] at @s run function sforms:particles/blood
execute as @e[tag=sforms.particle.rune,distance=0..,type=text_display] at @s run function sforms:particles/rune

execute as @a at @s run function sforms:entities/player/tick

execute as @e[type=arrow,tag=sforms.shimmer_shot_arrow] at @s run function sforms:items/ancient_enchantments/shimmer_shot_ticking

execute as @e[distance=0..,type=snowball] if data entity @s Item.components.minecraft:custom_data{sforms:{id:"gloombloom_blossom"}} at @s run tag @s add sforms.gloombloom_blossom

execute as @e[tag=sforms.gloombloom_blossom,distance=0..,type=marker] at @s unless function sforms:items/gloombloom_blossom/if_rides run function sforms:items/gloombloom_blossom/explode