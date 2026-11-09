item modify entity @n[tag=sforms.gramophone,type=item_display] container.0 {"type": "set_components","components": {"item_model": "sforms:block/gramophone/record_of_soul"}}

execute as @e[tag=sforms.rune_spawner,distance=..40,type=marker] at @s run function sforms:blocks/urn/place

execute as @n[tag=sforms.gramophone,type=item_display] at @s run function sforms:blocks/gramophone/music/soul

scoreboard players set @s sforms.gramophone.record 2

title @a[distance=..40] times 0 40 20
title @a[distance=..40] title {translate:"item.sforms.record_of_soul.song_title",color:"aqua",shadow_color:-16108234}
title @a[distance=..40] subtitle {translate:"item.sforms.record_of_soul",color:"dark_gray"}

