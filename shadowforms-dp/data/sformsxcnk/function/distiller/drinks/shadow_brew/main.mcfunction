# its possible, if you're using loot tables, that you need to add handling for when the player's inventory is full. cnk provides a predicate to check for that, see the example code below:
execute if entity @s[predicate=cnk:inventory_full] run return run loot spawn ~ ~ ~ loot sforms:items/shadow_brew
loot give @s loot sforms:items/shadow_brew