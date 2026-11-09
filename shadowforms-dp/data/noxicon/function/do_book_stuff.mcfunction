execute if entity @s[scores={noxicon.flip_page= 1}] run function noxicon:next_page
execute if entity @s[scores={noxicon.flip_page= 100}] run function noxicon:open_toc_page_trigger
execute if entity @s[scores={noxicon.flip_page= -1}] run function noxicon:prev_page
execute if entity @s[scores={noxicon.flip_page= 2..}] run function noxicon:open_specific_page
execute if entity @s[scores={noxicon.exit_dialog=1}] run function noxicon:close
scoreboard players set @s noxicon.exit_dialog 0