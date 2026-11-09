scoreboard objectives add sforms.wfoas minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add sforms.used_snowball minecraft.used:minecraft.snowball
scoreboard objectives add sforms.opened_noxicon minecraft.used:minecraft.written_book
scoreboard objectives add sforms.shadowed_time dummy
scoreboard objectives add sforms.has_ritualed dummy
scoreboard objectives add sforms.heart_ritual dummy
scoreboard objectives add sforms.blheart_timer dummy
scoreboard objectives add sforms.used_armor_stand used:armor_stand
scoreboard objectives add sforms.particle.pentagram dummy
scoreboard objectives add sforms.particle.rune dummy
scoreboard objectives add sforms.particle.random dummy
scoreboard objectives add sforms.particle.lifetime dummy
scoreboard objectives add sforms.urn.health dummy
scoreboard objectives add sforms.gramophone.record dummy
scoreboard objectives add sforms.gramophone.mod_random dummy
scoreboard objectives add sforms.gramophone_music_timer dummy
scoreboard objectives add sforms.graybell_growth dummy
scoreboard objectives add sforms.shader_timer dummy

schedule function sforms:blocks/gloombloom/growth_timer 6000t append
schedule function sforms:blocks/urn/5s_clock 5s append
schedule function sforms:blocks/blackened_heart/60s_timer 60s append
schedule function sforms:blocks/gramophone/2m_timer 120s append

tellraw @a[gamemode=creative] [{translate:"lore.sforms.tooltip",font:"sforms:tooltip",shadow_color:0}," ",{text:" loaded",color:"white",font:"default"}]