advancement revoke @s only sh2:use_event/skill/hezi/3
scoreboard players set @s hezi.process.cd3 20
effect give @s[scores={SAN=31..}] slowness 1 4 true
title @s times 0 20 0
title @s title ""
title @s subtitle [{"text":"蓄力~","color":"red"}]
playsound entity.experience_orb.pickup master @a ~ ~ ~
#设置cd和减少能量
scoreboard players set @s hezi.cd3 -1
scoreboard players set @s hezi.process.cd3 20
scoreboard players remove @s ENERGY 20