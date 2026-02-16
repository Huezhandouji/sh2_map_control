advancement revoke @s only sh2:use_event/skill/kovaci/main_weapon
execute if score @s kovaci.shoot_interval matches 1.. run return fail
execute if score @s kovaci.ammo matches 0 run return run function sh2:char/kovaci/main_weapon/fire/no_ammo
scoreboard players set @s kovaci.shoot_interval 2
$execute anchored eyes rotated ~$(x) ~$(y) positioned ^ ^ ^0.1 summon block_display run function sh2:char/kovaci/main_weapon/fire/bullet_spawn_settings
scoreboard players remove @s kovaci.ammo 1
playsound entity.zombie.attack_iron_door