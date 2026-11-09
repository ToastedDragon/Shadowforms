summon text_display ~-0.5 ~0.2 ~-0.5 {billboard:"center",alignment:"center",background:16777215,Tags:[sforms.particle.pentagram],brightness:{block:15,sky:15}}
summon text_display ~-0.5 ~ ~0 {billboard:"center",alignment:"center",background:16777215,Tags:[sforms.particle.pentagram],brightness:{block:15,sky:15}}
summon text_display ~-0.5 ~ ~0.5 {billboard:"center",alignment:"center",background:16777215,Tags:[sforms.particle.pentagram],brightness:{block:15,sky:15}}
summon text_display ~0 ~0.2 ~-0.5 {billboard:"center",alignment:"center",background:16777215,Tags:[sforms.particle.pentagram],brightness:{block:15,sky:15}}
summon text_display ~0 ~ ~0.5 {billboard:"center",alignment:"center",background:16777215,Tags:[sforms.particle.pentagram],brightness:{block:15,sky:15}}
summon text_display ~0.5 ~ ~-0.5 {billboard:"center",alignment:"center",background:16777215,Tags:[sforms.particle.pentagram],brightness:{block:15,sky:15}}
summon text_display ~0.5 ~0.2 ~0 {billboard:"center",alignment:"center",background:16777215,Tags:[sforms.particle.pentagram],brightness:{block:15,sky:15}}
summon text_display ~0.5 ~0.2 ~0.5 {billboard:"center",alignment:"center",background:16777215,Tags:[sforms.particle.pentagram],brightness:{block:15,sky:15}}
execute as @e[type=text_display,tag=sforms.particle.pentagram,sort=nearest,limit=8] store result score @s sforms.particle.pentagram run random value 0..3