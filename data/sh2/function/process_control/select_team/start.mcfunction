#生成用于展示选队信息的展示实体
kill @e[type=text_display,tag=team_display]
summon text_display -3.5 51.5 -24.5 {"Tags":["team_display"],"alignment":"center","billboard":"vertical","text":[{"text":"test text"}]}

team join spectator @a

scoreboard players set game_process system 1