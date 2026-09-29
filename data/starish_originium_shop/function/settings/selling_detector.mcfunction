
#检查购买行为是否规范
title @s[scores={yes_or_no=0,is_the_item=0}] actionbar {"text":"Σ( ° △ °|||)您并没有§6目标物品§f，请§3获得§f后§c手持§f物品再次进行交易。"}
playsound minecraft:block.note_block.hat ambient @s[scores={yes_or_no=0}]
title @s[scores={is_the_item=0,yes_or_no=1..}] actionbar {"text":"Σ( ° △ °|||)您并没有§c持有§6目标物品§f，为了防止您§4误触§f而导致§4不必要的损失§f，请您§3手持§f物品后再次进行交易。"}
playsound minecraft:block.note_block.pling ambient @s[scores={is_the_item=0,yes_or_no=1..}]
execute as @s[scores={is_the_item=1,yes_or_no=1..}] store result score @s StarOriShop_Stuff run data get entity @s SelectedItem.count

#还原
scoreboard players set @s yes_or_no 0
scoreboard players set @s is_the_item 0
