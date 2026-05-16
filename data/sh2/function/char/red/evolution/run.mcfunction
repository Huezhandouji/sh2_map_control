#1-红月落下，每个负有流血的敌人将会持续扣除特殊值[1秒1点]
execute if score @s EVO matches 1.. if score 1s clock matches 20 run scoreboard players remove @a[scores={red.bleed=1..}] SAN 1
#2-鲜血横飞，[孤妄自赏]多出2次攻击打,写在skill3里
#3-负罪凄凉-永久获得生命上限加20,并回满生命
effect give @s health_boost infinite 4 true 
#4-故不可知-[黯然销魂的TE扣除速度减慢[1秒6点]，写在skill3逻辑里
#5-猩红已至-流血每秒结算3层[就是每秒扣除6血，但持续5秒],写在流血逻辑里