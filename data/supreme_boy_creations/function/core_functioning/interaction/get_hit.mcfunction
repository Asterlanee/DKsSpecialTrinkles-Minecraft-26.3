#进度移除
advancement revoke @s only supreme_boy_creations:trigger/attack_core

#条件检测
playsound minecraft:entity.generic.hurt ambient @s ~ ~ ~
scoreboard players add @n[predicate=supreme_boy_creations:core_detect] SupremeBoyTrigger 1
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=..4}] run return run title @s actionbar {"text": "*好像什么东西受伤了……",color:"#c4c4c4"}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=5}] run return run title @s actionbar {"text": "别……(｡í _ ì｡)",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=6}] run return run title @s actionbar {"text": "别这样做……(｡í _ ì｡)",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=7}] run return run title @s actionbar {"text": "我也是会疼的！(｀へ´*)",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=8}] run return run title @s actionbar {"text": "嘿！！(◣_◢)",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=9}] run return run title @s actionbar {"text": "听见没？！(◣д◢)ﾉ",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=10..20}] run return run title @s actionbar {"text": "不理你了！(╬`⌒´)",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=21}] run return run title @s actionbar {"text": "你再这样我就打你了！(╬ Ò﹏Ó)",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=22}] run return run title @s actionbar {"text": "住手！！(╬ Ò﹏Ó)",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=23}] run return run title @s actionbar {"text": "我说，住手！！(╬◣д◢)",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=24}] run return run title @s actionbar {"text": "啊啊啊啊！ヽ(≧Д≦)ノ",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=25..}] run title @s actionbar {"text": "哼！(╬◣_◢)",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=25..}] run return run damage @s 1 minecraft:generic_kill by @n[predicate=supreme_boy_creations:core_detect]