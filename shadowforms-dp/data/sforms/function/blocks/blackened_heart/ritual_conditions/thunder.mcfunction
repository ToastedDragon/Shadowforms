execute \
if block ~2 ~ ~-1 blue_candle[lit=true] \
if block ~2 ~ ~1 blue_candle[lit=true] \
if block ~1 ~ ~-2 blue_candle[lit=true] \
if block ~-1 ~ ~-2 blue_candle[lit=true] \
if block ~-2 ~ ~-1 blue_candle[lit=true] \
if block ~-1 ~ ~2 blue_candle[lit=true] \
if block ~1 ~ ~2 blue_candle[lit=true] \
if block ~2 ~ ~1 blue_candle[lit=true] \
if block ~2 ~ ~2 #lightning_rods \
if block ~-2 ~ ~2 #lightning_rods \
if block ~2 ~ ~-2 #lightning_rods \
if block ~-2 ~ ~-2 #lightning_rods \
run function sforms:blocks/blackened_heart/ritual/thunder