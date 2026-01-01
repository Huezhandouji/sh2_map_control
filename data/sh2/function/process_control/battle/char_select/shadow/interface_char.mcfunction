scoreboard players enable @s trigger_shadow_select_char
tag @s add self
#值0-999是用来选择角色的,-1代表空闲
#1000以后用于操作

tellraw @s [{"text":"\n\n\n\n\n\n\n§6#### 部署配置 ####"}]
#1002选择EX技能选项卡
tellraw @s [{"text":"§a<选择角色>","hover_event":{"action":"show_text","value":"§e当前选项卡"}},{"text":" "},{"text":"§b[EX技能]\n","hover_event":{"action":"show_text","value":"§e点击切换到这个选项卡"},"click_event":{"action":"run_command","command":"trigger trigger_shadow_select_char set 1002"}}]
execute unless entity @a[scores={char_selected=1}] run tellraw @s [{"text":"§e[暴食HUNGER]","hover_event":{"action":"show_text","value":"§a这个角色还没有被选择,你可以点击来选择"},"click_event":{"action":"run_command","command":"trigger trigger_shadow_select_char set 1"}}]
execute if entity @a[scores={char_selected=1},tag=!self] run tellraw @s [{"text":"§7暴食HUNGER §c已被选择"}]
execute if entity @a[scores={char_selected=1},tag=self] run tellraw @s [{"text":"§a暴食HUNGER §a你已选择"}]

execute unless entity @a[scores={char_selected=2}] run tellraw @s [{"text":"§e[冷识REMOTE]","hover_event":{"action":"show_text","value":"§a这个角色还没有被选择,你可以点击来选择"},"click_event":{"action":"run_command","command":"trigger trigger_shadow_select_char set 2"}}]
execute if entity @a[scores={char_selected=2},tag=!self] run tellraw @s [{"text":"§7冷识REMOTE §c已被选择"}]
execute if entity @a[scores={char_selected=2},tag=self] run tellraw @s [{"text":"§a冷识REMOTE §a你已选择"}]
tellraw @s [{"text":""}]
#1000取消选择
tellraw @s [{"text":"§c[取消选择]","hover_event":{"action":"show_text","value":"§c取消选择的角色"},"click_event":{"action":"run_command","command":"trigger trigger_shadow_select_char set 1000"}}]
#1001关闭菜单
tellraw @s [{"text":"§e[关闭菜单]","hover_event":{"action":"show_text","value":"§e关闭这个菜单"},"click_event":{"action":"run_command","command":"trigger trigger_shadow_select_char set 1001"}}]
tellraw @s [{"text":"§6#################\n"}]
tag @s remove self