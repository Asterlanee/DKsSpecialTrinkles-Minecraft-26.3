#记分板清零
scoreboard players set @s StarOriShopTrigger 0

title @s[scores={StarOriShop_Current=..2}] actionbar {"color":"white","text":"很抱歉，您的余额§4不足§f，本次交易取消(｡í _ ì｡)......"}
playsound minecraft:entity.player.death ambient @s[scores={StarOriShop_Current=..2}]

title @s[scores={StarOriShop_Current=3..}] actionbar {"color": "#0791C2","text":"§f已成功购买§r玩家头颅×§f1§f，谢谢惠顾(=^▽^=)！"}
give @s[scores={StarOriShop_Current=3..}] minecraft:player_head 1
playsound minecraft:entity.player.levelup ambient @s[scores={StarOriShop_Current=3..}]
scoreboard players remove @s[scores={StarOriShop_Current=3..}] StarOriShop_Current 3
function starish_originium_shop:settings/savings_warning