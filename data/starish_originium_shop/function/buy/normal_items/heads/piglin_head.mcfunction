#记分板清零
scoreboard players set @s StarOriShopTrigger 0

title @s[scores={StarOriShop_Current=..3}] actionbar {"color":"white","text":"很抱歉，您的余额§4不足§f，本次交易取消(｡í _ ì｡)......"}
playsound minecraft:entity.piglin.angry ambient @s[scores={StarOriShop_Current=..3}]

title @s[scores={StarOriShop_Current=4..}] actionbar {"color": "#E39549","text":"§f已成功购买§r猪灵头颅×§f1§f，谢谢惠顾(=^▽^=)！"}
give @s[scores={StarOriShop_Current=4..}] minecraft:piglin_head 1
playsound minecraft:entity.piglin.celebrate ambient @s[scores={StarOriShop_Current=4..}]
scoreboard players remove @s[scores={StarOriShop_Current=4..}] StarOriShop_Current 4
function starish_originium_shop:settings/savings_warning