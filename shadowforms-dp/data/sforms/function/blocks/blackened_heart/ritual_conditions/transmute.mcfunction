execute \
if block ~2 ~ ~ black_candle[lit=true] \
if block ~2 ~1 ~-2 black_candle[lit=true] \
if block ~ ~ ~-2 black_candle[lit=true] \
if block ~-2 ~1 ~-2 black_candle[lit=true] \
if block ~-2 ~ ~ black_candle[lit=true] \
if block ~-2 ~1 ~2 black_candle[lit=true] \
if block ~ ~ ~2 black_candle[lit=true] \
if block ~2 ~1 ~2 black_candle[lit=true] \
if block ~2 ~ ~-2 obsidian \
if block ~-2 ~ ~-2 obsidian \
if block ~-2 ~ ~2 obsidian \
if block ~2 ~ ~2 obsidian \
if block ~3 ~ ~ lapis_block \
if block ~-3 ~ ~ lapis_block \
if block ~ ~ ~3 lapis_block \
if block ~ ~ ~-3 lapis_block \
run function sforms:blocks/blackened_heart/ritual/transmute