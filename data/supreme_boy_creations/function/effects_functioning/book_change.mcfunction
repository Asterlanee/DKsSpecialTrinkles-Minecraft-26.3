#记分板清零
scoreboard players set @s SupremeBoyTrigger 0

item modify entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{sbc_guidance: 1b}}}}] weapon.mainhand supreme_boy_creations:book_turning/main
item modify entity @s[nbt=!{SelectedItem:{components:{"minecraft:custom_data":{sbc_guidance: 1b}}}}] weapon.offhand supreme_boy_creations:book_turning/main
title @s actionbar {"text": "书本内容已更新！"}
playsound entity.player.levelup ambient @s ~ ~ ~ 1 0.8