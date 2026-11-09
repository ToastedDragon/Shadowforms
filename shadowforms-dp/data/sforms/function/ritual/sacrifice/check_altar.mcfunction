execute if block ~ ~-.5 ~ #sforms:ritual_centre \
if block ~ ~-.5 ~1 #sforms:ritual_sides \
if block ~1 ~-.5 ~ #sforms:ritual_sides \
if block ~ ~-.5 ~-1 #sforms:ritual_sides \
if block ~-1 ~-.5 ~ #sforms:ritual_sides \
\
if block ~1 ~-.5 ~1 #candles \
if block ~-1 ~-.5 ~1 #candles \
if block ~-1 ~-.5 ~-1 #candles \
if block ~1 ~-.5 ~-1 #candles \
\
if block ~0 ~-.5 ~3 #candles \
if block ~3 ~-.5 ~0 #candles \
if block ~0 ~-.5 ~-3 #candles \
if block ~-3 ~-.5 ~0 #candles \
\
if block ~2 ~-.5 ~2 #candles \
if block ~-2 ~-.5 ~-2 #candles \
if block ~-2 ~-.5 ~2 #candles \
if block ~2 ~-.5 ~-2 #candles \
run return 1