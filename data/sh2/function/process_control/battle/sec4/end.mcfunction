title @a times 0 100 0
title @a[team=hunter] title "§a据点[酒店]已经被我们攻占!"
title @a[team=hunter] subtitle "§e#准备进攻最终目标#"
title @a[team=shadow] title "§c据点[酒店]已经沦陷!"
title @a[team=shadow] subtitle "§d#准备防守最终目标#"
tellraw @a "§6#### 据点被攻占 ####"
tellraw @a "§e据点[酒店]已经被猎影人攻占并完全控制"
tellraw @a "§e战线现在被推进到下一个据点[写字楼]"
tellraw @a "§c<注意!> 这个据点是最终据点-主影庭"
tellraw @a "§c最终据点有一些特殊规则:"
tellraw @a "§c- 主庭无法被影升级或者重建"
tellraw @a "§c- 主庭的摧毁值在游戏开始时是500,但是可能在之前被消耗过"
tellraw @a "§c- 当主庭被摧毁后:"
tellraw @a "§c-- 进攻方不需要建立地基,直接进入拉点阶段"
tellraw @a "§c-- 防守方将失去所有部署选项,意味着在场的影死亡后无法再次部署,仍没有部署的影无法部署"
tellraw @a "§c-- 存活的影被增加3进化值,血量上限设为当前2倍,TE值上限设为当前1.5倍,将血量与TE值回满。获得一个效果,当周围没有猎影人时,恢复血量与TE值"
tellraw @a "§b准备好进攻或者防守!"
tellraw @a "§c猎影人现在获得了新的 50 TICKET"
tellraw @a "§6###################"
scoreboard players add hunter_ticket system 50

#在楼下放置结构5
particle minecraft:explosion_emitter -458 7 -127 8 8 8 1 60 force
place template sec4_5 -468 6 -139 none none 1 0 strict
kill @e[type=item]

function sh2:process_control/battle/sec5_final/start