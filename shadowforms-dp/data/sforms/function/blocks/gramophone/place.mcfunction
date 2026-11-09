execute align xyz positioned ~.5 ~ ~.5 rotated 0 ~ run summon item_display ~ ~.5 ~ {item:{id:"barrier",components:{"minecraft:item_model": "sforms:block/gramophone"},count:1b},Tags:["sforms.gramophone","smithed.block","smithed.entity","smithed.strict"]}
setblock ~ ~ ~ barrier
execute align xyz positioned ~.5 ~ ~.5 rotated 0 ~ run summon minecraft:interaction ~ ~ ~ {width:1.25f,height:2f,Tags:["sforms.gramophone"],response:1b}
scoreboard players set @n[tag=sforms.gramophone,distance=0..,type=interaction] sforms.gramophone.record 1