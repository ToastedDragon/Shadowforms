data remove entity @s interaction
data merge entity @n[type=item_display,tag=sforms.gloombloom] {item:{components:{item_model:"sforms:block/gloombloom"}}}
tag @s remove sforms.gloombloom.grown
loot spawn ~ ~ ~ loot sforms:gameplay/blocks/gloombloom_shear