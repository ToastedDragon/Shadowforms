execute \
if block ~2 ~ ~ red_candle[lit=true] \
if block ~2 ~1 ~-2 red_candle[lit=true] \
if block ~ ~ ~-2 red_candle[lit=true] \
if block ~-2 ~1 ~-2 red_candle[lit=true] \
if block ~-2 ~ ~ red_candle[lit=true] \
if block ~-2 ~1 ~2 red_candle[lit=true] \
if block ~ ~ ~2 red_candle[lit=true] \
if block ~2 ~1 ~2 red_candle[lit=true] \
if block ~2 ~ ~-2 nether_wart_block \
if block ~-2 ~ ~-2 nether_wart_block \
if block ~-2 ~ ~2 nether_wart_block \
if block ~2 ~ ~2 nether_wart_block \
if block ~3 ~ ~ honeycomb_block \
if block ~-3 ~ ~ honeycomb_block \
if block ~ ~ ~3 honeycomb_block \
if block ~ ~ ~-3 honeycomb_block \
run function sforms:blocks/blackened_heart/ritual/healing