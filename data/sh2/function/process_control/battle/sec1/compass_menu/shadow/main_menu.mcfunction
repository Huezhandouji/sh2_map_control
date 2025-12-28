scoreboard players enable @s trigger_battle_menu
tag @s add self

tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n§d§l#####战斗菜单#####"}]
tellraw @s [{"text":"§a[重建影庭]","hover_event":{"action":"show_text","value":"§e如果前线影庭被猎影人摧毁,点击这个按钮来花费主庭摧毁值重建影庭"},"click_event":{"action":"run_command","command":"trigger trigger_battle_menu set 1"}}]
tellraw @s [{"text":"§a[升级影庭]","hover_event":{"action":"show_text","value":"§e点击这个按钮来将前线影庭升级"},"click_event":{"action":"run_command","command":"trigger trigger_battle_menu set 2"}}]
tellraw @s [{"text":"§c[关闭菜单]","click_event":{"action":"run_command","command":"trigger trigger_battle_menu set 1001"}}]
tellraw @s [{"text":"\n§d§l##################"}]

tag @s remove self