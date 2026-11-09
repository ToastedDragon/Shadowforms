scoreboard players set @s sforms.shadowed_time 200
advancement revoke @s only sforms:technical/shadow_brew
tag @s remove sforms.shadow_brew_drinker
execute if predicate sforms:holding/shadow_brew/offhand run item replace entity @s weapon.offhand with glass_bottle
execute if predicate sforms:holding/shadow_brew/mainhand run item replace entity @s weapon.mainhand with glass_bottle