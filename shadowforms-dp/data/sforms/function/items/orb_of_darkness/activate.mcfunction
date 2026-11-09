execute if predicate sforms:holding/orb_of_darkness/mainhand if predicate {"type":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"mainhand":{"predicates":{"minecraft:damage":{"durability":0}}}}}} run item replace entity @s weapon.mainhand with air
execute if predicate sforms:holding/orb_of_darkness/offhand if predicate {"type":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"predicates":{"minecraft:damage":{"durability":0}}}}}} run item replace entity @s weapon.offhand with air
item modify entity @s weapon.mainhand sforms:orb_of_darkness_activate
scoreboard players set @s sforms.shadowed_time 200
tag @s add sforms.orb_of_darkness_use
attribute @s step_height modifier add sforms:orb_of_darkness 0.4 add_value

playsound sforms:item.orb_of_darkness.use player @a ~ ~ ~