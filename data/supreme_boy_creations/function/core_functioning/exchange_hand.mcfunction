#记分板清零
scoreboard players set @s SupremeBoyTrigger 0

#条件检测
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run title @s title {"text": "它还没有激活……",bold: true}
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run playsound minecraft:block.fire.extinguish ambient @s ~ ~ ~ 1 1
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run return fail


execute as @n[tag=crafter] at @s run summon minecraft:armor_stand ~ ~-1 ~ {Invisible:true,ShowArms:true,Small:true,Tags:["supremeboy","temp"],Silent:true}
execute as @n[tag=crafter] at @s run item replace entity @n[tag=temp] weapon.mainhand from entity @s weapon.mainhand
execute as @n[tag=crafter] at @s run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute as @n[tag=crafter] at @s run item replace entity @s weapon.offhand from entity @n[tag=temp] weapon.mainhand
playsound block.note_block.pling voice @s ~ ~ ~ 2 1
title @s actionbar {"text": "最近的§c§l至尊男孩合成器核心§r的主副手物品已交换"}
kill @n[tag=temp]

