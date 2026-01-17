scoreboard players enable @s trigger_battle_menu
tag @s add self

tellraw @s [{"text":"\n\n\n\n\n\n\n§b§l#####战斗菜单#####"}]
tellraw @s [{"text":"§a[建造地基]","hover_event":{"action":"show_text","value":"§e如果据点中立并且你在据点内,点击这个按钮来建造地基"},"click_event":{"action":"run_command","command":"trigger trigger_battle_menu set 1"}}]
tellraw @s [{"text":"§c[关闭菜单]","click_event":{"action":"run_command","command":"trigger trigger_battle_menu set 1001"}}]
tellraw @s [{"text":"\n§b§l##################"}]

tag @s remove self