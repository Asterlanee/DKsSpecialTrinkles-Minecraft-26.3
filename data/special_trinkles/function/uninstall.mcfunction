
scoreboard objectives remove StarOriShopTrigger
scoreboard objectives remove StarOriShop_Current
scoreboard objectives remove StarOriShop_Stuff
scoreboard objectives remove StarOriShop_Ticket
scoreboard objectives remove StarOriShop_Ticket
scoreboard objectives remove yes_or_no
scoreboard objectives remove is_the_item

scoreboard objectives remove SupremeBoyTrigger
scoreboard objectives remove SupremeBoyDialogues
scoreboard objectives remove SupremeBoyMotion
gamerule minecraft:send_command_feedback true

datapack disable "file/道具测试"

tellraw @a {"text":"Starish_Originium_Shop 离开了游戏",color:"yellow"}
playsound block.chest.close block @a ~ ~ ~ 10 1

tellraw @a {"text": "<Supreme_Boy> \"minecraft:send_command_feedback\"规则已再次启用"}
tellraw @a [{text:"<Supreme_Boy> "},{text:"道具测试数据包已被移除，点击“"},{text:"重新激活数据包",click_event:{action:"run_command",command:"/datapack enable \"file/道具测试\""},underlined:true,bold:true,color:"#ffbf00"},{text:"”可重新使用"}]
tellraw @a {"text":"Supreme_Boy 离开了游戏",color:"yellow"}