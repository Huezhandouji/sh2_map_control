scoreboard players set @s dead_detect 0
execute on attacker run tag @s add killer
title @a[tag=killer] times 0 100 0
title @a[tag=killer] title [{"text":""}]
title @a[tag=killer] subtitle [{"text":"§4✖§6 "},{"selector":"@s"}]
execute as @a[tag=killer] at @s run playsound entity.experience_orb.pickup
execute as @a[tag=killer,team=shadow] at @s run function sh2:char/shadow_evo_trigger

tag @s add victim

#击杀播报
execute as @a[tag=killer] run function sh2:char/kill_boardcast_redirect

tag @s remove victim
tag @a remove killer