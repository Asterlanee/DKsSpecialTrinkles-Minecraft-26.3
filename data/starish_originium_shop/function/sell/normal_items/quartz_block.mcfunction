#记分板清零
scoreboard players set @s StarOriShopTrigger 0

execute as @s store result score @s yes_or_no run clear @s minecraft:quartz_block 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:quartz_block"}}] run scoreboard players add @s is_the_item 1

#检查购买行为是否规范
title @s[scores={yes_or_no=0,is_the_item=0}] actionbar {"text":"Σ( ° △ °|||)您并没有§6目标物品§f，请§3获得§f后§c手持§f物品再次进行交易。"}
playsound minecraft:block.note_block.hat ambient @s[scores={yes_or_no=0}]
title @s[scores={is_the_item=0,yes_or_no=1..}] actionbar {"text":"Σ( ° △ °|||)您并没有§c持有§6目标物品§f，为了防止您§4误触§f而导致§4不必要的损失§f，请您§3手持§f物品后再次进行交易。"}
playsound minecraft:block.note_block.pling ambient @s[scores={is_the_item=0,yes_or_no=1..}]
execute as @s[scores={is_the_item=1,yes_or_no=1..}] store result score @s StarOriShop_Stuff run clear @s minecraft:quartz_block 0

#还原
scoreboard players set @s yes_or_no 0
scoreboard players set @s is_the_item 0

execute as @s[scores={StarOriShop_Stuff=..95},nbt={SelectedItem:{id:"minecraft:quartz_block"}}] run title @s actionbar {"text":"(｡í _ ì｡)物品§c不够§f呢，获得§a足够§f的物品后再来交易吧。"}

scoreboard players add @s[scores={StarOriShop_Stuff=96..},nbt={SelectedItem:{id:"minecraft:quartz_block"}}] StarOriShop_Current 1
playsound minecraft:block.note_block.pling ambient @s[scores={StarOriShop_Stuff=96..}]
title @s[scores={StarOriShop_Stuff=96..},nbt={SelectedItem:{id:"minecraft:quartz_block"}}] actionbar {"text":"已成功卖出§f石英块§6×96§f，获得§e星§6源§e石§c×1§f，欢迎再来(=^▽^=)！"}
clear @s[scores={StarOriShop_Stuff=96..},nbt={SelectedItem:{id:"minecraft:quartz_block"}}] minecraft:quartz_block 96
scoreboard players set @a StarOriShop_Stuff 0