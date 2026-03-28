#每一次结算流血的效果，和被动一样
damage @s 2 sh2:true by @a[tag=red,limit=1]
effect give @a[tag=red] resistance 5 0 true
scoreboard players add @a[tag=red] SAN 4