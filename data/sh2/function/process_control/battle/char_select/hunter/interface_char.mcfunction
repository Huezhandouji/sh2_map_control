scoreboard players enable @s trigger_hunter_select_char
tag @s add self
#值0-999是用来选择角色的,-1代表空闲
#1000以后用于操作

tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§6#### 部署配置 ####"}]
#1002选择EX技能选项卡
tellraw @s [{"text":"§a<选择角色>","hover_event":{"action":"show_text","value":"§e当前选项卡"}},{"text":" "},{"text":"§b[EX技能]\n","hover_event":{"action":"show_text","value":"§e点击切换到这个选项卡"},"click_event":{"action":"run_command","command":"trigger trigger_hunter_select_char set 1002"}}]
execute unless entity @a[scores={char_selected=101}] run tellraw @s [{"text":"§e[梅妻鹤子MEIQI_HEZI]","hover_event":{"action":"show_text","value":"§a这个角色还没有被选择,你可以点击来选择"},"click_event":{"action":"run_command","command":"trigger trigger_hunter_select_char set 101"}}]
execute if entity @a[scores={char_selected=101},tag=!self] run tellraw @s [{"text":"§7梅妻鹤子MEIQI_HEZI §c已被选择"}]
execute if entity @a[scores={char_selected=101},tag=self] run tellraw @s [{"text":"§a梅妻鹤子MEIQI_HEZI §a你已选择"}]

execute unless entity @a[scores={char_selected=102}] run tellraw @s [{"text":"§e[科瓦西KAWASII]","hover_event":{"action":"show_text","value":"§a这个角色还没有被选择,你可以点击来选择"},"click_event":{"action":"run_command","command":"trigger trigger_hunter_select_char set 102"}}]
execute if entity @a[scores={char_selected=102},tag=!self] run tellraw @s [{"text":"§7科瓦西KAWASII §c已被选择"}]
execute if entity @a[scores={char_selected=102},tag=self] run tellraw @s [{"text":"§a科瓦西KAWASII §a你已选择"}]
tellraw @s [{"text":""}]
#1000取消选择
tellraw @s [{"text":"§c[取消选择]","hover_event":{"action":"show_text","value":"§c取消选择的角色"},"click_event":{"action":"run_command","command":"trigger trigger_hunter_select_char set 1000"}}]
#1001关闭菜单
tellraw @s [{"text":"§e[关闭菜单]","hover_event":{"action":"show_text","value":"§e关闭这个菜单"},"click_event":{"action":"run_command","command":"trigger trigger_hunter_select_char set 1001"}}]
tellraw @s [{"text":"§6#################\n"}]
tag @s remove self