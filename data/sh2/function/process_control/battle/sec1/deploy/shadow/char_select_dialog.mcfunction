$dialog show @s {\
    "type":"multi_action",\
    "title":[{"text":"§e选择部署角色"}],\
    "actions":[\
        {\
            "label":$(baoshi),\
            "action":{\
                "type":"run_command",\
                "command":"trigger trigger_char_selected set 1"\
            }\
        }\
    ],\
    "can_close_with_escape":true,\
    "after_action":"close",\
    "exit_action":{\
        "action":{\
            "type":"run_command",\
            "command":"trigger trigger_char_selected set 0"\
        },\
        "label":"退出"\
    },\
}