#记分板清零
scoreboard players set @s StarOriShopTrigger 0

title @s[scores={StarOriShop_Current=..1}] actionbar {"color":"white","text":"很抱歉，您的余额§4不足§f，本次交易取消(｡í _ ì｡)......"}
playsound minecraft:entity.wither_skeleton.hurt ambient @s[scores={StarOriShop_Current=..1}]

title @s[scores={StarOriShop_Current=2..}] actionbar {"color": "#2E2B2C","text":"§f已成功购买§r凋零骷髅头颅×§f1§f，谢谢惠顾(=^▽^=)！"}
give @s[scores={StarOriShop_Current=2..}] minecraft:wither_skeleton_skull 1
playsound minecraft:entity.wither_skeleton.ambient ambient @s[scores={StarOriShop_Current=2..}]
scoreboard players remove @s[scores={StarOriShop_Current=2..}] StarOriShop_Current 2
function starish_originium_shop:settings/savings_warning