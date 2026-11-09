execute as @e[predicate=sforms:in_dark,distance=0..,type=creeper] at @s if predicate {type:"random_chance",chance:.2} run playsound sforms:entity.shadowform.electricity hostile @a ~ ~ ~

schedule function sforms:entities/shadowforms/sounds/electric 5s replace