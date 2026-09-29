data modify storage laboratory:marco Teleport.Location set from entity @s SelectedItem.components."minecraft:custom_data".LocationStore
data modify storage laboratory:marco Teleport.Location append from entity @s Pos
data modify storage laboratory:marco Teleport.Dimension set from entity @s SelectedItem.components."minecraft:custom_data".DimensionStore
data modify storage laboratory:marco Teleport.Dimension append from entity @s Dimension
data modify storage laboratory:marco Teleport.Name set from entity @s SelectedItem.components."minecraft:custom_data".Names
execute if data entity @s SelectedItem.components."minecraft:writable_book_content".pages[0].raw run data modify storage laboratory:marco Teleport.Name append from entity @s SelectedItem.components."minecraft:writable_book_content".pages[0].raw
execute unless data entity @s SelectedItem.components."minecraft:writable_book_content".pages[0].raw run data modify storage laboratory:marco Teleport.Name append value "Undefined"
data modify storage laboratory:marco Teleport.Intro set from entity @s SelectedItem.components."minecraft:custom_data".Intros
execute if data entity @s SelectedItem.components."minecraft:writable_book_content".pages[1].raw run data modify storage laboratory:marco Teleport.Intro append from entity @s SelectedItem.components."minecraft:writable_book_content".pages[1].raw
execute unless data entity @s SelectedItem.components."minecraft:writable_book_content".pages[1].raw run data modify storage laboratory:marco Teleport.Intro append value "Undefined"

item modify entity @s weapon.mainhand laboratory:location_store

data remove storage laboratory:marco Teleport.Location
data remove storage laboratory:marco Teleport.Dimension
data remove storage laboratory:marco Teleport.Name
data remove storage laboratory:marco Teleport.Intro

title @s actionbar {"text":"当前坐标已保存！","color":"green","bold":true}
playsound minecraft:entity.player.levelup player @s