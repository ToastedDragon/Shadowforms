execute as @n[advancements={sforms:technical/kill_sacrificial_mob/horse=true}] at @s as @n[type=marker,tag=sforms.sacrificial_altar,distance=..5] at @s run loot spawn ~ ~.2 ~ loot sforms:items/sacrificial_heart/horse

advancement revoke @a only sforms:technical/kill_sacrificial_mob/horse