# Set ritual ID
scoreboard players set @s sforms.heart_ritual 7

# Remove posteffect
function sforms:blocks/blackened_heart/common_visuals

# Show rune
title @a[distance=..10] times 0 60 20
title @a[distance=..10] title {translate:"chat.sforms.blackened_heart_ritual.cyan",font:"sforms:runes",color:"red",shadow_color:-12843768}
title @a[distance=..10] subtitle {text:"/ X / - /",font:"default",color:"red",shadow_color:-12843768}

item modify entity @e[distance=..10,type=#sforms:wears_armor] armor.* sforms:cyan_armor
execute as @e[distance=..10,type=#sforms:wears_armor] at @s run particle dust{color:[0.15,1,1],scale:1} ~ ~ ~ .8 .8 .8 .01 50