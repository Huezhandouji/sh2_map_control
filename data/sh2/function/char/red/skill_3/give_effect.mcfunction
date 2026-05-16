effect give @s regeneration 2 4 true
effect give @s strength 2 1 true
#EVO4-故不可知-[黯然销魂的TE扣除速度减慢[1秒6点]
scoreboard players remove @s[scores={EVO=..3}] SAN 10
scoreboard players remove @s[scores={EVO=4..}] SAN 6


playsound entity.wither.shoot
particle dust{"color":16711680,"scale":3} ~ ~1 ~ 2 2 2 1 40 normal
particle instant_effect ~ ~1 ~ 2 2 2 1 40 normal