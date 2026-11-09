execute align xyz positioned ~.5 ~ ~.5 rotated 0 ~ run summon item_display ~ ~.5 ~ {item:{id:"barrier",components:{"minecraft:item_model": "sforms:block/urn"},count:1b},Tags:["sforms.urn","smithed.block","smithed.entity","smithed.strict"]}
setblock ~ ~ ~ barrier
scoreboard players set @n[distance=0..,type=item_display] sforms.urn.health 6