execute on target at @s run function sforms:particles/spawn_blood_spread
execute on target run damage @s 15 sforms:blood_sacrifice
playsound sforms:block.blackened_heart.blood_sacrifice block @a ~ ~ ~

data remove entity @s interaction
# RITUAL CHECKING STARTS HERE
# SET A TIMER, TURN ON POSTEFFECT
execute as @a[distance=..10] at @s run function sforms:shaders/ritual/activate

scoreboard players set @s sforms.heart_ritual -1
scoreboard players set @s sforms.blheart_timer 100