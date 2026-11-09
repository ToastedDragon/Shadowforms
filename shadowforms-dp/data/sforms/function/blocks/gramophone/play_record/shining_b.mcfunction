item modify entity @n[tag=sforms.gramophone,type=item_display] container.0 {"type": "set_components","components": {"item_model": "sforms:block/gramophone/record_of_shining"}}

execute unless entity @e[type=item_display,distance=..40,tag=sforms.urn] as @e[tag=sforms.urn_spawn_point,distance=..40,type=marker] at @s run function sforms:blocks/urn/place

execute as @n[tag=sforms.gramophone,type=item_display] at @s run function sforms:blocks/gramophone/music/shining

scoreboard players set @s sforms.gramophone.record 14

title @a[distance=..40] times 0 40 20
title @a[distance=..40] title {translate:"item.sforms.record_of_shining.song_title",color:"aqua",shadow_color:-16108234}
title @a[distance=..40] subtitle {translate:"item.sforms.record.b_side",color:"dark_aqua"}

advancement grant @a[distance=..40] only sforms:mortuary_b_side

execute on target run item modify entity @s weapon.mainhand sforms:remove1