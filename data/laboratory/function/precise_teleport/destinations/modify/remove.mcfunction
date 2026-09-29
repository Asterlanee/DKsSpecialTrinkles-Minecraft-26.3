data modify storage laboratory:marco Teleport.Location set from entity @s SelectedItem.components."minecraft:custom_data".LocationStore
$data remove storage laboratory:marco Teleport.Location[$(Index)]
data modify storage laboratory:marco Teleport.Dimension set from entity @s SelectedItem.components."minecraft:custom_data".DimensionStore
$data remove storage laboratory:marco Teleport.Dimension[$(Index)]
data modify storage laboratory:marco Teleport.Name set from entity @s SelectedItem.components."minecraft:custom_data".Names
$data remove storage laboratory:marco Teleport.Name[$(Index)]
data modify storage laboratory:marco Teleport.Intro set from entity @s SelectedItem.components."minecraft:custom_data".Intros
$data remove storage laboratory:marco Teleport.Intro[$(Index)]

item modify entity @s weapon.mainhand laboratory:location_store

data remove storage laboratory:marco Teleport.Location
data remove storage laboratory:marco Teleport.Dimension
data remove storage laboratory:marco Teleport.Name
data remove storage laboratory:marco Teleport.Intro

title @s actionbar {"text":"已成功移除","color":"green"}
playsound minecraft:ui.loom.select_pattern player @s