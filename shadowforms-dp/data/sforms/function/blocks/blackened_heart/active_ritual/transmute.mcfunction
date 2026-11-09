execute if predicate sforms:item/amethyst_shard run item modify entity @s contents {type:"set_item",item:"echo_shard"}
execute if predicate sforms:item/compass run item modify entity @s contents {type:"set_item",item:"recovery_compass"}
execute if predicate sforms:item/ender_pearl run loot replace entity @s contents loot sforms:items/orb_of_darkness
execute if predicate sforms:item/music_disc run loot replace entity @s contents loot sforms:items/records/random
execute if predicate sforms:item/record run item modify entity @s contents [{type:"set_enchantments",enchantments:{"sforms:b_side":1}},{type:"set_components","components":{"enchantment_glint_override":true}}]
execute if predicate sforms:item/music_disc_macabre run loot replace entity @s contents loot sforms:items/music_disc_macabrebox

particle portal ~ ~ ~ .25 .25 .25 .1 10
playsound sforms:block.blackened_heart.transmute block @a ~ ~ ~