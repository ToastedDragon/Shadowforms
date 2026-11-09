scoreboard players remove @s sforms.urn.health 1
particle block_crumble{block_state:"blackstone"} ~ ~ ~ .5 .5 .5 .1 1
execute if entity @s[scores={sforms.urn.health=..0}] run function sforms:blocks/urn/break