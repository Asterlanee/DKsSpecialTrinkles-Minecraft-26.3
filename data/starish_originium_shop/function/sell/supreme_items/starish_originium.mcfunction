#记分板清零
scoreboard players set @s StarOriShopTrigger 0

execute as @s store result score @s yes_or_no run clear @s minecraft:raw_gold[minecraft:custom_data={"special_trinkles":"starish_originium_shop","supreme_boy_category":"currency","itemID":"starish_originium"}] 0
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"special_trinkles":"starish_originium_shop","supreme_boy_category":"currency","itemID":"starish_originium"}}}}] run scoreboard players add @s is_the_item 1

function starish_originium_shop:settings/selling_detector

execute as @s[scores={StarOriShop_Stuff=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{"special_trinkles":"starish_originium_shop","supreme_boy_category":"currency","itemID":"starish_originium"}}}}] run title @s actionbar {"text":"物品§c不够§f呢，获得§a足够§f的物品后再来交易吧。(｡í _ ì｡)"}

scoreboard players add @s[scores={StarOriShop_Stuff=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{"special_trinkles":"starish_originium_shop","supreme_boy_category":"currency","itemID":"starish_originium"}}}}] StarOriShop_Current 1
playsound minecraft:block.note_block.pling ambient @s[scores={StarOriShop_Stuff=1..}]
title @s[scores={StarOriShop_Stuff=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{"special_trinkles":"starish_originium_shop","supreme_boy_category":"currency","itemID":"starish_originium"}}}}] actionbar {"text":"已成功存入§e1颗 星§6源§e石§6×1§f，欢迎再来(=^▽^=)！"}
clear @s[scores={StarOriShop_Stuff=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{"special_trinkles":"starish_originium_shop","supreme_boy_category":"currency","itemID":"starish_originium"}}}}] minecraft:raw_gold[minecraft:rarity="rare",minecraft:custom_data={"special_trinkles":"starish_originium_shop","supreme_boy_category":"currency","itemID":"starish_originium"}] 1
scoreboard players set @a StarOriShop_Stuff 0

