#记分板清零
scoreboard players set @s StarOriShopTrigger 0

execute as @s store result score @s yes_or_no run clear @s minecraft:diamond 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond"}}] run scoreboard players add @s is_the_item 1
execute as @s run function starish_originium_shop:settings/selling_detector

execute as @s[scores={StarOriShop_Stuff=..11},nbt={SelectedItem:{id:"minecraft:diamond"}}] run title @s actionbar {"text":"(｡í _ ì｡)物品§c不够§f呢，获得§a足够§f的物品后再来交易吧。"}

scoreboard players add @s[scores={StarOriShop_Stuff=12..},nbt={SelectedItem:{id:"minecraft:diamond"}}] StarOriShop_Current 1
playsound minecraft:block.note_block.pling ambient @s[scores={StarOriShop_Stuff=12..}]
title @s[scores={StarOriShop_Stuff=12..},nbt={SelectedItem:{id:"minecraft:diamond"}}] actionbar {"text":"已成功卖出§3钻石§6×12§f，获得§e星§6源§e石§c×1§f，欢迎再来(=^▽^=)！"}
clear @s[scores={StarOriShop_Stuff=12..},nbt={SelectedItem:{id:"minecraft:diamond"}}] minecraft:diamond 12
scoreboard players set @a StarOriShop_Stuff 0