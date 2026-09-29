#记分板清零
scoreboard players set @s SupremeBoyTrigger 0

execute at @n[predicate=supreme_boy_creations:core_detect] run kill @n[nbt={Tags:["supremeboy","core","hitbox"]},distance=..0.5]
execute at @n[predicate=supreme_boy_creations:core_detect] run kill @n[nbt={Tags:["supremeboy","core","dialoguebox"]},distance=..0.5]
execute at @n[predicate=supreme_boy_creations:core_detect] run kill @n[nbt={Tags:["supremeboy","core","dancebox"]},distance=..0.5]
execute at @n[predicate=supreme_boy_creations:core_detect] run kill @n[nbt={Tags:["supremeboy","core","decoration_plate"]},distance=..0.5]
execute at @n[predicate=supreme_boy_creations:core_detect] run summon minecraft:interaction ~ ~0.65 ~ {Tags:["supremeboy","core","hitbox"],width:0.5,height:0.5}
execute at @n[predicate=supreme_boy_creations:core_detect] run summon minecraft:interaction ~ ~ ~ {Tags:["supremeboy","core","dialoguebox"],width:0.4,height:0.1}
execute at @n[predicate=supreme_boy_creations:core_detect] run summon minecraft:interaction ~ ~0.1 ~ {Tags:["supremeboy","core","dancebox"],width:0.3,height:0.1}
execute at @n[predicate=supreme_boy_creations:core_detect] run summon minecraft:block_display ~ ~ ~ {Tags:["supremeboy","core","decoration_plate"],transformation:{scale:[0.5,0.45,0.5],left_rotation:{angle:0,axis:[0,1,0]},right_rotation:{angle:0,axis:[0,1,0]},translation:[-0.25,0,-0.25]},block_state:"minecraft:light_weighted_pressure_plate",Glowing:true,glow_color_override:16763648}

title @s actionbar {"text": "最近的§c§l至尊男孩合成器核心§r已重新激活！"}
playsound minecraft:block.piston.extend ambient @s ~ ~ ~