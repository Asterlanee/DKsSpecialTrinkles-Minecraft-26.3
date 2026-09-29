#记分板清零
scoreboard players set @s StarOriShopTrigger 0

title @s[scores={StarOriShop_Current=..3}] actionbar {"color":"white","text":"很抱歉，您的余额§4不足§f，本次交易取消(｡í _ ì｡)......"}
playsound minecraft:entity.warden.listening_angry ambient @s[scores={StarOriShop_Current=..0}]

title @s[scores={StarOriShop_Current=4..}] actionbar [{"color":"white","text":"已成功购买"},{"text": "幽匿尖啸体","color": "#144D43"},{"text":"§6×1§f，谢谢惠顾(=^▽^=)！"}]
give @s[scores={StarOriShop_Current=4..}] minecraft:sculk_shrieker[minecraft:block_state={can_summon:"true"}] 1
playsound minecraft:block.sculk_shrieker.shriek ambient @s[scores={StarOriShop_Current=4..}]
scoreboard players remove @s[scores={StarOriShop_Current=4..}] StarOriShop_Current 4
function starish_originium_shop:settings/savings_warning