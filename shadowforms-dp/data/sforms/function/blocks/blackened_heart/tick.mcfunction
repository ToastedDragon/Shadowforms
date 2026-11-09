# Check for blocks
execute if data entity @s interaction unless entity @s[scores={sforms.heart_ritual=-1}] run function sforms:blocks/blackened_heart/ritual_animation
execute as @s[scores={sforms.blheart_timer=1..}] run scoreboard players remove @s sforms.blheart_timer 1
execute as @s[scores={sforms.blheart_timer=0}] at @s run function sforms:blocks/blackened_heart/check_for_rituals