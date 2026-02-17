advancement revoke @s only sh2:use_event/skill/kovaci/main_weapon
execute if score @s kovaci.shoot_interval matches 1.. run return fail
execute if score @s kovaci.ammo matches 0 run return run function sh2:char/kovaci/main_weapon/fire/no_ammo
execute if score @s kovaci.is_aimming matches 0 store result storage sh2:character kovaci.bullet_dispersion.x int 1 run random value -3..3
execute if score @s kovaci.is_aimming matches 0 store result storage sh2:character kovaci.bullet_dispersion.y int 1 run random value -3..3
execute if score @s kovaci.is_aimming matches 1 store result storage sh2:character kovaci.bullet_dispersion.x int 1 run random value -1..1
execute if score @s kovaci.is_aimming matches 1 store result storage sh2:character kovaci.bullet_dispersion.y int 1 run random value -1..1
# data modify storage sh2:character kovaci.bullet_dispersion.x set value 0
# data modify storage sh2:character kovaci.bullet_dispersion.y set value 0
function sh2:char/kovaci/main_weapon/fire/fire with storage sh2:character kovaci.bullet_dispersion