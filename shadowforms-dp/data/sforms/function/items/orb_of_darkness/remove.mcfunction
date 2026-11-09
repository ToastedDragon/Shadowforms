playsound sforms:item.orb_of_darkness.break player @a ~ ~ ~
tag @s remove sforms.orb_of_darkness_use
attribute @s step_height modifier remove sforms:orb_of_darkness
execute if predicate {entity:"this",type:"minecraft:entity_properties",predicate:{"minecraft:equipment":{mainhand:{predicates:{"minecraft:damage":{durability:0}}}}}} run item modify entity @s weapon.mainhand sforms:remove1
execute if predicate {entity:"this",type:"minecraft:entity_properties",predicate:{"minecraft:equipment":{offhand:{predicates:{"minecraft:damage":{durability:0}}}}}} run item modify entity @s weapon.offhand sforms:remove1
execute if predicate sforms:holding/orb_of_darkness/mainhand run item modify entity @s weapon.mainhand sforms:orb_of_darkness_lock
execute if predicate sforms:holding/orb_of_darkness/offhand run item modify entity @s weapon.offhand sforms:orb_of_darkness_lock