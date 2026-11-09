title @a[distance=..40] times 0 20 10
title @a[distance=..40] title {translate:"block.sforms.gramophone.mod.encore",color:"aqua",shadow_color:-16108234}
title @a[distance=..40] subtitle {translate:"block.sforms.gramophone.mod",color:"dark_gray"}

execute as @e[tag=sforms.urn_spawn_point,distance=..50,type=marker] at @s unless entity @n[tag=sforms.urn,distance=..1.5,type=item_display] run function sforms:blocks/urn/place