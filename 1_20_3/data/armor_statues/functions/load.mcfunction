#
# Description:	Create scoreboards
# Called by:	#main:init
# Entity @s:	None
#
# Create scoreboards
#
scoreboard objectives add as_trigger trigger
scoreboard objectives add as_pose dummy
scoreboard objectives add as_angle dummy
scoreboard objectives add as_help trigger
scoreboard objectives add if_invisible trigger
scoreboard objectives add as_repeat trigger
scoreboard objectives add pointer_wand trigger
scoreboard objectives add adjustment_wand trigger
scoreboard objectives add as_edited_uuid1 dummy
scoreboard objectives add as_edited_uuid2 dummy
scoreboard objectives add as_edited_uuid3 dummy
scoreboard objectives add as_edited_uuid4 dummy
scoreboard objectives add as_lock_uuid1 dummy
scoreboard objectives add as_lock_uuid2 dummy
scoreboard objectives add as_lock_uuid3 dummy
scoreboard objectives add as_lock_uuid4 dummy
scoreboard objectives add as_uuid1 dummy
scoreboard objectives add as_uuid2 dummy
scoreboard objectives add as_uuid3 dummy
scoreboard objectives add as_uuid4 dummy
scoreboard objectives add as_current_pose dummy
scoreboard objectives add as_wand_used minecraft.used:minecraft.warped_fungus_on_a_stick
#
# Resets triggers on reload
#
scoreboard players enable * as_trigger
scoreboard players enable * as_help
scoreboard players enable * if_invisible
scoreboard players enable * as_repeat
scoreboard players enable * pointer_wand
scoreboard players enable * adjustment_wand
#
# Variables
#
scoreboard players set #var15000 as_angle 15000
scoreboard players set #var45000 as_angle 45000
scoreboard players set #var30000 as_angle 30000
scoreboard players set #var60000 as_angle 60000
scoreboard players set #var90000 as_angle 90000
scoreboard players set #var180000 as_angle 180000
scoreboard players set #var360000 as_angle 360000
scoreboard players set #var-1 as_angle -1
#
# Admin settings
#
execute unless score #book_uncraftable as_angle matches 0..1 run scoreboard players set #book_uncraftable as_angle 0
execute unless score #help_craftable as_angle matches 0..1 run scoreboard players set #help_craftable as_angle 0
execute unless score #fixing_enabled as_angle matches 0..1 run scoreboard players set #fixing_enabled as_angle 0
execute unless score #uuid_locking as_angle matches 0..1 run scoreboard players set #uuid_locking as_angle 0
execute unless score #wands_disabled as_angle matches 0..1 run scoreboard players set #wands_disabled as_angle 0
#
# Legacy settings
#
execute if data storage customizable_armor_stands:settings as_admin{book_craft:"Disabled"} run scoreboard players set #book_uncraftable as_angle 1
execute if data storage customizable_armor_stands:settings as_admin{book_craft:"Enabled"} run scoreboard players set #book_uncraftable as_angle 0
execute if data storage customizable_armor_stands:settings as_admin{book_help:"Disabled"} run scoreboard players set #help_craftable as_angle 0
execute if data storage customizable_armor_stands:settings as_admin{book_help:"Enabled"} run scoreboard players set #help_craftable as_angle 1
execute if data storage customizable_armor_stands:settings as_admin{fixed_item_frame:"Enabled"} run scoreboard players set #fixing_enabled as_angle 1
execute if data storage customizable_armor_stands:settings as_admin{fixed_item_frame:"Disabled"} run scoreboard players set #fixing_enabled as_angle 0
execute if data storage customizable_armor_stands:settings as_admin{uuid_lock:"Enabled"} run scoreboard players set #uuid_locking as_angle 1
execute if data storage customizable_armor_stands:settings as_admin{uuid_lock:"Disabled"} run scoreboard players set #uuid_locking as_angle 0
#execute if data storage customizable_armor_stands:settings as_admin run data remove storage customizable_armor_stands:settings as_admin
#
# Sets storage settings
#
#execute unless data storage customizable_armor_stands:settings as_admin.book_craft run data modify storage customizable_armor_stands:settings as_admin.book_craft set value "Enabled"
#execute unless data storage customizable_armor_stands:settings as_admin.book_help run data modify storage customizable_armor_stands:settings as_admin.book_help set value "Disabled"
#execute unless data storage customizable_armor_stands:settings as_admin.fixed_item_frame run data modify storage customizable_armor_stands:settings as_admin.fixed_item_frame set value "Disabled"
#execute unless data storage customizable_armor_stands:settings as_admin.uuid_lock run data modify storage customizable_armor_stands:settings as_admin.uuid_lock set value "Disabled"
execute unless score #undo_states as_angle matches 0.. run scoreboard players set #undo_states as_angle 10
execute unless score #animate_trigger as_angle matches 0.. run scoreboard players set #animate_trigger as_angle 0
# book nbt storage
data remove storage armor_statues:book_data tag
data merge storage armor_statues:book_data {\
    tag:{\
        title:"Statues v2.11",\
        author:"Stick God",\
        datapack:"ArmorStatuesV2",\
        CustomModelData:10, \
        pages:[\
            '[\
                {\
                    "text":"      ",\
                    "color":"white"\
                },\
                {\
                    "text":"Statues v2.11",\
                    "color":"dark_blue"\
                },\
                {\
                    "text":"   ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u24be",\
                    "color":"dark_purple",\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"This book allows you to apply basic settings to an armor stand. Clicking the coloured links will adjust the closest armor stand within three blocks.","color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                \
                {\
                    "text":"\\n         ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u293a",\
                    "bold":true,\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1200"\
                    },\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":{\
                            "text":"Undo",\
                            "color":"yellow"\
                        }\
                    }\
                },\
                \
                {\
                    "text":"  ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u27f2",\
                    "bold":true,\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_repeat set 1"\
                    },\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":{\
                            "text":"Repeat","color":"yellow"\
                        }\
                    }\
                },\
                \
                {\
                    "text":"  ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u293b",\
                    "bold":true,\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1201"\
                    },\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":{\
                            "text":"Redo",\
                            "color":"yellow"\
                        }\
                    }\
                },\
                \
                {\
                    "text":"\\n  Table of Contents",\
                    "color":"black"\
                },\
                \
                {\
                    "text":"\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"\\nStyles",\
                    "color":"dark_aqua",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"2"\
                    }\
                },\
                {\
                    "text":"     ",\
                    "color":"white"\
                },\
                {\
                    "text":"Auto Align",\
                    "color":"dark_aqua",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"7"\
                    }\
                },\
                \
                {\
                    "text":"\\nNudge",\
                    "color":"dark_aqua",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"3"\
                    }\
                },\
                {\
                    "text":"    ..",\
                    "color":"white"\
                },\
                {\
                    "text":"Swap Slots",\
                    "color":"dark_aqua",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"7"\
                    }\
                },\
                \
                {\
                    "text":"\\nRotation",\
                    "color":"dark_aqua",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"4"\
                    }\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"Mirror/Flip",\
                    "color":"dark_aqua",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"8"\
                    }\
                },\
                \
                {\
                    "text":"\\nPointing",\
                    "color":"dark_aqua",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"4"\
                    }\
                },\
                {\
                    "text":"   ",\
                    "color":"white"\
                },\
                {\
                    "text":"Utilities",\
                    "color":"dark_aqua",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"8"\
                    }\
                },\
                \
                {\
                    "text":"\\nPresets",\
                    "color":"dark_aqua",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"5"\
                    }\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"Item Frames",\
                    "color":"dark_aqua",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"9"\
                    }\
                },\
                \
                {\
                    "text":"\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"Pose Adjust",\
                    "color":"dark_aqua",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"6"\
                    }\
                },\
                {\
                    "text":"   ",\
                    "color":"white"\
                },\
                {\
                    "text":"Credits",\
                    "color":"dark_aqua",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"10"\
                    }\
                },\
                {\
                    "text":"\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"\\n      ",\
                    "color":"white"\
                },\
                {\
                    "text":"Check Target",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 999"\
                    }\
                }\
            ]',\
            '[\
                {"text":""},\
                {\
                    "text":"\\u00ab",\
                    "color":"light_purple",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"1"\
                    }\
                },\
                {"text":"   ","color":"white"},\
                {\
                    "text":"Style Settings",\
                    "color":"dark_blue"\
                },\
                {\
                    "text":"\\n\\nShow Base Plate:",\
                    "color":"black"\
                },\
                {"text":"\\n        ","color":"white"},\
                {\
                    "text":"Yes","color":\
                    "dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1"\
                    }\
                },\
                {\
                    "text":" / ",\
                    "color":"black"\
                },\
                {\
                    "text":"No",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 2"\
                    }\
                },\
                {\
                    "text":"\\nShow Arms:",\
                    "color":"black"\
                },\
                {\
                    "text":"\\n        ",\
                    "color":"white"\
                },\
                {\
                    "text":"Yes",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 3"\
                    }\
                },\
                {\
                    "text":" / ",\
                    "color":"black"\
                },\
                {\
                    "text":"No",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 4"\
                    }\
                },\
                {\
                    "text":"\\nSmall Stand:",\
                    "color":"black"\
                },\
                {\
                    "text":"\\n        ",\
                    "color":"white"\
                },\
                {\
                    "text":"Yes",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 5"\
                    }\
                },\
                {\
                    "text":" / ",\
                    "color":"black"\
                },\
                {\
                    "text":"No",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 6"\
                    }\
                },\
                {\
                    "text":"\\nApply Gravity:",\
                    "color":"black"\
                },\
                {\
                    "text":"\\n        ",\
                    "color":"white"\
                },\
                {\
                    "text":"Yes",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 7"\
                    }\
                },\
                {\
                    "text":" / ",\
                    "color":"black"\
                },\
                {\
                    "text":"No",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 8"\
                    }\
                },\
                {\
                    "text":"\\nStand Visible:",\
                    "color":"black"\
                },\
                {\
                    "text":"\\n        ",\
                    "color":"white"\
                },\
                {\
                    "text":"Yes",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 9"\
                    }\
                },\
                {\
                    "text":" / ",\
                    "color":"black"\
                },\
                {\
                    "text":"No",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 10"\
                    }\
                },\
                {\
                    "text":"\\nHas Visual Fire:",\
                    "color":"black"\
                },\
                {\
                    "text":"\\n        ",\
                    "color":"white"\
                },\
                {\
                    "text":"Yes",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 13"\
                    }\
                },\
                {\
                    "text":" / ",\
                    "color":"black"\
                },\
                {\
                    "text":"No",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 14"\
                    }\
                }\
            ]',\
            '[\
                {"text":""},\
                {\
                    "text":"\\u00ab",\
                    "color":"light_purple",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"1"\
                    }\
                },\
                {\
                    "text":"   .",\
                    "color":"white"\
                },\
                {\
                    "text":"Nudge Position",\
                    "color":"dark_blue"\
                },\
                {\
                    "text":"  ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u24be",\
                    "color":"dark_purple",\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"Turn gravity off before nudging the Y-position.\\n\\nRelative Aligned nudging moves the armor stand relative to the player\'s position and aligned to the block grid.  (X=Left/Right, Z=Away/Towards)\\n\\nRelative Aligned nudging moves the armor stand relative to the player\'s exact position.  (X=Left/Right, Y=Above/Below, Z=Away/Towards)\\n\\nNudges are in 16ths of a block to align with the pixels of the block textures.","color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\n\\nX:  ",\
                    "color":"black"\
                },\
                {\
                    "text":"-8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 40"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 101"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 102"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 103"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 104"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 43"\
                    }\
                },\
                {\
                    "text":"\\nY:  ",\
                    "color":"black"\
                },\
                {\
                    "text":"-8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 44"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 105"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 106"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 107"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 108"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 47"\
                    }\
                },\
                {\
                    "text":"\\nZ:  ",\
                    "color":"black"\
                },\
                {\
                    "text":"-8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 48"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 109"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 110"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 111"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 112"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 51"\
                    }\
                },\
                {\
                    "text":"\\n\\n     Relative Aligned  ",\
                    "color":"black"\
                },\
                {\
                    "text":"\\nX:  ",\
                    "color":"black"\
                },\
                {\
                    "text":"-8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1100"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1101"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1102"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1103"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1104"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1105"\
                    }\
                },\
                {\
                    "text":"\\nZ:  ",\
                    "color":"black"\
                },\
                {\
                    "text":"-8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1106"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1107"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1108"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1109"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1110"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1111"\
                    }\
                },\
                {\
                    "text":"\\n     ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\n      Relative Exact  ",\
                    "color":"black"\
                },\
                {\
                    "text":"\\nX:  ",\
                    "color":"black"\
                },\
                {\
                    "text":"-8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1112"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1113"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1114"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1115"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1116"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1117"\
                    }\
                },\
                {\
                    "text":"\\nY:  ",\
                    "color":"black"\
                },\
                {\
                    "text":"-8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1118"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1119"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1120"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1121"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1122"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1123"\
                    }\
                },\
                {\
                    "text":"\\nZ:  ",\
                    "color":"black"\
                },\
                {\
                    "text":"-8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1124"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1125"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"-1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1126"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+1",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1127"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+3",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1128"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"+8",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1129"\
                    }\
                },\
                {"text":""}\
            ]',\
            '[\
                {"text":""},\
                {\
                    "text":"\\u00ab",\
                    "color":"light_purple",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"1"\
                    }\
                },\
                {\
                    "text":"   ",\
                    "color":"white"\
                },\
                {\
                    "text":"Adjust Rotation",\
                    "color":"dark_blue"\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u24be",\
                    "color":"dark_purple",\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"The angle step (default 15\\u00b0) is used for both the stand rotation and the pose adjustments.\\n\\nToward and Away turn the armor stand to face toward or away from you.",\
                                "color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\n\\n  ",\
                    "color":"white"\
                },\
                {\
                    "text":"<<",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 56"\
                    }\
                },\
                {\
                    "text":"  ",\
                    "color":"white"\
                },\
                {\
                    "text":"45\\u00b0",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 120"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"black"\
                },\
                {\
                    "text":"15\\u00b0",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 121"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"black"\
                },\
                {\
                    "text":"5\\u00b0",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 122"\
                    }\
                },\
                {\
                    "text":" ",\
                    "color":"black"\
                },\
                {\
                    "text":"1\\u00b0",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 123"\
                    }\
                },\
                {\
                    "text":"  ",\
                    "color":"white"\
                },\
                {\
                    "text":">>",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 57"\
                    }\
                },\
                {\
                    "text":"\\n\\n     ",\
                    "color":"white"\
                },\
                {\
                    "text":"Toward",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 124"\
                    }\
                },\
                {\
                    "text":"   ",\
                    "color":"white"\
                },\
                {\
                    "text":"Away",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 125"\
                    }\
                },\
                {\
                    "text":"\\n\\n         ",\
                    "color":"white"\
                },\
                {\
                    "text":"Pointing",\
                    "color":"dark_blue"\
                },\
                {\
                    "text":"       ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u24be",\
                    "color":"dark_purple",\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"Points selected appendage at head or feet.","color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\nGet Pointer Wand",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger pointer_wand"\
                    }\
                },\
                {\
                    "text":"\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"Head:",\
                    "color":"black"\
                },\
                {\
                    "text":"    .",\
                    "color":"white"\
                },\
                {\
                    "text":"Head",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1160"\
                    }\
                },\
                {\
                    "text":"   ",\
                    "color":"white"\
                },\
                {\
                    "text":"Feet",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1166"\
                    }\
                },\
                {\
                    "text":"\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"Body:",\
                    "color":"black"\
                },\
                {\
                    "text":"    .",\
                    "color":"white"\
                },\
                {\
                    "text":"Head",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1161"\
                    }\
                },\
                {\
                    "text":"   ",\
                    "color":"white"\
                },\
                {\
                    "text":"Feet",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1167"\
                    }\
                },\
                {\
                    "text":"\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"R.Arm:",\
                    "color":"black"\
                },\
                {\
                    "text":"    ",\
                    "color":"white"\
                },\
                {\
                    "text":"Head",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1162"\
                    }\
                },\
                {\
                    "text":"   ",\
                    "color":"white"\
                },\
                {\
                    "text":"Feet",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1168"\
                    }\
                },\
                {\
                    "text":"\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"L.Arm:",\
                    "color":"black"\
                },\
                {\
                    "text":"    ",\
                    "color":"white"\
                },\
                {\
                    "text":"Head",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1163"\
                    }\
                },\
                {\
                    "text":"   ",\
                    "color":"white"\
                },\
                {\
                    "text":"Feet",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1169"\
                    }\
                },\
                {\
                    "text":"\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"R.Leg:",\
                    "color":"black"\
                },\
                {\
                    "text":"    ",\
                    "color":"white"\
                },\
                {\
                    "text":"Head",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1164"\
                    }\
                },\
                {\
                    "text":"   ",\
                    "color":"white"\
                },\
                {\
                    "text":"Feet",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1170"\
                    }\
                },\
                {\
                    "text":"\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"L.Leg:",\
                    "color":"black"\
                },\
                {\
                    "text":"    ",\
                    "color":"white"\
                },\
                {\
                    "text":"Head",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1165"\
                    }\
                },\
                {\
                    "text":"   ",\
                    "color":"white"\
                },\
                {\
                    "text":"Feet",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1171"\
                    }\
                }\
            ]',\
            '[\
                {"text":""},\
                {\
                    "text":"\\u00ab",\
                    "color":"light_purple",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"1"\
                    }\
                },\
                {\
                    "text":"   ",\
                    "color":"white"\
                },\
                {\
                    "text":"Pose Presets",\
                    "color":"dark_blue"\
                },\
                {\
                    "text":"    ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u24be",\
                    "color":"dark_purple",\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"The Death pose is for a figure lying down and requires a separate armor stand for the legs.\\n\\nRandomized creates a completely unique randomized custom pose.\\n\\nThe Block and Item presets are designed to hold blocks and items in line with the world grid.",\
                                "color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\n\\nAttention",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 20"\
                    }\
                },\
                {\
                    "text":"    .",\
                    "color":"white"\
                },\
                {\
                    "text":"Confident",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 30"\
                    }\
                },\
                {\
                    "text":"\\nWalking",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 21"\
                    }\
                },\
                {\
                    "text":"      ..",\
                    "color":"white"\
                },\
                {\
                    "text":"Salute",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 31"\
                    }\
                },\
                {\
                    "text":"\\nRunning",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 22"\
                    }\
                },\
                {\
                    "text":"     ..",\
                    "color":"white"\
                },\
                {\
                    "text":"Death",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 32"\
                    }\
                },\
                {\
                    "text":"\\nPointing",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 23"\
                    }\
                },\
                {\
                    "text":"     ..",\
                    "color":"white"\
                },\
                {\
                    "text":"Facepalm",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 33"\
                    }\
                },\
                {\
                    "text":"\\nBlocking",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 24"\
                    }\
                },\
                {\
                    "text":"     .",\
                    "color":"white"\
                },\
                {\
                    "text":"Lazing",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 34"\
                    }\
                },\
                {\
                    "text":"\\nLungeing",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 25"\
                    }\
                },\
                {\
                    "text":"    .",\
                    "color":"white"\
                },\
                {\
                    "text":"Confused",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 35"\
                    }\
                },\
                {\
                    "text":"\\nWinning",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 26"\
                    }\
                },\
                {\
                    "text":"      ..",\
                    "color":"white"\
                },\
                {\
                    "text":"Formal",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 36"\
                    }\
                },\
                {\
                    "text":"\\nSitting",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 27"\
                    }\
                },\
                {\
                    "text":"       ..",\
                    "color":"white"\
                },\
                {\
                    "text":"Sad",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 37"\
                    }\
                },\
                {\
                    "text":"\\nArabesque",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 28"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"Joyous",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 38"\
                    }\
                },\
                {\
                    "text":"\\nCupid",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 29"\
                    },\
                    "underlined":true\
                },\
                {\
                    "text":"        ",\
                    "color":"dark_green",\
                    "underlined":true\
                },\
                {\
                    "text":"Stargazing",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 39"\
                    },\
                    "underlined":true\
                },\
                {\
                    "text":"\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"Randomized",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1150"\
                    }\
                },\
                {\
                    "text":"\\nBlock",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 141"\
                    }\
                },\
                {\
                    "text":"        ..",\
                    "color":"white"\
                },\
                {\
                    "text":"Item",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 142"\
                    }\
                }\
            ]',\
            '[\
                {"text":""},\
                {\
                    "text":"\\u00ab",\
                    "color":"light_purple",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"1"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"Pose Adjustment",\
                    "color":"dark_blue"\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u24be",\
                    "color":"dark_purple",\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"The angle step set for adjusting the stand rotation is also used for the pose adjustments.",\
                                "color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\nGet Adjustment Wand",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger adjustment_wand"\
                    }\
                },\
                {\
                    "text":"\\n          .",\
                    "color":"white"\
                },\
                {\
                    "text":"X",\
                    "color":"black"\
                },\
                {\
                    "text":"     .",\
                    "color":"white"\
                },\
                {\
                    "text":"Y",\
                    "color":"black"\
                },\
                {\
                    "text":"     .",\
                    "color":"white"\
                },\
                {\
                    "text":"Z",\
                    "color":"black"\
                },\
                {\
                    "text":"\\nHead",\
                    "color":"black"\
                },\
                {\
                    "text":"   ",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{"action":"run_command",\
                    "value":"/trigger as_trigger set 60"}\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 61"\
                    }\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 62"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 63"\
                    }\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 64"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 65"\
                    }\
                },\
                {\
                    "text":"\\n\\nBody",\
                    "color":"black"\
                },\
                {\
                    "text":"   ",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 67"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 66"\
                    }\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 68"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 69"\
                    }\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 70"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 71"\
                    }\
                },\
                {\
                    "text":"\\n\\nR.Arm",\
                    "color":"black"\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 72"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 73"\
                    }\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 74"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 75"\
                    }\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 77"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 76"\
                    }\
                },\
                {\
                    "text":"\\n\\nL.Arm",\
                    "color":"black"\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 78"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 79"\
                    }\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 81"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 80"\
                    }\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 82"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 83"\
                    }\
                },\
                {\
                    "text":"\\n\\nR.Leg",\
                    "color":"black"\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 84"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 85"\
                    }\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 87"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 86"\
                    }\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 89"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 88"\
                    }\
                },\
                {\
                    "text":"\\n\\nL.Leg",\
                    "color":"black"\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 90"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 91"\
                    }\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 92"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 93"\
                    }\
                },\
                {\
                    "text":"  .",\
                    "color":"white"\
                },\
                {\
                    "text":"-",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 94"\
                    }\
                },\
                {\
                    "text":" .",\
                    "color":"white"\
                },\
                {\
                    "text":"+",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 95"\
                    }\
                }\
            ]',\
            '[\
                {"text":""},\
                {\
                    "text":"\\u00ab",\
                    "color":"light_purple",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"1"\
                    }\
                },\
                {\
                    "text":"    ",\
                    "color":"white"\
                },\
                {\
                    "text":"Auto Alignment",\
                    "color":"dark_blue"\
                },\
                {\
                    "text":"  ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u24be",\
                    "color":"dark_purple",\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"Pose and position an armor stand to align a held block or item with an adjacent block.",\
                                "color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\n\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"Block on surface",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 151"\
                    },\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"Align an armor stand placed on a surface so that a block held by it appears on the surface.",\
                                "color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\n\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"Item on surface",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 152"\
                    },\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"Align an armor stand placed on a surface so that an item held by it appears upright on the surface.",\
                                "color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"Item flat on surface",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 153"\
                    },\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"Align an armor stand placed on a surface so that a non-tool item held by it appears flat on the surface.",\
                                "color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"Tool flat on surface",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 154"\
                    },\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"Align an armor stand placed on a surface so that a tool held by it appears flat on the surface.",\
                                "color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\n\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"Tool rack",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 155"\
                    },\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"Align an armor stand with a tripwire hook on the wall above it so that a tool held by it appears to be hanging up.\\n\\nAlso locks the armor stand and disables all slots except the mainhand.",\
                                "color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\n\\n       ",\
                    "color":"white"\
                },\
                {\
                    "text":"Swap Slots",\
                    "color":"dark_blue"\
                },\
                {\
                    "text":"     ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u24be",\
                    "color":"dark_purple",\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"Swap items between equipment slots",\
                                "color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\n\\n.",\
                    "color":"white"\
                },\
                {\
                    "text":"Mainhand ",\
                    "color":"black"\
                },\
                {\
                    "text":"<->",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 161"\
                    }\
                },\
                {\
                    "text":" Offhand",\
                    "color":"black"\
                },\
                {\
                    "text":"\\n  ",\
                    "color":"white"\
                },\
                {\
                    "text":"Mainhand ",\
                    "color":"black"\
                },\
                {\
                    "text":"<->",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 162"\
                    }\
                },\
                {\
                    "text":" Head",\
                    "color":"black"\
                }\
            ]',\
            '[\
                {"text":""},\
                {\
                    "text":"\\u00ab",\
                    "color":"light_purple",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"1"\
                    }\
                },\
                {\
                    "text":".",\
                    "color":"white"\
                },\
                {\
                    "text":"Pose Mirror & Flip",\
                    "color":"dark_blue"\
                },\
                {\
                    "text":" ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u24be",\
                    "color":"dark_purple",\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"Mirroring copies the arm or leg pose from left to right or vice versa. Flipping reverses the armor stand\'s pose entirely.",\
                                "color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\n\\n ",\
                    "color":"white"\
                },\
                {\
                    "text":"Mirror Arms",\
                    "color":"black"\
                },\
                {\
                    "text":"  ",\
                    "color":"white"\
                },\
                {\
                    "text":"L>R",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 131"\
                    }\
                },\
                {\
                    "text":"  ",\
                    "color":"white"\
                },\
                {\
                    "text":"R>L",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 132"\
                    }\
                },\
                {\
                    "text":"\\n          ",\
                    "color":"white"\
                },\
                {\
                    "text":"Legs",\
                    "color":"black"\
                },\
                {\
                    "text":"  ",\
                    "color":"white"\
                },\
                {\
                    "text":"L>R",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 133"\
                    }\
                },\
                {\
                    "text":"  ",\
                    "color":"white"\
                },\
                {\
                    "text":"R>L",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 134"\
                    }\
                },\
                {\
                    "text":"\\n\\n                  .",\
                    "color":"white"\
                },\
                {\
                    "text":"<-Flip->",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 135"\
                    }\
                },\
                {\
                    "text":"\\n\\n         ",\
                    "color":"white"\
                },\
                {\
                    "text":"Utilities",\
                    "color":"dark_blue"\
                },\
                {\
                    "text":"        ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u24be",\
                    "color":"dark_purple",\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"Copying an armor stand stores it\'s settings and pose in the book and these can then be pasted into another armor stand. The book must be the selected item in your mainhand or offhand for this to work.\\n\\nLocking an armor stand prevents it from being changed using the book and disables interaction with the equipment slots.\\n\\nSealing an armor stand, which is only available in creative mode, does the same and in addition makes it invulnerable",\
                                "color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\n\\n     .",\
                    "color":"white"\
                },\
                {\
                    "text":"Copy",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1004"\
                    }\
                },\
                {\
                    "text":" / ",\
                    "color":"black"\
                },\
                {\
                    "text":"Paste",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1005"\
                    }\
                },\
                {\
                    "text":"\\n\\n     ",\
                    "color":"white"\
                },\
                {\
                    "text":"Lock",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1000"\
                    }\
                },\
                {\
                    "text":" / ",\
                    "color":"black"\
                },\
                {\
                    "text":"Unlock",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger as_trigger set 1001"\
                    }\
                },\
                {\
                    "text":"\\n\\n     ",\
                    "color":"white"\
                },\
                {\
                    "text":"Seal",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/function armor_statues:sealing/seal"\
                    }\
                },\
                {\
                    "text":" / ",\
                    "color":"black"\
                },\
                {\
                    "text":"Unseal",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/function armor_statues:sealing/unseal"\
                    }\
                }\
            ]',\
            '[\
                {"text":""},\
                {\
                    "text":"\\u00ab",\
                    "color":"light_purple",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"1"\
                    }\
                },\
                {\
                    "text":"    ",\
                    "color":"white"\
                },\
                {\
                    "text":"Item Frames",\
                    "color":"dark_blue"\
                },\
                {\
                    "text":"     ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u24be",\
                    "color":"dark_purple",\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"To make an item frame invisible it must be one block in front of the players eyes and have an item in the frame.\\nAlternatively you can also enter:\\n/trigger if_invisible\\nTo make the item frame visible remove its item.\\n\\nMust be in creative to make item frame Fixed, or have it enabled from the admin menu.",\
                                "color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                {\
                    "text":"\\n\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"Invisible item frame",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger if_invisible set 1"\
                    }\
                },\
                {\
                    "text":"\\n\\n",\
                    "color":"white"\
                },\
                {\
                    "text":"Fixed Item Frame:",\
                    "color":"black"\
                },\
                {\
                    "text":"\\n        ",\
                    "color":"white"\
                },\
                {\
                    "text":"Yes",\
                    "color":"dark_green",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger if_invisible set 2"\
                    }\
                },\
                {\
                    "text":" / ",\
                    "color":"black"\
                },\
                {\
                    "text":"No",\
                    "color":"red",\
                    "clickEvent":{\
                        "action":"run_command",\
                        "value":"/trigger if_invisible set 3"\
                    }\
                },\
                \
                {\
                    "text":"",\
                    "color":"white"\
                }\
            ]',\
            '[\
                {"text":""},\
                {\
                    "text":"\\u00ab",\
                    "color":"light_purple",\
                    "clickEvent":{\
                        "action":"change_page",\
                        "value":"1"\
                    }\
                },\
                {\
                    "text":"        ",\
                    "color":"white"\
                },\
                {\
                    "text":"Credits",\
                    "color":"dark_blue"\
                },\
                {\
                    "text":"      ",\
                    "color":"white"\
                },\
                {\
                    "text":"\\u24be",\
                    "color":"dark_purple",\
                    "hoverEvent":{\
                        "action":"show_text",\
                        "contents":[\
                            {\
                                "text":"Click on names for links.",\
                                "color":"yellow"\
                            }\
                        ]\
                    }\
                },\
                \
                {\
                    "text":"\\n\\n  Original concept by",\
                    "color":"black"\
                },\
                {\
                    "text":"\\n       ",\
                    "color":"white"\
                },\
                {\
                    "text":"Phssthpok",\
                    "color":"#87325d",\
                    "bold":true,\
                    "clickEvent":{\
                        "action":"open_url",\
                        "value":"https://twitter.com/MCPhssthpok"\
                    }\
                },\
                {\
                    "text":"\\n\\n        ",\
                    "color":"white"\
                },\
                {\
                    "text":"Additional",\
                    "color":"black"\
                },\
                {\
                    "text":"\\n    ",\
                    "color":"white"\
                },\
                {\
                    "text":"improvements by",\
                    "color":"black"\
                },\
                {\
                    "text":"\\n       ",\
                    "color":"white"\
                },\
                {\
                    "text":"MSpaceDev",\
                    "color":"#e30000",\
                    "bold":true,\
                    "clickEvent":{\
                        "action":"open_url",\
                        "value":"https://www.youtube.com/c/MinecraftSpace"\
                    }\
                },\
                {\
                    "text":"\\n\\n    ",\
                    "color":"white"\
                },\
                {\
                    "text":"Development and",\
                    "color":"black"\
                },\
                {\
                    "text":"\\n    ",\
                    "color":"white"\
                },\
                {\
                    "text":"improvements by",\
                    "color":"black"\
                },\
                {\
                    "text":"\\n       ",\
                    "color":"white"\
                },\
                {\
                    "text":"MukiTanuki",\
                    "color":"#0072e5",\
                    "bold":true,\
                    "clickEvent":{\
                        "action":"open_url",\
                        "value":"https://twitter.com/MukiTanuki"\
                    }\
                }\
            ]'\
        ]\
    }\
}