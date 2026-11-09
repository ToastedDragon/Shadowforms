### Shadowform particles
particle minecraft:squid_ink ~ ~.3 ~ 0.3 0.6 0.3 0.01 20 force

execute if entity @s[type=#sforms:electric] run function sforms:entities/shadowforms/particles/electric
execute if entity @s[type=#sforms:heat] run function sforms:entities/shadowforms/particles/heat
execute if entity @s[type=#sforms:cold] run function sforms:entities/shadowforms/particles/frost