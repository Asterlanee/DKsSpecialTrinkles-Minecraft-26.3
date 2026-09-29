#记分板清零
scoreboard players set @s SupremeBoyTrigger 0

#条件检测
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run title @s title {"text": "它还没有激活……",bold: true}
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run playsound minecraft:block.fire.extinguish ambient @s ~ ~ ~ 1 1
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run return fail

execute if entity @n[predicate=supreme_boy_creations:base_detect] run title @s title {"text": "它的基座消失了，这可不行……",bold: true}
execute if entity @n[predicate=supreme_boy_creations:base_detect] run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 1 1
execute if entity @n[predicate=supreme_boy_creations:base_detect] run return fail

execute if entity @n[predicate=supreme_boy_creations:conditions/empty_mainhand] run title @s title {"text": "它的主手上什么也没有……",bold: true}
execute if entity @n[predicate=supreme_boy_creations:conditions/empty_mainhand] run playsound block.anvil.land ambient @s ~ ~ ~ 1 1
execute if entity @n[predicate=supreme_boy_creations:conditions/empty_mainhand] run return fail

execute as @n[tag=crafter] at @s unless block ~ ~-1 ~ minecraft:dropper{Items:[{Slot:0b,count:1,id:"minecraft:netherite_ingot"},{Slot:1b,components:{"minecraft:custom_data":{"special_trinkles":"starish_originium_shop","supreme_boy_category":"currency","itemID":"starish_originium"}},count:1},{Slot:2b,count:1,id:"minecraft:netherite_ingot"},{Slot:3b,components:{"minecraft:custom_data":{"special_trinkles":"starish_originium_shop","supreme_boy_category":"currency","itemID":"starish_originium"}},count:1},{Slot:4b,count:1,id:"minecraft:nether_star"},{Slot:5b,components:{"minecraft:custom_data":{"special_trinkles":"starish_originium_shop","supreme_boy_category":"currency","itemID":"starish_originium"}},count:1},{Slot:6b,count:1,id:"minecraft:netherite_ingot"},{Slot:7b,components:{"minecraft:custom_data":{"special_trinkles":"starish_originium_shop","supreme_boy_category":"currency","itemID":"starish_originium"}},count:1},{Slot:8b,count:1,id:"minecraft:netherite_ingot"}]} run return run function supreme_boy_creations:core_functioning/reforge/unbreaking/failed

#无限耐久
execute as @n[tag=crafter] at @s run function supreme_boy_creations:core_functioning/reforge/unbreaking/acting