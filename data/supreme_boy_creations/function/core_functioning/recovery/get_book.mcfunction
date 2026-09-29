#记分板清零
scoreboard players set @s SupremeBoyTrigger 0

#条件检测
execute if entity @n[predicate=supreme_boy_creations:conditions/non_book] run title @s title {"text": "它需要一本书去誊写……",bold: true}
execute if entity @n[predicate=supreme_boy_creations:conditions/non_book] run playsound block.anvil.land ambient @s ~ ~ ~ 1 1
execute if entity @n[predicate=supreme_boy_creations:conditions/non_book] run return fail

#指令书
title @s title {"text": "誊写完成",color:"#ffd500",bold:true}
playsound minecraft:block.enchantment_table.use voice @s ~ ~ ~ 2 1
playsound minecraft:item.book.page_turn voice @s ~ ~ ~ 2 1
execute as @n[tag=crafter] at @s run item modify entity @s weapon.mainhand supreme_boy_creations:book_turning/main