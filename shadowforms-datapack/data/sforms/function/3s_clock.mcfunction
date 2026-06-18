execute as @e[distance=0..,tag=sforms.sacrificial_altar,type=marker] at @s run function sforms:3s_clock_line_2

execute as @e[tag=sforms.postgen.smog,type=marker] at @s if entity @a[distance=..100] run function sforms:worldgen/smog/biome

schedule function sforms:3s_clock 3s replace