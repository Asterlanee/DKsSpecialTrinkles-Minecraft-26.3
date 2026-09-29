#记分板清零
scoreboard players set @s StarOriShopTrigger 0

title @s[scores={StarOriShop_Current=..3}] actionbar {"color":"white","text":"很抱歉，您的余额§4不足§f，本次交易取消(｡í _ ì｡)......"}
playsound minecraft:entity.villager.no ambient @s[scores={StarOriShop_Current=..3}]

title @s[scores={StarOriShop_Current=4..}] actionbar {"color":"white","text":"已成功购买§d附魔金苹果§6×1§f，谢谢惠顾(=^▽^=)！"}
give @s[scores={StarOriShop_Current=4..}] minecraft:enchanted_golden_apple 1
playsound minecraft:entity.villager.yes ambient @s[scores={StarOriShop_Current=4..}]
scoreboard players remove @s[scores={StarOriShop_Current=4..}] StarOriShop_Current 4
function starish_originium_shop:settings/savings_warning