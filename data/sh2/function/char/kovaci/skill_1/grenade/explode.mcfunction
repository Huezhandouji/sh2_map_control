playsound entity.dragon_fireball.explode master @a ~ ~ ~ 5 1
particle explosion ~ ~ ~ 1 1 1 1 5 force
particle lava ~ ~ ~ 1 1 1 1 20 force

execute as @a[team=shadow,distance=..4] run function sh2:char/kovaci/skill_1/grenade/victim
data modify entity @s data.x set from entity @s Pos[0]
data modify entity @s data.y set from entity @s Pos[1]
data modify entity @s data.z set from entity @s Pos[2]
data modify entity @s data.distance set value 10
data modify entity @s data.damage set value 50
function sh2:process_control/dealt_damage_to_umbracore with entity @s data

kill @s