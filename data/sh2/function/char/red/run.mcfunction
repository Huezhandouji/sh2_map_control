execute if score 1s clock matches 20 as @a[scores={red.bleed=1..}] at @s run function sh2:char/red/passivity/deal_bleed
function sh2:char/red/main_weapon/run
function sh2:char/red/skill_1/run
function sh2:char/red/skill_2/run
function sh2:char/red/skill_3/run
function sh2:char/red/evolution/run

scoreboard players remove @s[scores={red.cd0=1..}] red.cd0 1
scoreboard players remove @s[scores={red.cd1=1..}] red.cd1 1
scoreboard players remove @s[scores={red.cd2=1..}] red.cd2 1
scoreboard players remove @s[scores={red.cd3=1..}] red.cd3 1

effect give @s speed infinite 1 true

function sh2:char/red/actionbar_ui

scoreboard players set @a[scores={in_battle=0,red.bleed=1..}] red.bleed 0