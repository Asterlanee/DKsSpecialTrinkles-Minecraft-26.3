tellraw @s {"text":"所有传送位置: ","color":"white"}
scoreboard players reset @s TeleportIndex
execute store result score @s TeleportIndex run data get entity @s SelectedItem.components."minecraft:custom_data".Names
execute store result storage laboratory:marco Teleport.Length int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".Names

scoreboard players remove @s TeleportIndex 1
execute store result storage laboratory:marco Teleport.Index int 1 run scoreboard players get @s TeleportIndex

function laboratory:precise_teleport/destinations/modify/check with storage laboratory:marco Teleport