title @a times 0 100 0
title @a[team=hunter] title "§a据点[小型社区]已经被我们攻占!"
title @a[team=hunter] subtitle "§e准备进攻下一个区域"
title @a[team=shadow] title "§c据点[小型社区]已经沦陷!"
title @a[team=shadow] subtitle "§d准备防守下一个区域"
tellraw @a "§6#### 据点被攻占 ####"
tellraw @a "§e据点[小型社区]已经被猎影人攻占并完全控制"
tellraw @a "§e战线现在被推进到下一个据点[暗影教堂]"
tellraw @a "§b准备好进攻或者防守!"
tellraw @a "§c猎影人现在获得了新的 20 TICKET"
tellraw @a "§6###################"
scoreboard players add hunter_ticket system 20


#放置结构4
place template minecraft:sec1_4 -252 -4 65 none none 1 0 strict
kill @e[type=item]

function sh2:process_control/battle/sec2/start