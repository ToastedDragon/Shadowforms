effect give @s speed 1 2 true
effect give @s strength 1 2 true
effect give @s invisibility 2 1 true
execute if predicate sforms:in_light run effect give @s poison 1 3 true

tag @s add sforms.shadowed

function sforms:entities/shadowforms/particles/base