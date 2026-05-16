advancement revoke @s only sh2:use_event/skill/red/skill3
scoreboard players set @s red.cd3 600
function sh2:char/red/skill_3/drive_to_loop

playsound entity.wither.death
particle dust{"color":16711680,"scale":3} ~ ~1 ~ 3 3 3 1 80 normal
particle instant_effect ~ ~1 ~ 3 3 3 1 80 normal