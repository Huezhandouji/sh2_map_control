title @a times 0 100 0
title @a[team=shadow] title "§c主影庭被摧毁了!"
title @a[team=shadow] subtitle "§c你失去了所有部署选项"
title @a[team=hunter] title "§a友方成功摧毁了主影庭!"
title @a[team=hunter] subtitle "§a敌方已经失去了所有部署选项"

bossbar set shadow_display max 500
playsound entity.ender_dragon.death master @a 0 10000000000 0 1000000000000
scoreboard players set point_status system 2

#放置结构2
particle explosion_emitter -263 56 -147 8 8 8 1 60 force
particle explosion_emitter -276 59 -149 8 8 8 1 60 force
particle explosion_emitter -287 64 -151 8 8 8 1 60 force
playsound entity.generic.explode master @a -263 56 -147 10
place template sec5_2 -286 55 -159 none none 1 0 strict
kill @e[type=item]