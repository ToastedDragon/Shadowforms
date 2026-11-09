execute if predicate sforms:in_dark run function sforms:entities/regular_shadowform_transform/transform_shadow
execute if predicate sforms:in_light run function sforms:entities/regular_shadowform_transform/transform_weak

execute unless predicate sforms:in_dark if entity @s[tag=sforms.shadowed] at @s run function sforms:entities/shadowforms/remove_effects