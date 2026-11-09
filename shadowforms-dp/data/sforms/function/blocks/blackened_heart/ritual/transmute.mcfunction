# Set ritual ID
scoreboard players set @s sforms.heart_ritual 7

# Remove posteffect
function sforms:blocks/blackened_heart/common_visuals

# Show rune
title @a[distance=..10] times 0 60 20
title @a[distance=..10] title {translate:"chat.sforms.blackened_heart_ritual.transmute",font:"sforms:runes",color:"red",shadow_color:-12843768}
title @a[distance=..10] subtitle {text:". - / / / X",font:"default",color:"red",shadow_color:-12843768}

setblock ~2 ~ ~2 crying_obsidian
setblock ~-2 ~ ~2 crying_obsidian
setblock ~2 ~ ~-2 crying_obsidian
setblock ~-2 ~ ~-2 crying_obsidian

execute as @n[distance=..4,type=item] at @s run function sforms:blocks/blackened_heart/active_ritual/transmute