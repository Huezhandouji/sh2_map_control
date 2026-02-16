execute if score @s kovaci.is_aimming matches 0 store result storage sh2:character kovaci.bullet_dispersion.x int 1 run random value 0..5
execute if score @s kovaci.is_aimming matches 0 store result storage sh2:character kovaci.bullet_dispersion.y int 1 run random value 0..5
execute if score @s kovaci.is_aimming matches 1 store result storage sh2:character kovaci.bullet_dispersion.x int 1 run random value 0..2
execute if score @s kovaci.is_aimming matches 1 store result storage sh2:character kovaci.bullet_dispersion.y int 1 run random value 0..2
function sh2:char/kovaci/main_weapon/fire/fire with storage sh2:character kovaci.bullet_dispersion