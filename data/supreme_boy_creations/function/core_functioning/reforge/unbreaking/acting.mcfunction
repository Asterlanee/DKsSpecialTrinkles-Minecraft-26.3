item modify entity @s weapon.mainhand supreme_boy_creations:reinforces/unbreakable
item override block ~ ~-1 ~ container.* with minecraft:air
playsound minecraft:ui.toast.challenge_complete voice @a[distance=..5] ~ ~ ~ 2
playsound minecraft:block.anvil.use voice @a[distance=..5] ~ ~ ~ 2 0.1
title @p actionbar {"text": "最近的§c§l至尊男孩合成器核心§r的主手物品已强化为§e无法破坏§r，服务已完成！"}