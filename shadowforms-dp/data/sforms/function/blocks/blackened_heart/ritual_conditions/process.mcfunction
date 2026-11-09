execute \
if block ~2 ~1 ~2 orange_candle[lit=true] \
if block ~-2 ~1 ~-2 orange_candle[lit=true] \
if block ~-2 ~1 ~2 orange_candle[lit=true] \
if block ~2 ~1 ~-2 orange_candle[lit=true] \
if block ~1 ~ ~ orange_candle[lit=true] \
if block ~-1 ~ ~ orange_candle[lit=true] \
if block ~ ~ ~-1 orange_candle[lit=true] \
if block ~ ~ ~1 orange_candle[lit=true] \
if block ~2 ~ ~-2 bone_block \
if block ~-2 ~ ~-2 bone_block \
if block ~-2 ~ ~2 bone_block \
if block ~2 ~ ~2 bone_block \
if block ~3 ~ ~ #sforms:azaleas \
if block ~-3 ~ ~ #sforms:azaleas \
if block ~ ~ ~3 #sforms:azaleas \
if block ~ ~ ~-3 #sforms:azaleas \
run function sforms:blocks/blackened_heart/ritual/process