#记分板清零
scoreboard players set @s SupremeBoyTrigger 0

#条件检测
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run title @s title {"text": "它还没有激活……",bold: true}
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run playsound minecraft:block.fire.extinguish ambient @s ~ ~ ~ 1 1
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run return fail

execute if entity @n[predicate=supreme_boy_creations:base_detect] run title @s title {"text": "它的基座消失了，这可不行……",bold: true}
execute if entity @n[predicate=supreme_boy_creations:base_detect] run playsound block.anvil.land ambient @s ~ ~ ~ 1 1
execute if entity @n[predicate=supreme_boy_creations:base_detect] run return fail

#配方检测
execute at @n[predicate=supreme_boy_creations:base_detect] if block ~ ~-1 ~ minecraft:dropper{Items:[{Slot:2b,count:2,id:"minecraft:iron_ingot"},{Slot:4b,count:3,id:"minecraft:iron_ingot"},{Slot:6b,count:1,id:"minecraft:iron_ingot"}]} run return run function supreme_boy_creations:core_functioning/crafter/test_mixture

title @s title {"text": "制作失败！",color:"#b60000",bold:true}
title @s subtitle {"text": "- 原因：未找到有效注册配方",color:"#ffa200",bold:true}
playsound minecraft:block.fire.extinguish ambient @s ~ ~ ~