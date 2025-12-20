#§
dialog show @s {"type":"minecraft:multi_action","title":"§e选择阵营",\
"actions":[{"label":"加入 §d影",action:{"type":"run_command","command":"trigger team_select_trigger set 1"}},{"label":"加入 §e猎影人","action":{"type":"run_command","command":"trigger team_select_trigger set 2"}},{"label":"成为 §7观战者","action":{"type":"run_command","command":"trigger team_select_trigger set 0"}}]\
,exit_action:{"label":"退出","action":{"type":"run_command","command":"trigger team_select_trigger set -1"}}}