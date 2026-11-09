execute align xyz positioned ~.5 ~ ~.5 rotated 0 ~ run summon item_display ~ ~.5 ~ {item:{id:"barrier",components:{"minecraft:item_model": "sforms:block/gloombloom_bulb"},count:1b},Tags:[sforms.gloombloom_bulb]}
execute align xyz positioned ~.5 ~ ~.5 rotated 0 ~ run summon minecraft:interaction ~ ~ ~ {width:1f,height:1f,Tags:["sforms.gloombloom_bulb","smithed.block","smithed.entity","smithed.strict"],response:1b}

execute positioned ~1 ~ ~ if block ~ ~ ~ #air unless entity @n[type=interaction,tag=sforms.gloombloom,distance=...1] run function sforms:blocks/gloombloom/place
execute positioned ~-1 ~ ~ if block ~ ~ ~ #air unless entity @n[type=interaction,tag=sforms.gloombloom,distance=...1] run function sforms:blocks/gloombloom/place
execute positioned ~ ~ ~1 if block ~ ~ ~ #air unless entity @n[type=interaction,tag=sforms.gloombloom,distance=...1] run function sforms:blocks/gloombloom/place
execute positioned ~ ~ ~-1 if block ~ ~ ~ #air unless entity @n[type=interaction,tag=sforms.gloombloom,distance=...1] run function sforms:blocks/gloombloom/place

kill @s