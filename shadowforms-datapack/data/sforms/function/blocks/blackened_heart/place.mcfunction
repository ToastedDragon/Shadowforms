execute align xyz positioned ~.5 ~ ~.5 rotated 0 ~ run summon item_display ~ ~.6 ~ {item:{id:"armor_stand",count:1b,components:{"minecraft:item_model": "sforms:block/blackened_heart/regular"}},Tags:["sforms.placed_heart","smithed.block","smithed.entity","smithed.strict"],teleport_duration:20,}
summon minecraft:interaction ~ ~ ~ {width:1f,height:1f,Tags:[sforms.placed_heart],response:1b}
scoreboard players set @n[distance=0..,tag=sforms.placed_heart,type=item_display] sforms.heart_ritual 0
kill @s