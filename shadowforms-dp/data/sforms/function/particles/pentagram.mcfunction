# Kill finished particles
execute if score @s sforms.particle.pentagram matches 6 run kill @s

# Increment score
execute unless score @s sforms.particle.pentagram matches 6 run scoreboard players add @s sforms.particle.pentagram 1

# Update text
data merge entity @n[type=minecraft:text_display,tag=sforms.particle.pentagram] {text:{score:{name:"@s",objective:"sforms.particle.pentagram"},font:"sforms:runes",color: "#ff0000"}}

tp @s ~ ~.1 ~