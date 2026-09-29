
#检查兑换行为是否规范
title @s[scores={yes_or_no=0,is_the_item=0}] actionbar {"text":"<Starish Originium Market> Σ( ° △ °|||)您并没有§6有效奖券§f，请§3获得§f后§c手持§6奖券§f再次进行交易。"}
playsound minecraft:block.note_block.hat ambient @s[scores={yes_or_no=0}]
title @s[scores={is_the_item=0,yes_or_no=1..}] actionbar {"text":"<Starish Originium Market> Σ( ° △ °|||)您并没有§c持有§6有效奖券§f，为了防止您§4误触§f而导致§4不必要的损失§f，请您§3手持§6奖券§f后再次进行交易。"}
playsound minecraft:block.note_block.hat ambient @s[scores={is_the_item=0,yes_or_no=1..}]
execute as @s[scores={is_the_item=1,yes_or_no=1..}] store result score @s StarOriShop_Ticket run data get entity @s SelectedItem.count

#报告奖券情况
function starish_originium_shop:settings/tickets_warning

#还原
scoreboard players set @s yes_or_no 0
scoreboard players set @s is_the_item 0