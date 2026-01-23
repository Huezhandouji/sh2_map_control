title @a times 0 100 0
title @a[team=shadow] title "§c主影庭被摧毁了!"
title @a[team=shadow] subtitle "§c你失去了所有部署选项"
title @a[team=hunter] title "§a友方成功摧毁了主影庭!"
title @a[team=hunter] subtitle "§a敌方已经失去了所有部署选项"

bossbar set shadow_display max 500
playsound entity.ender_dragon.death master @a 0 10000000000 0 1000000000000
scoreboard players set point_status system 2