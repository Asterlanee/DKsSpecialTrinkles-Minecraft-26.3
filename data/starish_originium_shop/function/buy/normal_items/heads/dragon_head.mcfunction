#记分板清零
scoreboard players set @s StarOriShopTrigger 0

title @s[scores={StarOriShop_Current=..1}] actionbar {"color":"white","text":"很抱歉，您的余额§4不足§f，本次交易取消(｡í _ ì｡)......"}
playsound minecraft:entity.ender_dragon.hurt ambient @s[scores={StarOriShop_Current=..1}]

title @s[scores={StarOriShop_Current=2..}] actionbar {"color": "#55149C","text":"§f已成功购买§r龙首×§f1§f，谢谢惠顾(=^▽^=)！"}
give @s[scores={StarOriShop_Current=2..}] minecraft:dragon_head 1
playsound minecraft:entity.ender_dragon.ambient ambient @s[scores={StarOriShop_Current=2..}]
scoreboard players remove @s[scores={StarOriShop_Current=2..}] StarOriShop_Current 2
function starish_originium_shop:settings/savings_warning