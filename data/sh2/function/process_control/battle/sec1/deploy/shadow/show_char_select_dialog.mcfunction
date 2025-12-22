advancement revoke @s only sh2:use_event/deploy/shadow_select
scoreboard players enable @s trigger_char_selected
#char = 1 to 100 shadow
tag @s add self
execute unless entity @a[scores={char_selected=1}] run data modify storage sh2:dialog character_select.shadow.baoshi set value [{"text":"§e暴食","hover_event":{"action":"show_text","value":"§e这个角色还没有被选择!"}}]
execute if entity @a[scores={char_selected=1},tag=!self] run data modify storage sh2:dialog character_select.shadow.baoshi set value [{"text":"§7暴食 §4✖","hover_event":{"action":"show_text","value":"§4该角色已经被选择!现在无法选择这个角色来部署!"}}]
execute if entity @a[scores={char_selected=1},tag=self] run data modify storage sh2:dialog character_select.shadow.baoshi set value [{"text":"§a暴食 ✔","hover_event":{"action":"show_text","value":"§a你已经选择了这个角色!"}}]
function sh2:process_control/battle/sec1/deploy/shadow/char_select_dialog with storage sh2:dialog character_select.shadow

tag @s remove self