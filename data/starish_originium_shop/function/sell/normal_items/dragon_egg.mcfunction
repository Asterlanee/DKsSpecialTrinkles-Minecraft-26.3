#记分板清零
scoreboard players set @s StarOriShopTrigger 0

execute as @s store result score @s yes_or_no run clear @s minecraft:dragon_egg 0
scoreboard players add @s[nbt={SelectedItem:{id:"minecraft:dragon_egg"}}] is_the_item 1
execute as @s run function starish_originium_shop:settings/selling_detector

title @s[scores={StarOriShop_Stuff=..0},nbt={SelectedItem:{id:"minecraft:dragon_egg"}}] actionbar {"text":"(｡í _ ì｡)物品§c不够§f呢，获得§a足够§f的物品后再来交易吧。"}

scoreboard players add @s[scores={StarOriShop_Stuff=1..},nbt={SelectedItem:{id:"minecraft:dragon_egg"}}] StarOriShop_Current 12
playsound minecraft:block.note_block.pling ambient @s[scores={StarOriShop_Stuff=1..}]
title @s[scores={StarOriShop_Stuff=1..},nbt={SelectedItem:{id:"minecraft:dragon_egg"}}] actionbar {"text":"已成功卖出§5龙蛋§6×1§f，获得§e星§6源§e石§c×12§f，欢迎再来(=^▽^=)！"}
clear @s[scores={StarOriShop_Stuff=1..},nbt={SelectedItem:{id:"minecraft:dragon_egg"}}] minecraft:dragon_egg 1
scoreboard players set @a StarOriShop_Stuff 0