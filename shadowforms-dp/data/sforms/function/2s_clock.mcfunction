execute as @e[tag=sforms.placed_heart,distance=0..,scores={sforms.heart_ritual=3},type=interaction] at @s run effect give @a[distance=..15] instant_health 1 1

execute as @e[predicate=sforms:item/diamond,distance=0..,type=item] at @s run function sforms:ritual/sacrifice/set_altar

schedule function sforms:2s_clock 40 replace