experience add @s -100 points
execute as @n[tag=crafter] at @s run item modify entity @s weapon.mainhand supreme_boy_creations:reinforces/fire_immuned
playsound minecraft:block.anvil.use voice @s ~ ~ ~ 2 1
title @s actionbar {"text": "最近的§c§l至尊男孩合成器核心§r的主手物品已强化为§e不会被火或熔岩摧毁§r，服务已完成！"}