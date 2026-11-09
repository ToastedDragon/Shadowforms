execute as @e[tag=sforms.gloombloom,distance=0..,type=item_display] at @s run function sforms:blocks/gloombloom/check_growth
execute as @e[tag=sforms.gloombloom_bulb,distance=0..,type=minecraft:interaction] at @s run function sforms:blocks/gloombloom/bulb/expand
execute as @e[tag=sforms.gloombloom_bulb,distance=0..,type=minecraft:item_display] at @s run particle minecraft:ash ~ ~1 ~ 0 .5 0 .01 45 force
schedule function sforms:blocks/gloombloom/growth_timer 6000t