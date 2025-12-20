execute as @s[team=shadow] run data modify storage sh2:actionbar team_select.team set value [{"text":"§7你的阵营 §d影"}]
execute as @s[team=hunter] run data modify storage sh2:actionbar team_select.team set value [{"text":"§7你的阵营 §e猎影人"}]
execute as @s[team=spectator] run data modify storage sh2:actionbar team_select.team set value [{"text":"§7你将以观战者加入游戏"}]
data modify storage sh2:actionbar team_select.is_shadow_ready set value [{"text":"§4✖"}]
execute if score shadow_population system = shadow_ready_population system if score shadow_population system matches 1.. run data modify storage sh2:actionbar team_select.is_shadow_ready set value [{"text":"§2✔"}]
data modify storage sh2:actionbar team_select.is_hunter_ready set value [{"text":"§4✖"}]
execute if score hunter_population system = hunter_ready_population system if score hunter_population system matches 1.. run data modify storage sh2:actionbar team_select.is_hunter_ready set value [{"text":"§2✔"}]
function sh2:process_control/select_team/actionbar_ui/ui with storage sh2:actionbar team_select