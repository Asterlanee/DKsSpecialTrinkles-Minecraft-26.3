#记分板清零
scoreboard players set @s SupremeBoyTrigger 0

#条件检测
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run title @s title {"text": "它还没有激活……",bold: true}
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run playsound minecraft:block.fire.extinguish ambient @s ~ ~ ~ 1 1
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run return fail

execute if entity @n[predicate=supreme_boy_creations:base_detect] run title @s title {"text": "它的基座消失了，这可不行……",bold: true}
execute if entity @n[predicate=supreme_boy_creations:base_detect] run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 1 1
execute if entity @n[predicate=supreme_boy_creations:base_detect] run return fail

execute if entity @n[predicate=supreme_boy_creations:conditions/all_empty_hand] run title @s title {"text": "它的手上什么也没有……",bold: true}
execute if entity @n[predicate=supreme_boy_creations:conditions/all_empty_hand] run playsound block.anvil.land ambient @s ~ ~ ~ 1 1
execute if entity @n[predicate=supreme_boy_creations:conditions/all_empty_hand] run return fail

execute if entity @n[predicate=supreme_boy_creations:conditions/empty_hand] run title @s title {"text": "它有的手上还空着……",bold: true}
execute if entity @n[predicate=supreme_boy_creations:conditions/empty_hand] run title @s subtitle {"text": "这可没法保存附魔哟~",bold: true}
execute if entity @n[predicate=supreme_boy_creations:conditions/empty_hand] run playsound block.anvil.land ambient @s ~ ~ ~ 1 1
execute if entity @n[predicate=supreme_boy_creations:conditions/empty_hand] run return fail

execute if entity @n[predicate=supreme_boy_creations:conditions/non_book] run title @s title {"text": "你并没有在它的手上放书……",bold: true}
execute if entity @n[predicate=supreme_boy_creations:conditions/non_book] run title @s subtitle {"text": "这可没法保存附魔哟~",bold: true}
execute if entity @n[predicate=supreme_boy_creations:conditions/non_book] run playsound block.anvil.land ambient @s ~ ~ ~ 1 1
execute if entity @n[predicate=supreme_boy_creations:conditions/non_book] run return fail

execute if entity @s[level=..14] run title @s title {"text": "经验值不够呢！",bold: true}
execute if entity @s[level=..14] run title @s subtitle {"text": "至少到达§6§l15级§r才有300点哟",bold: true}
execute if entity @s[level=..14] run playsound block.note_block.pling ambient @s ~ ~ ~ 1 0.6
execute if entity @s[level=..14] run return fail

#附魔回归功能
execute as @n[tag=crafter] at @s run summon minecraft:armor_stand ~ ~-1 ~ {Invisible:true,ShowArms:true,Small:true,Tags:["supremeboy","temp"],Silent:true}

execute as @n[tag=crafter] at @s run item replace entity @n[tag=temp] weapon.mainhand from entity @s weapon.mainhand
execute if entity @n[tag=temp,nbt={equipment:{mainhand:{id:"minecraft:book"}}}] run function supreme_boy_creations:core_functioning/reforge/enchantment_return/acting_mainhand
execute as @n[tag=crafter] at @s run item replace entity @n[tag=temp] weapon.mainhand from entity @s weapon.offhand
execute if entity @n[tag=temp,nbt={equipment:{mainhand:{id:"minecraft:book"}}}] run function supreme_boy_creations:core_functioning/reforge/enchantment_return/acting_offhand
kill @n[tag=temp]