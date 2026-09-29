execute if dimension minecraft:the_nether run playsound minecraft:entity.villager.no voice @s
execute if dimension minecraft:the_nether run title @s actionbar {"text":"你已经在这里了……","color":"red",bold:true}

execute in minecraft:the_nether run tp @e[tag=LaboratoryTeleport] 0 128 0
title @a[tag=LaboratoryTeleport] actionbar {"text":"传送成功","color":"gold",bold:true}
execute in minecraft:the_nether positioned 0 128 0 run playsound minecraft:block.portal.travel player @a[tag=LaboratoryTeleport]
effect give @e[tag=LaboratoryTeleport] minecraft:blindness 2 0 true
execute as @e[tag=LaboratoryTeleport] run return run tag @s remove LaboratoryTeleport

execute unless dimension minecraft:the_nether run playsound minecraft:item.lodestone_compass.lock voice @s
execute unless dimension minecraft:the_nether run title @s[tag=!LaboratoryTeleport] title {"text":"传送中……","color":"dark_red",bold:true}
execute unless dimension minecraft:the_nether run tag @s[tag=!LaboratoryTeleport] add LaboratoryTeleport

schedule clear laboratory:fixed_teleport/laboratory
schedule clear laboratory:fixed_teleport/overworld
schedule clear laboratory:fixed_teleport/nether
schedule clear laboratory:fixed_teleport/end
schedule function laboratory:fixed_teleport/nether 2s
