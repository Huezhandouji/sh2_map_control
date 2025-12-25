scoreboard players enable @s trigger_hunter_select_char
tag @s add self
#值0-999是用来选择角色的,-1代表空闲
#1000以后用于操作

tellraw @s [{"text":"\n\n\n\n\n\n\n§6#### 部署配置 ####"}]
#1003选择角色选项卡
tellraw @s [{"text":"§a<EX技能> ","hover_event":{"action":"show_text","value":"§e当前选项卡"}},{"text":"§b[选择角色]\n","hover_event":{"action":"show_text","value":"§e点击切换到这个选项卡"},"click_event":{"action":"run_command","command":"trigger trigger_hunter_select_char set 1003"}}]


#1000取消选择
tellraw @s [{"text":"§c[取消选择]","hover_event":{"action":"show_text","value":"§c取消选择的角色"},"click_event":{"action":"run_command","command":"trigger trigger_hunter_select_char set 1000"}}]
#1001关闭菜单
tellraw @s [{"text":"§e[关闭菜单]","hover_event":{"action":"show_text","value":"§e关闭这个菜单"},"click_event":{"action":"run_command","command":"trigger trigger_hunter_select_char set 1001"}}]
tellraw @s [{"text":"§6#################\n"}]