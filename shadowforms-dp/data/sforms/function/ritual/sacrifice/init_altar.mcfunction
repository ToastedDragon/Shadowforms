#technical
kill @n[predicate=sforms:item/diamond,distance=0..,type=item]
summon marker ~ ~ ~ {Tags:[sforms.sacrificial_altar]}

#visual
particle dust_plume ~ ~ ~ 1.5 1.5 1.5 0.1 35
particle mycelium ~ ~ ~ 2 2 2 0.1 70
particle sonic_boom ~ ~ ~ 0 0 0 0.01 1

#...sonic? auditory? sfx eitherway
execute as @a[distance=..30] at @s run playsound sforms:block.sacrificial_altar.initiate player @s ~ ~ ~

#candle unlighting
#is the opposite of "light" really "unlight"??? stupid language
execute positioned ~1 ~-.5 ~1 run function sforms:ritual/unlight_candles
execute positioned ~-1 ~-.5 ~1 run function sforms:ritual/unlight_candles
execute positioned ~-1 ~-.5 ~-1 run function sforms:ritual/unlight_candles
execute positioned ~1 ~-.5 ~-1 run function sforms:ritual/unlight_candles
execute positioned ~0 ~-.5 ~3 run function sforms:ritual/unlight_candles
execute positioned ~3 ~-.5 ~0 run function sforms:ritual/unlight_candles
execute positioned ~0 ~-.5 ~-3 run function sforms:ritual/unlight_candles
execute positioned ~-3 ~-.5 ~0 run function sforms:ritual/unlight_candles
execute positioned ~2 ~-.5 ~2 run function sforms:ritual/unlight_candles
execute positioned ~-2 ~-.5 ~-2 run function sforms:ritual/unlight_candles
execute positioned ~-2 ~-.5 ~2 run function sforms:ritual/unlight_candles
execute positioned ~2 ~-.5 ~-2 run function sforms:ritual/unlight_candles
#oh god please send help

advancement grant @a[distance=..10] only sforms:create_altar