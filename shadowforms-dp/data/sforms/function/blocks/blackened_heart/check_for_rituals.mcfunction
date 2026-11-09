scoreboard players reset @s sforms.blheart_timer
function #sforms:blackened_heart_rituals
execute if score @s sforms.heart_ritual matches -1 run function sforms:blocks/blackened_heart/ritual_fail