#进度移除
advancement revoke @s only supreme_boy_creations:trigger/motion

#条件检测
swing @s mainhand
tag @n[predicate=supreme_boy_creations:core_detect] remove Motion1
tag @n[predicate=supreme_boy_creations:core_detect] remove Motion2
tag @n[predicate=supreme_boy_creations:core_detect] remove Motion3
data merge entity @n[predicate=supreme_boy_creations:core_detect] {Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
data merge entity @n[predicate=supreme_boy_creations:core_plate_detect] {Glowing:false}
data merge entity @n[predicate=supreme_boy_creations:core_detect] {Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,-10f],RightArm:[0f,0f,10f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
playsound minecraft:block.note_block.pling ambient @s ~ ~ ~
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=25..}] run return run function supreme_boy_creations:core_functioning/interaction/failure
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=10..20}] run return run title @s actionbar {"text": "不理你了！(╬`⌒´)",bold:true}
scoreboard players reset @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=..9}] SupremeBoyTrigger

scoreboard players add @n[predicate=supreme_boy_creations:core_motion_detect] SupremeBoyMotion 1
execute if entity @n[predicate=supreme_boy_creations:core_motion_detect,scores={SupremeBoyMotion=1}] run tag @n[predicate=supreme_boy_creations:core_detect] add Motion1
execute if entity @n[predicate=supreme_boy_creations:core_motion_detect,scores={SupremeBoyMotion=1}] run return run title @s title {"text": "启用动作：I",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_motion_detect,scores={SupremeBoyMotion=2}] run tag @n[predicate=supreme_boy_creations:core_detect] add Motion2
execute if entity @n[predicate=supreme_boy_creations:core_motion_detect,scores={SupremeBoyMotion=2}] run return run title @s title {"text": "启用动作：II",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_motion_detect,scores={SupremeBoyMotion=3}] run tag @n[predicate=supreme_boy_creations:core_detect] add Motion3
execute if entity @n[predicate=supreme_boy_creations:core_motion_detect,scores={SupremeBoyMotion=3}] run return run title @s title {"text": "启用动作：III",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_motion_detect,scores={SupremeBoyMotion=4}] run data merge entity @n[predicate=supreme_boy_creations:core_plate_detect] {Glowing:true}
execute if entity @n[predicate=supreme_boy_creations:core_motion_detect,scores={SupremeBoyMotion=4}] run title @s title {"text": "禁用动作",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_motion_detect,scores={SupremeBoyMotion=4..}] run return run scoreboard players reset @n[predicate=supreme_boy_creations:core_motion_detect] SupremeBoyMotion