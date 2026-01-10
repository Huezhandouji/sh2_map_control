#初始化角色，这个地图所有的角色都是单人使用，不用搞什么uid那么麻烦
#设定角色标识计分板分数
scoreboard players set @s character 101
#把用来应用角色的计分板归零
scoreboard players set @s apply_character 0
#创建并初始化需要的计分板
scoreboard objectives add hezi.cd0 dummy hezi.cd0
scoreboard players set @s hezi.cd0 0
scoreboard objectives add hezi.cd1 dummy hezi.cd0
scoreboard players set @s hezi.cd1 0
scoreboard objectives add hezi.cd2 dummy heze.cd2
scoreboard players set @s hezi.cd2 0
scoreboard objectives add hezi.process.cd2 dummy hezi.process.cd2
scoreboard players set @s hezi.process.cd2 -1
tag @s add hezi