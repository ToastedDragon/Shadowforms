execute store result score @s sforms.gramophone.mod_random run compute default integer {type:"uniform",max:8,min:1}
execute if score @s sforms.gramophone.mod_random matches 1 run function sforms:blocks/gramophone/mod/nocturne
execute if score @s sforms.gramophone.mod_random matches 2 run function sforms:blocks/gramophone/mod/acceso
execute if score @s sforms.gramophone.mod_random matches 3 run function sforms:blocks/gramophone/mod/encore
execute if score @s sforms.gramophone.mod_random matches 4 run function sforms:blocks/gramophone/mod/arioso
execute if score @s sforms.gramophone.mod_random matches 5 run function sforms:blocks/gramophone/mod/improvvisato
execute if score @s sforms.gramophone.mod_random matches 6 run function sforms:blocks/gramophone/mod/adagietto