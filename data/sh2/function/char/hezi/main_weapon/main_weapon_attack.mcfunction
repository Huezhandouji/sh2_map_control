#这就是附魔执行的函数，进到这个函数里面后根据是否符合强化普攻的条件来执行强化普攻或者普通普攻的函数
#强化普攻
execute if score @s[scores={hezi.cd0=0}] ENERGY matches 30.. run function sh2:char/hezi/main_weapon/enhanced_attack
#普通普攻
execute if score @s[scores={hezi.cd0=0}] ENERGY matches ..29 anchored eyes run function sh2:char/hezi/main_weapon/raycasting