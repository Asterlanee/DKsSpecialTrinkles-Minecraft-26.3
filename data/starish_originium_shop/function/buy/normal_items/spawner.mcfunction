#记分板清零
scoreboard players set @s StarOriShopTrigger 0

title @s[scores={StarOriShop_Current=..5}] actionbar {"color":"white","text":"很抱歉，您的余额§4不足§f，本次交易取消(｡í _ ì｡)......"}
playsound minecraft:block.chain.break ambient @s[scores={StarOriShop_Current=..0}]

title @s[scores={StarOriShop_Current=6..}] actionbar {"color":"white","text":"已成功购买§8刷怪笼§6×1§f，谢谢惠顾(=^▽^=)！"}
give @s[scores={StarOriShop_Current=6..}] minecraft:spawner 1
playsound minecraft:item.armor.equip_chain ambient @s[scores={StarOriShop_Current=6..}]
scoreboard players remove @s[scores={StarOriShop_Current=6..}] StarOriShop_Current 6
function starish_originium_shop:settings/savings_warning