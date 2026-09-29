#记分板清零
scoreboard players set @s StarOriShopTrigger 0

#检测是否拥有并持有该物品
execute as @s store result score @s yes_or_no run clear @s minecraft:coal_block 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:coal_block"}}] run scoreboard players add @s is_the_item 1
execute as @s run function starish_originium_shop:settings/selling_detector

#物品不够，买不了
execute as @s[scores={StarOriShop_Stuff=..31},nbt={SelectedItem:{id:"minecraft:coal_block"}}] run title @s actionbar {"text":"(｡í _ ì｡)物品§c不够§f呢，获得§a足够§f的物品后再来交易吧。"}

#物品足够，货到付款
scoreboard players add @s[scores={StarOriShop_Stuff=32..},nbt={SelectedItem:{id:"minecraft:coal_block"}}] StarOriShop_Current 1
playsound minecraft:block.note_block.pling ambient @s[scores={StarOriShop_Stuff=32..}]
title @s[scores={StarOriShop_Stuff=32..},nbt={SelectedItem:{id:"minecraft:coal_block"}}] title {"text":"已成功卖出§8煤炭块§6×32§f，获得§e星§6源§e石§c×1§f，欢迎再来(=^▽^=)！"}
clear @s[scores={StarOriShop_Stuff=32..},nbt={SelectedItem:{id:"minecraft:coal_block"}}] minecraft:coal_block 32
scoreboard players set @a StarOriShop_Stuff 0