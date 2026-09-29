#记分板清零
scoreboard players set @s StarOriShopTrigger 0

execute as @s store result score @s yes_or_no run clear @s minecraft:redstone_block 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:redstone_block"}}] run scoreboard players add @s is_the_item 1
execute as @s run function starish_originium_shop:settings/selling_detector

execute as @s[scores={StarOriShop_Stuff=..47},nbt={SelectedItem:{id:"minecraft:redstone_block"}}] run title @s actionbar {"text":"(｡í _ ì｡)物品§c不够§f呢，获得§a足够§f的物品后再来交易吧。"}

scoreboard players add @s[scores={StarOriShop_Stuff=48..},nbt={SelectedItem:{id:"minecraft:redstone_block"}}] StarOriShop_Current 1
playsound minecraft:block.note_block.pling ambient @s[scores={StarOriShop_Stuff=48..}]
title @s[scores={StarOriShop_Stuff=48..},nbt={SelectedItem:{id:"minecraft:redstone_block"}}] actionbar {"text":"已成功卖出§4红石块§6×48§f，获得§e星§6源§e石§c×1§f，欢迎再来(=^▽^=)！"}
clear @s[scores={StarOriShop_Stuff=48..},nbt={SelectedItem:{id:"minecraft:redstone_block"}}] minecraft:redstone_block 48
scoreboard players set @a StarOriShop_Stuff 0