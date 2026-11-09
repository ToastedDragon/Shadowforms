execute on target unless predicate sforms:holding/record/b_side if predicate sforms:holding/record/record_of_hurt as @n[distance=0..,tag=sforms.gramophone,type=interaction] at @s run function sforms:blocks/gramophone/play_record/hurt
execute on target unless predicate sforms:holding/record/b_side if predicate sforms:holding/record/record_of_soul as @n[distance=0..,tag=sforms.gramophone,type=interaction] at @s run function sforms:blocks/gramophone/play_record/soul
execute on target unless predicate sforms:holding/record/b_side if predicate sforms:holding/record/record_of_flame as @n[distance=0..,tag=sforms.gramophone,type=interaction] at @s run function sforms:blocks/gramophone/play_record/flame
execute on target unless predicate sforms:holding/record/b_side if predicate sforms:holding/record/record_of_shining as @n[distance=0..,tag=sforms.gramophone,type=interaction] at @s run function sforms:blocks/gramophone/play_record/shining

execute on target if predicate sforms:holding/record/b_side if predicate sforms:holding/record/record_of_hurt as @n[distance=0..,tag=sforms.gramophone,type=interaction] at @s run function sforms:blocks/gramophone/play_record/hurt_b
execute on target if predicate sforms:holding/record/b_side if predicate sforms:holding/record/record_of_soul as @n[distance=0..,tag=sforms.gramophone,type=interaction] at @s run function sforms:blocks/gramophone/play_record/soul_b
execute on target if predicate sforms:holding/record/b_side if predicate sforms:holding/record/record_of_flame as @n[distance=0..,tag=sforms.gramophone,type=interaction] at @s run function sforms:blocks/gramophone/play_record/flame_b
execute on target if predicate sforms:holding/record/b_side if predicate sforms:holding/record/record_of_shining as @n[distance=0..,tag=sforms.gramophone,type=interaction] at @s run function sforms:blocks/gramophone/play_record/shining_b

execute unless score @s sforms.gramophone.record matches 0 run function sforms:blocks/gramophone/activate_urns