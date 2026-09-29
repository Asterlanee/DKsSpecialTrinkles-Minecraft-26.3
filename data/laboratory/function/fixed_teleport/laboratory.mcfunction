execute if dimension laboratory:laboratory run playsound minecraft:entity.villager.no voice @s
execute if dimension laboratory:laboratory run title @s actionbar {"text":"你已经在这里了……","color":"red",bold:true}

execute in laboratory:laboratory run tp @e[tag=LaboratoryTeleport] 0 -2000 0
title @a[tag=LaboratoryTeleport] actionbar {"text":"传送成功","color":"gold",bold:true}
execute in laboratory:laboratory positioned 0 -2000 0 run playsound minecraft:block.portal.travel player @a[tag=LaboratoryTeleport]
effect give @e[tag=LaboratoryTeleport] minecraft:blindness 2 0 true
execute as @e[tag=LaboratoryTeleport] run return run tag @s remove LaboratoryTeleport

execute unless dimension laboratory:laboratory run playsound minecraft:item.lodestone_compass.lock voice @s
execute unless dimension laboratory:laboratory run title @s[tag=!LaboratoryTeleport] title {"text":"传送中……","color":"gray",bold:true}
execute unless dimension laboratory:laboratory run tag @s[tag=!LaboratoryTeleport] add LaboratoryTeleport

schedule clear laboratory:fixed_teleport/laboratory
schedule clear laboratory:fixed_teleport/overworld
schedule clear laboratory:fixed_teleport/nether
schedule clear laboratory:fixed_teleport/end
schedule function laboratory:fixed_teleport/laboratory 2s
