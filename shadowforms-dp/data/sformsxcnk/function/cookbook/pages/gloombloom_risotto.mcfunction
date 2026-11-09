execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_cookbook_page cnk.dummy

data modify storage cnk:temp register.tool set value "cnk.cooking_pot"
data modify storage cnk:temp register.page_name set value "item.sforms.gloombloom_risotto"
data modify storage cnk:temp register.recipe_icon_font set value "sformsxcnk:icons"
data modify storage cnk:temp register.ingredients set value [ \
    {key:"item.minecraft.fermented_spider_eye", font:"sformsxcnk:icons"}, \
    {key:"item.cnk.rice", font:"cnk.book:icons"}, \
    {key:"item.sforms.gloombloom_blossom", font:"sformsxcnk:icons"}, \
]

data modify storage cnk:temp register.source set value {key:"sformsxcnk.source", font:"sformsxcnk:icons"}

function cnk:cookbook/pages/register