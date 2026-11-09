loot spawn ~ ~ ~ loot sforms:gameplay/structures/mortuary
particle block_crumble{block_state:"blackstone"} ~ ~ ~ .3 .3 .3 .1 10
particle soul ~ ~ ~ .5 .5 .5 .01 5
setblock ~ ~ ~ air
tag @n[tag=sforms.urn,tag=!sforms.urn.active,distance=2..40,sort=random,type=item_display] add sforms.urn.active
execute unless entity @n[tag=sforms.urn.active,distance=2..40,type=item_display] as @n[distance=0..,tag=sforms.gramophone,type=interaction] at @s run function sforms:blocks/gramophone/reset
kill @s