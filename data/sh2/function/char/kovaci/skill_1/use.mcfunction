advancement revoke @s only sh2:use_event/skill/kovaci/skill1
scoreboard players set @s kovaci.cd1 100
scoreboard players remove @s ENERGY 15

execute anchored feet run summon item ^ ^ ^1 {"Tags":["kovaci_grenade","velocity_not_applied"],"Motion":[0,0,0],"NoGravity":false,"Invulnerable":true,"PickupDelay":-1,"Item":{"id":"fire_charge"}}

execute store result score x1 kovaci.grenade_motion run data get entity @e[type=item,tag=kovaci_grenade,limit=1,tag=velocity_not_applied] Pos[0] 1000
execute store result score y1 kovaci.grenade_motion run data get entity @e[type=item,tag=kovaci_grenade,limit=1,tag=velocity_not_applied] Pos[1] 1000
execute store result score z1 kovaci.grenade_motion run data get entity @e[type=item,tag=kovaci_grenade,limit=1,tag=velocity_not_applied] Pos[2] 1000

execute store result score x2 kovaci.grenade_motion run data get entity @s Pos[0] 1000
execute store result score y2 kovaci.grenade_motion run data get entity @s Pos[1] 1000
execute store result score z2 kovaci.grenade_motion run data get entity @s Pos[2] 1000

scoreboard players operation x1 kovaci.grenade_motion -= x2 kovaci.grenade_motion
scoreboard players operation y1 kovaci.grenade_motion -= y2 kovaci.grenade_motion
scoreboard players operation z1 kovaci.grenade_motion -= z2 kovaci.grenade_motion

execute anchored eyes run tp @e[type=item,tag=kovaci_grenade,limit=1,tag=velocity_not_applied] ^ ^ ^1

execute store result entity @e[type=item,tag=kovaci_grenade,limit=1,tag=velocity_not_applied] Motion[0] double 0.002 run scoreboard players get x1 kovaci.grenade_motion
execute store result entity @e[type=item,tag=kovaci_grenade,limit=1,tag=velocity_not_applied] Motion[1] double 0.002 run scoreboard players get y1 kovaci.grenade_motion
execute store result entity @e[type=item,tag=kovaci_grenade,limit=1,tag=velocity_not_applied] Motion[2] double 0.002 run scoreboard players get z1 kovaci.grenade_motion

tag @e[tag=velocity_not_applied,tag=kovaci_grenade,type=item] remove velocity_not_applied

playsound entity.generic.explode master @a ~ ~ ~ 1 2