#记分板注册
scoreboard objectives add StarOriShopTrigger trigger "§6星§e源§6石§r商城触发记分板"
scoreboard objectives add StarOriShop_Current dummy "§6星§e源§6石"
scoreboard objectives add StarOriShop_Stuff dummy "手持物品数量"
scoreboard objectives add StarOriShop_Ticket dummy "奖券数量"
scoreboard objectives add yes_or_no dummy "是否拥有物品的判断"
scoreboard objectives add is_the_item dummy "是否持有物品的判断"

execute as @a unless entity @s[scores={StarOriShop_Current=0..}] run scoreboard players set @s StarOriShop_Current 0

advancement revoke @a only starish_originium_shop:trigger/click_lectern

tellraw @a {"text":"§eStarish_Originium_Shop 进入了游戏"}
playsound block.chest.open block @a ~ ~ ~ 10 1