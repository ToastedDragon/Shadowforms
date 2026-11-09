rotate @s facing entity @n[tag=sforms.placed_heart,distance=0..]
tp @s ^ ^ ^0.1
scoreboard players remove @s sforms.particle.lifetime 1
execute if entity @s[scores={sforms.particle.lifetime=0}] run kill @s