execute as @e[tag=sforms.placed_heart,type=interaction] at @s if predicate {type:"random_chance",chance:.4} run playsound sforms:block.blackened_heart.speak block @a ~ ~ ~

schedule function sforms:blocks/blackened_heart/60s_timer 60s replace