playsound sforms:block.blackened_heart.speak block @a ~ ~ ~
playsound sforms:block.blackened_heart.fail block @a ~ ~ ~
execute as @n[distance=0..,tag=sforms.placed_heart,type=item_display] run scoreboard players reset @s sforms.blheart_timer
#execute as @n[distance=0..,tag=sforms.placed_heart,type=item_display] run item modify entity @s container.0 sforms:failed_blackened_heart

title @a[distance=..10] times 0 60 20
title @a[distance=..10] title {translate:"a",font:"sforms:runes",color:"red",shadow_color:-12843768,obfuscated:true}
title @a[distance=..10] subtitle {translate:"chat.sforms.blackened_heart.fail",font:"default",color:"red",shadow_color:-12843768}

function sforms:shaders/ritual/deactivate