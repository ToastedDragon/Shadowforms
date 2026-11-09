# woah! more compliciated!

# these remove the items from the distiller, just like the cooking pot. once again some helper functions exist for generic items
function cnk:recipes/distiller/generic/water

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{sforms:{id:"shade_hide"}}}}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

# these set the values that are going to be output to the basin

# sets the colour of the liquid to be output, this is the colour that will also appear in the basin
# the minecraft wiki has a useful tool for converting colours to decimal format
# https://minecraft.wiki/w/Data_component_format#custom_model_data
data modify storage cnk:temp distiller.color set value 4525657

# sets the callback function that will be called when a player uses a glass bottle on the basin with liquid in it
data modify storage cnk:temp distiller.callback set value "sformsxcnk:distiller/drinks/shadow_brew/main"

# sets the liquid type, used in the liquid_check functions so must match
data modify storage cnk:temp distiller.liquid set value "shadow_brew"

# MUST be called, handles animations and setting the data on the basin
function cnk:distiller/crafting/finish_distilling