#设置倒计时时间和开始标记
scoreboard players set game_start_countdown_started system 1
scoreboard players set game_start_countdown system 200

tellraw @a [{"text":"§e>>所有参加玩家准备完毕，对局在10秒后开始!"}]