#进度移除
advancement revoke @s only supreme_boy_creations:trigger/trigger_core

#条件检测
execute if entity @n[predicate=supreme_boy_creations:base_detect] run title @s title {"text": "它的基座消失了，这可不行……",bold: true}
execute if entity @n[predicate=supreme_boy_creations:base_detect] run playsound block.anvil.land ambient @s ~ ~ ~ 1 1
execute if entity @n[predicate=supreme_boy_creations:base_detect] run return fail

tag @n[predicate=supreme_boy_creations:core_detect] add crafter_active
execute at @n[predicate=supreme_boy_creations:core_detect] run kill @n[nbt={Tags:["supremeboy","core","hitbox"]},distance=..0.5]
execute at @n[predicate=supreme_boy_creations:core_detect] run kill @n[nbt={Tags:["supremeboy","core","dialoguebox"]},distance=..0.5]
execute at @n[predicate=supreme_boy_creations:core_detect] run kill @n[nbt={Tags:["supremeboy","core","dancebox"]},distance=..0.5]
execute at @n[predicate=supreme_boy_creations:core_detect] run kill @n[nbt={Tags:["supremeboy","core","decoration_plate"]},distance=..0.5]
execute as @n[tag=crafter_active] at @s run summon minecraft:interaction ~ ~0.65 ~ {Tags:["supremeboy","core","hitbox"],width:0.5,height:0.5}
execute as @n[tag=crafter_active] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["supremeboy","core","dialoguebox"],width:0.4,height:0.1}
execute as @n[tag=crafter_active] at @s run summon minecraft:interaction ~ ~0.1 ~ {Tags:["supremeboy","core","dancebox"],width:0.3,height:0.1}
execute at @n[tag=crafter_active] run summon minecraft:block_display ~ ~ ~ {Tags:["supremeboy","core","decoration_plate"],transformation:{scale:[0.5,0.45,0.5],left_rotation:{angle:0,axis:[0,1,0]},right_rotation:{angle:0,axis:[0,1,0]},translation:[-0.25,0,-0.25]},block_state:"minecraft:light_weighted_pressure_plate",Glowing:true,glow_color_override:16763648}
item modify entity @n[predicate=supreme_boy_creations:core_detect] weapon.mainhand supreme_boy_creations:item_num/-1
item modify entity @n[predicate=supreme_boy_creations:core_detect] armor.head supreme_boy_creations:appearance/enchant_glow/show

scoreboard players reset @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=..9}] SupremeBoyTrigger
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=25..}] run title @s title {"text":"下次不许打我了哦(≖_≖ )……"}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=25..}] run title @s subtitle ""
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=25..}] run playsound minecraft:block.piston.extend ambient @s ~ ~ ~
scoreboard players reset @n[predicate=supreme_boy_creations:core_detect] SupremeBoyTrigger

title @s actionbar {"text": "该§c§l至尊男孩合成器核心§r已激活！"}
playsound minecraft:block.beacon.activate ambient @s ~ ~ ~