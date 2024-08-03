# 
# Description:	Points an appendage at the player
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Summons temp marker
#
# height of player eyes = 1.625
# Head
#execute if score @s as_trigger matches 1160 rotated ~ 0 run summon minecraft:marker ^ ^ ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_marker"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1160 rotated ~ 0 run function armor_statues:summon_temp_marker {\
        x: 0f,\
        y: 1.625f,\
    }
#execute if score @s as_trigger matches 1166 rotated ~ 0 run summon minecraft:marker ^ ^ ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_marker"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1166 rotated ~ 0 run function armor_statues:summon_temp_marker {\
        x: 0f,\
        y: 1.625f,\
    }
# Body
#execute if score @s as_trigger matches 1161 rotated ~ 0 run summon minecraft:marker ^ ^ ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_marker"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1161 rotated ~ 0 run function armor_statues:summon_temp_marker {\
        x: 0f,\
        y: 1.625f,\
    }
#execute if score @s as_trigger matches 1167 rotated ~ 0 run summon minecraft:marker ^ ^ ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_marker"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1167 rotated ~ 0 run function armor_statues:summon_temp_marker {\
        x: 0f,\
        y: 1.625f,\
    }
# Right Arm
#execute if score @s as_trigger matches 1162 rotated ~ 0 run summon minecraft:marker ^-0.34375 ^-0.1875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_marker"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1162 rotated ~ 0 run function armor_statues:summon_temp_marker {\
        x: -0.34375f,\
        y: 1.438f,\
    }
#execute if score @s as_trigger matches 1168 rotated ~ 0 run summon minecraft:marker ^-0.34375 ^-0.1875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_marker"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1168 rotated ~ 0 run function armor_statues:summon_temp_marker {\
        x: -0.34375f,\
        y: 1.438f,\
    }
# Left Arm
#execute if score @s as_trigger matches 1163 rotated ~ 0 run summon minecraft:marker ^0.34375 ^-0.1875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_marker"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1163 rotated ~ 0 run function armor_statues:summon_temp_marker {\
        x: 0.34375f,\
        y: 1.438f,\
    }
#execute if score @s as_trigger matches 1169 rotated ~ 0 run summon minecraft:marker ^0.34375 ^-0.1875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_marker"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1169 rotated ~ 0 run function armor_statues:summon_temp_marker {\
        x: 0.34375f,\
        y: 1.438f,\
    }
# Right Leg
#execute if score @s as_trigger matches 1164 rotated ~ 0 run summon minecraft:marker ^-0.125 ^-0.875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_marker"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1164 rotated ~ 0 run function armor_statues:summon_temp_marker {\
        x: -0.125f,\
        y: 0.75f,\
    }
#execute if score @s as_trigger matches 1170 rotated ~ 0 run summon minecraft:marker ^-0.125 ^-0.875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_marker"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1170 rotated ~ 0 run function armor_statues:summon_temp_marker {\
        x: -0.125f,\
        y: 0.75f,\
    }
# Left Leg
#execute if score @s as_trigger matches 1165 rotated ~ 0 run summon minecraft:marker ^0.125 ^-0.875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_marker"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1165 rotated ~ 0 run function armor_statues:summon_temp_marker {\
        x: 0.125f,\
        y: 0.75f,\
    }
#execute if score @s as_trigger matches 1171 rotated ~ 0 run summon minecraft:marker ^0.125 ^-0.875 ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_marker"],DisabledSlots:4144959,Silent:1b}
execute if score @s as_trigger matches 1171 rotated ~ 0 run function armor_statues:summon_temp_marker {\
        x: 0.125f,\
        y: 0.75f,\
    }
#
execute if score @s as_trigger matches 1160..1165 as @e[type=minecraft:marker,limit=1,tag=as_temp_marker] at @s positioned ~ ~ ~ run tp @s ~ ~ ~ facing entity @p[tag=as_selected] eyes
execute if score @s as_trigger matches 1166..1171 as @e[type=minecraft:marker,limit=1,tag=as_temp_marker] at @s positioned ~ ~ ~ run tp @s ~ ~ ~ facing entity @p[tag=as_selected] feet
#
execute store result score #temp_as_x as_angle run data get entity @e[type=minecraft:marker,limit=1,tag=as_temp_marker] Rotation[0] 1000
execute store result score #temp_as_z as_angle run data get entity @e[type=minecraft:marker,limit=1,tag=as_temp_marker] Rotation[1] 1000
execute store result score #selected_as_x as_angle run data get entity @s Rotation[0] 1000
execute store result score #selected_as_z as_angle run data get entity @s Rotation[1] 1000
scoreboard players operation #temp_as_x as_angle -= #selected_as_x as_angle
# Appendage offset
execute if score @s as_trigger matches 1162..1165 run scoreboard players operation #temp_as_z as_angle -= #var90000 as_angle
execute if score @s as_trigger matches 1168..1171 run scoreboard players operation #temp_as_z as_angle -= #var90000 as_angle
# Head rotation offset (UNUSED)
#execute if score @s as_trigger matches 1160 run scoreboard players operation #temp_as_z as_angle += #var180000 as_angle
#execute if score @s as_trigger matches 1166 run scoreboard players operation #temp_as_z as_angle += #var180000 as_angle
#
# Mirror rotation so arms and legs rotate facing the right
#
execute if score @s as_trigger matches 1162..1165 if score #temp_as_x as_angle matches 180000.. run scoreboard players operation #temp_as_x as_angle -= #var360000 as_angle
execute if score @s as_trigger matches 1162..1165 if score #temp_as_x as_angle matches ..-180000 run scoreboard players operation #temp_as_x as_angle += #var360000 as_angle
execute if score @s as_trigger matches 1162..1165 if score #temp_as_x as_angle matches 90000.. run scoreboard players operation #temp_as_z as_angle *= #var-1 as_angle
execute if score @s as_trigger matches 1162..1165 if score #temp_as_x as_angle matches ..-90000 run scoreboard players operation #temp_as_z as_angle *= #var-1 as_angle
execute if score @s as_trigger matches 1162..1165 if score #temp_as_x as_angle matches 90000.. run scoreboard players operation #temp_as_x as_angle -= #var180000 as_angle
execute if score @s as_trigger matches 1162..1165 if score #temp_as_x as_angle matches ..-90000 run scoreboard players operation #temp_as_x as_angle += #var180000 as_angle
#
execute if score @s as_trigger matches 1168..1171 if score #temp_as_x as_angle matches 180000.. run scoreboard players operation #temp_as_x as_angle -= #var360000 as_angle
execute if score @s as_trigger matches 1168..1171 if score #temp_as_x as_angle matches ..-180000 run scoreboard players operation #temp_as_x as_angle += #var360000 as_angle
execute if score @s as_trigger matches 1168..1171 if score #temp_as_x as_angle matches 90000.. run scoreboard players operation #temp_as_z as_angle *= #var-1 as_angle
execute if score @s as_trigger matches 1168..1171 if score #temp_as_x as_angle matches ..-90000 run scoreboard players operation #temp_as_z as_angle *= #var-1 as_angle
execute if score @s as_trigger matches 1168..1171 if score #temp_as_x as_angle matches 90000.. run scoreboard players operation #temp_as_x as_angle -= #var180000 as_angle
execute if score @s as_trigger matches 1168..1171 if score #temp_as_x as_angle matches ..-90000 run scoreboard players operation #temp_as_x as_angle += #var180000 as_angle
# unused
#scoreboard players operation #temp_as_x as_angle *= #var-1 as_angle
#scoreboard players operation #temp_as_z as_angle *= #var-1 as_angle
#
data modify storage armor_statues:appendage appendage set value [0f,0f,0f]
execute store result storage armor_statues:appendage appendage[1] float 0.001 run scoreboard players get #temp_as_x as_angle
execute store result storage armor_statues:appendage appendage[0] float 0.001 run scoreboard players get #temp_as_z as_angle
# Head
execute if score @s as_trigger matches 1160 run data modify entity @s Pose.Head set from storage armor_statues:appendage appendage
execute if score @s as_trigger matches 1166 run data modify entity @s Pose.Head set from storage armor_statues:appendage appendage
# Body
execute if score @s as_trigger matches 1161 run data modify entity @s Pose.Body set from storage armor_statues:appendage appendage
execute if score @s as_trigger matches 1167 run data modify entity @s Pose.Body set from storage armor_statues:appendage appendage
# Right Arm
execute if score @s as_trigger matches 1162 run data modify entity @s Pose.RightArm set from storage armor_statues:appendage appendage
execute if score @s as_trigger matches 1168 run data modify entity @s Pose.RightArm set from storage armor_statues:appendage appendage
# Left Arm
execute if score @s as_trigger matches 1163 run data modify entity @s Pose.LeftArm set from storage armor_statues:appendage appendage
execute if score @s as_trigger matches 1169 run data modify entity @s Pose.LeftArm set from storage armor_statues:appendage appendage
# Right Leg
execute if score @s as_trigger matches 1164 run data modify entity @s Pose.RightLeg set from storage armor_statues:appendage appendage
execute if score @s as_trigger matches 1170 run data modify entity @s Pose.RightLeg set from storage armor_statues:appendage appendage
# Left Leg
execute if score @s as_trigger matches 1165 run data modify entity @s Pose.LeftLeg set from storage armor_statues:appendage appendage
execute if score @s as_trigger matches 1171 run data modify entity @s Pose.LeftLeg set from storage armor_statues:appendage appendage
#
# Kills temp marker and marker
#
kill @e[type=minecraft:marker,tag=as_temp_marker]
#
# Tag the armor stand as modified
#
tag @s add as_modified