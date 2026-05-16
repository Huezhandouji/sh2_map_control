advancement revoke @s only sh2:use_event/skill/red/skill1
scoreboard players set @s red.skill1_count 4
#EVO2-鲜血横飞，[孤妄自赏]多出2次攻击打
scoreboard players add @s[scores={EVO=2..}] red.skill1_count 2
scoreboard players set @s red.cd1 101
scoreboard players set timer red.cd1 0