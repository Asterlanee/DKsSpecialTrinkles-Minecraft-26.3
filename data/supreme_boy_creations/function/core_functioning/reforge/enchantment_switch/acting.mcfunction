experience add @s -600 points
execute as @n[tag=crafter] at @s run summon minecraft:armor_stand ~ ~-1 ~ {Invisible:true,ShowArms:true,Small:true,Tags:["supremeboy","temp"],Silent:true}
execute as @n[tag=crafter] at @s run item replace entity @e[tag=temp,sort=nearest,limit=1] weapon.mainhand from entity @s weapon.mainhand
execute as @n[tag=crafter] at @s run item modify entity @s weapon.mainhand supreme_boy_creations:reinforces/disenchant
execute as @n[tag=crafter] at @s run data modify entity @s equipment.mainhand.components.minecraft:enchantments set from entity @s equipment.offhand.components.minecraft:enchantments
execute as @n[tag=crafter] at @s run item modify entity @s weapon.offhand supreme_boy_creations:reinforces/disenchant
execute as @n[tag=crafter] at @s run data modify entity @s equipment.offhand.components.minecraft:enchantments set from entity @e[tag=temp,sort=nearest,limit=1] equipment.mainhand.components.minecraft:enchantments
playsound block.note_block.pling voice @s ~ ~ ~ 2 1
title @s actionbar {"text": "最近的§c§l至尊男孩合成器核心§r的主副手物品附魔已交换，服务已完成！"}
kill @e[tag=temp,sort=nearest,limit=1]