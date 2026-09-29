experience add @s -300 points
execute as @n[tag=crafter] at @s run item replace entity @s weapon.mainhand with enchanted_book
execute as @n[tag=crafter] at @s run data modify entity @s equipment.mainhand.components.minecraft:repair_cost merge from entity @s equipment.offhand.components.minecraft:repair_cost
execute as @n[tag=crafter] at @s run data modify entity @s equipment.mainhand.components.minecraft:stored_enchantments merge from entity @s equipment.offhand.components.minecraft:enchantments
execute as @n[tag=crafter] at @s run item modify entity @s weapon.offhand supreme_boy_creations:reinforces/disenchant

playsound block.note_block.pling voice @s ~ ~ ~ 2 1
title @s actionbar {"text": "最近的§c§l至尊男孩合成器核心§r的副手物品附魔已存入主手的书中，服务已完成！"}