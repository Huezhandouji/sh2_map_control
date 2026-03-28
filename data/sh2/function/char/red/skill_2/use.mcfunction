advancement revoke @s only sh2:use_event/skill/red/skill2

effect give @a[team=hunter,distance=..5] blindness 4 1 true
effect give @a[team=hunter,distance=..5] slowness 3 2 true
execute as @a[team=hunter,distance=..5] at @s run function sh2:char/red/skill_2/settle_bleed
execute as @a[team=hunter,distance=..5] run particle block{"block_state":"redstone_block"} ~ ~ ~ 0.5 0.5 0.5 1 20 normal

particle effect{"color":10944512,power:0} ~ ~ ~ 1 1 1 1 100 normal
playsound entity.witch.celebrate master @a ~ ~ ~ 2 1
playsound entity.wither.hurt master @a ~ ~ ~ 2 0.5

scoreboard players add @s SAN 10
scoreboard players set @s red.cd2 121