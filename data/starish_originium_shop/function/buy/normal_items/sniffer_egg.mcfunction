#记分板清零
scoreboard players set @s StarOriShopTrigger 0

title @s[scores={StarOriShop_Current=..3}] actionbar {"color":"white","text":"很抱歉，您的余额§4不足§f，本次交易取消(｡í _ ì｡)......"}
playsound minecraft:entity.sniffer.hurt ambient @s[scores={StarOriShop_Current=..0}]

title @s[scores={StarOriShop_Current=4..}] actionbar {"color":"white","text":"已成功购买§4嗅§2探§4兽§2的§4蛋§6×1§f，谢谢惠顾(=^▽^=)！"}
give @s[scores={StarOriShop_Current=4..}] minecraft:sniffer_egg[minecraft:block_state={hatch:"2"}] 1
playsound minecraft:entity.sniffer.happy ambient @s[scores={StarOriShop_Current=4..}]
scoreboard players remove @s[scores={StarOriShop_Current=4..}] StarOriShop_Current 4
function starish_originium_shop:settings/savings_warning