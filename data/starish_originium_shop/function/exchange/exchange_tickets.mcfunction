#没有奖券
execute as @s[nbt=!{SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{DksTicketWork:1b}}}}] run tellraw @s {"text":"<Starish Originium Market> 您并没有§c持有§6有效奖券§f，请您§3手持§6有效奖券§f后再次进行交易Σ( ° △ °|||)。"}
execute as @s[nbt=!{SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{DksTicketWork:1b}}}}] run playsound entity.villager.no ambient @s ~ ~ ~ 1 1 1

#奖券兑换
execute as @s[nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{DksTicketPriority:3b,DksTicketWork:1b,DksTicketId:1b}}}}] run function starish_originium_shop:exchange/rewards/legendary/record_set
execute as @s[nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{DksTicketPriority:3b,DksTicketWork:1b,DksTicketId:3b}}}}] run function starish_originium_shop:exchange/rewards/legendary/abundant_mineral


execute as @s[nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{DksTicketPriority:2b,DksTicketWork:1b,DksTicketId:0b}}}}] run function starish_originium_shop:exchange/rewards/rare/cakes


#剩余奖券提醒
execute as @s run function starish_originium_shop:settings/tickets_warning