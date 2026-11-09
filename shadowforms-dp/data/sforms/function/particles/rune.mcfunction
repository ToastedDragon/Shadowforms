# Kill finished particles
execute if score @s sforms.particle.rune matches 6 run kill @s

# Increment score
execute unless score @s sforms.particle.rune matches 6 run scoreboard players add @s sforms.particle.rune 1

# Update text
data merge entity @n[type=minecraft:text_display,tag=sforms.particle.rune] {text:{score:{name:"@s",objective:"sforms.particle.rune"},font:"sforms:runes",color: "#ba1414"}}

rotate @s facing entity @n[tag=sforms.blhanim.s1]
tp @s ~ ~-.1 ~
tp @s ^ ^ ^.1