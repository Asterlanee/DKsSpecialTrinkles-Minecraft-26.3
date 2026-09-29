#记分板清零
scoreboard players set @s StarOriShopTrigger 0

title @s[scores={StarOriShop_Current=..0}] actionbar {"color":"white","text":"很抱歉，您的余额§4不足§f，本次交易取消(｡í _ ì｡)......"}
playsound minecraft:entity.villager.no ambient @s[scores={StarOriShop_Current=..0}]

title @s[scores={StarOriShop_Current=1..}] actionbar {"color":"white","text":"已成功购买§c火把花§6种子§6×4§f，谢谢惠顾(=^▽^=)！"}
give @s[scores={StarOriShop_Current=1..}] minecraft:torchflower_seeds 4
playsound minecraft:entity.villager.yes ambient @s[scores={StarOriShop_Current=1..}]
scoreboard players remove @s[scores={StarOriShop_Current=1..}] StarOriShop_Current 1
function starish_originium_shop:settings/savings_warning