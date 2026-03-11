scoreboard players set @s kovaci.shoot_interval 2
$execute anchored eyes rotated ~$(x) ~$(y) positioned ^ ^ ^0.1 summon block_display run function sh2:char/kovaci/main_weapon/fire/bullet_spawn_settings
scoreboard players remove @s kovaci.ammo 1
playsound entity.zombie.attack_iron_door
particle dust{"color":5789784,"scale":1} ^ ^1.2 ^0.5 0.2 0.2 0.2 1 1 normal @a