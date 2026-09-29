#记分板清零
scoreboard players set @s StarOriShopTrigger 0

title @s[scores={StarOriShop_Current=..0}] actionbar {"color":"white","text":"很抱歉，您的余额§4不足§f，本次交易取消(｡í _ ì｡)......"}
playsound minecraft:block.amethyst_cluster.break ambient @s[scores={StarOriShop_Current=..3}]

title @s[scores={StarOriShop_Current=1..}] actionbar {"color":"white","text":"已成功购买§5紫水晶簇§6×64§f，谢谢惠顾(=^▽^=)！"}
give @s[scores={StarOriShop_Current=1..}] minecraft:amethyst_cluster 64
playsound minecraft:block.amethyst_cluster.place ambient @s[scores={StarOriShop_Current=1..}]
scoreboard players remove @s[scores={StarOriShop_Current=1..}] StarOriShop_Current 1
function starish_originium_shop:settings/savings_warning