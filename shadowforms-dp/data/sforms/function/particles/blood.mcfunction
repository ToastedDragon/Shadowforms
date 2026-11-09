# Move towards heart
execute unless entity @n[type=item_display,tag=sforms.placed_heart,distance=...1] run function sforms:particles/blood_move
execute if entity @n[type=item_display,tag=sforms.placed_heart,distance=...1] run kill @s