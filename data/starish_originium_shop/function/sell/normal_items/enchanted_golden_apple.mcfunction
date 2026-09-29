#记分板清零
scoreboard players set @s StarOriShopTrigger 0

execute as @s store result score @s yes_or_no run clear @s minecraft:enchanted_golden_apple 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:enchanted_golden_apple"}}] run scoreboard players add @s is_the_item 1
execute as @s run function starish_originium_shop:settings/selling_detector

execute as @s[scores={StarOriShop_Stuff=..0},nbt={SelectedItem:{id:"minecraft:enchanted_golden_apple"}}] run title @s actionbar {"text":"(｡í _ ì｡)物品§c不够§f呢，获得§a足够§f的物品后再来交易吧。"}

scoreboard players add @s[scores={StarOriShop_Stuff=1..},nbt={SelectedItem:{id:"minecraft:enchanted_golden_apple"}}] StarOriShop_Current 4
playsound minecraft:block.note_block.pling ambient @s[scores={StarOriShop_Stuff=1..}]
title @s[scores={StarOriShop_Stuff=1..},nbt={SelectedItem:{id:"minecraft:enchanted_golden_apple"}}] actionbar {"text":"已成功卖出§d附魔金苹果§6×1§f，获得§e星§6源§e石§c×4§f，欢迎再来(=^▽^=)！"}
clear @s[scores={StarOriShop_Stuff=1..},nbt={SelectedItem:{id:"minecraft:enchanted_golden_apple"}}] minecraft:enchanted_golden_apple 1
scoreboard players set @a StarOriShop_Stuff 0