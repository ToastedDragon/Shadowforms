# Set ritual ID
scoreboard players set @s sforms.heart_ritual 3

# Remove posteffect
function sforms:blocks/blackened_heart/common_visuals

# Show rune
title @a[distance=..10] times 0 60 20
title @a[distance=..10] title {translate:"chat.sforms.blackened_heart_ritual.healing",font:"sforms:runes",color:"red",shadow_color:-12843768}
title @a[distance=..10] subtitle {text:" X - X . /",font:"default",color:"red",shadow_color:-12843768}