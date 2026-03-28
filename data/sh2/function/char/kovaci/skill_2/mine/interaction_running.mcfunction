execute store result score a kovaci.uuid_check run data get entity @s attack.player[0]
execute store result score b kovaci.uuid_check run data get entity @s attack.player[1]
execute store result score c kovaci.uuid_check run data get entity @s attack.player[2]
execute store result score d kovaci.uuid_check run data get entity @s attack.player[3]

execute store result score A kovaci.uuid_check run data get entity @a[tag=kovaci,limit=1] UUID[0]
execute store result score B kovaci.uuid_check run data get entity @a[tag=kovaci,limit=1] UUID[1]
execute store result score C kovaci.uuid_check run data get entity @a[tag=kovaci,limit=1] UUID[2]
execute store result score D kovaci.uuid_check run data get entity @a[tag=kovaci,limit=1] UUID[3]

execute if score a kovaci.uuid_check = A kovaci.uuid_check if score b kovaci.uuid_check = B kovaci.uuid_check \
if score c kovaci.uuid_check = C kovaci.uuid_check if score d kovaci.uuid_check = D kovaci.uuid_check run function sh2:char/kovaci/skill_2/mine/pickup_mine