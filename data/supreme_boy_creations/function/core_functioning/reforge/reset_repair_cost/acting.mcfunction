execute as @n[tag=crafter] run item modify entity @s weapon.mainhand supreme_boy_creations:reinforces/repair_cost_reset
experience add @s -1000 points
execute at @n[tag=crafter] run item override block ~ ~-1 ~ container.* with minecraft:air


playsound minecraft:entity.player.levelup voice @a[distance=..5] ~ ~ ~ 2 0.1
title @s actionbar {"text": "最近的§c§l至尊男孩合成器核心§r的主物品的修补等级已§e重置§r，服务已完成！"}