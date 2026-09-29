#记分板清零
scoreboard players set @s StarOriShopTrigger 0

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{starshop_guidance: 1b}}}}] run item modify entity @s weapon.mainhand starish_originium_shop:book_turning/buy
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:written_book"}}] run title @s actionbar [{"text":"你甚至懒到不想把它拿在主手里......拿起来才能用啊，杂鱼~"}]
playsound block.enchantment_table.use ambient @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] ~ ~ ~ 10 0.8
title @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] actionbar {"text": "§e<Starish_Originium_Shop> 书页已更新--§4消费区"}
playsound entity.villager.ambient ambient @s[nbt=!{SelectedItem:{id:"minecraft:written_book"}}] ~ ~ ~ 1 1.5