tag @s add sforms.mortuary_enemy
loot replace entity @s armor.head loot sforms:equipment/mortuary/helmet
loot replace entity @s armor.chest loot sforms:equipment/mortuary/chestplate
loot replace entity @s[predicate=sforms:holding/sword] weapon loot sforms:equipment/mortuary/melee
loot replace entity @s[predicate=sforms:holding/bow] weapon loot sforms:equipment/mortuary/ranged

execute store result score @s sforms.gramophone.mod_random run compute default integer {type:"uniform",max:8,min:1}
execute if score @s sforms.gramophone.mod_random matches 1 run effect give @s weaving infinite 1 false
execute if score @s sforms.gramophone.mod_random matches 2 run effect give @s wind_charged infinite 1 false

particle trial_spawner_detection ~ ~ ~ 1 0.1 1 .01 5
particle soul ~ ~ ~ .1 .1 .1 .1 1