playsound sforms:block.blackened_heart.ritual.succeed block @a ~ ~ ~
playsound sforms:block.blackened_heart.speak master @a ~ ~ ~
execute as @n[distance=0..,tag=sforms.placed_heart,type=item_display] run item modify entity @s container.0 sforms:beating_blackened_heart
execute as @n[distance=0..,tag=sforms.placed_heart,type=item_display] run scoreboard players reset @s sforms.blheart_timer

particle witch ~ ~ ~ .2 .2 .2 0.1 5

# Remove posteffect
function sforms:shaders/ritual/deactivate