# spawns 2 markers so if you have a big field, you get more out of it but even if you have a smaller field you still get things to happen
# summon marker, max range 40
summon marker ~ ~ ~ {Tags:["sforms.placed_heart.process_marker"]}
spreadplayers ~ ~ 30 40 false @n[tag=sforms.placed_heart.process_marker,distance=0..,type=marker]
execute as @e[tag=sforms.placed_heart.process_marker,distance=0..,type=marker] at @s run function sforms:blocks/blackened_heart/active_ritual/process_grow

# summon marker, max range 20
summon marker ~ ~ ~ {Tags:["sforms.placed_heart.process_marker"]}
spreadplayers ~ ~ 15 20 false @n[tag=sforms.placed_heart.process_marker,distance=0..,type=marker]
execute as @e[tag=sforms.placed_heart.process_marker,distance=0..,type=marker] at @s run function sforms:blocks/blackened_heart/active_ritual/process_grow