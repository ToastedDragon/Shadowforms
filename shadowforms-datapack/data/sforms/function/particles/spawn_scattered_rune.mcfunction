execute store result storage sforms:random pos.x float .1 run random value -15..15
execute store result storage sforms:random pos.y float .1 run random value -15..15
execute store result storage sforms:random pos.z float .1 run random value -2..5
function sforms:particles/spawn_rune with storage sforms:random pos