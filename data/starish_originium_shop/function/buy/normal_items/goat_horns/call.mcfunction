#记分板清零
scoreboard players set @s StarOriShopTrigger 0

title @s[scores={StarOriShop_Current=..0}] actionbar {"color":"white","text":"很抱歉，您的余额§4不足§f，本次交易取消(｡í _ ì｡)......"}
playsound minecraft:entity.goat.screaming.ambient ambient @s[scores={StarOriShop_Current=..0}]

title @s[scores={StarOriShop_Current=1..}] actionbar [{"color": "#FFFFFF","text":"已成功购买"},{"translate": "item.minecraft.goat_horn","color": "#6B6B6B"},{"text": " 呼唤","color": "#06E673"},{"color": "#FFFFFF","text": "§cx1§r,谢谢惠顾(=^▽^=)！"}]
give @s[scores={StarOriShop_Current=1..}] minecraft:goat_horn[minecraft:instrument={sound_event: "minecraft:item.goat_horn.sound.5",use_duration: 50,range: 120,description:""},minecraft:lore=[{"text": "呼唤","color": "#06E673","italic":false}]]
playsound minecraft:item.goat_horn.sound.5 ambient @s[scores={StarOriShop_Current=1..}]
scoreboard players remove @s[scores={StarOriShop_Current=1..}] StarOriShop_Current 1
function starish_originium_shop:settings/savings_warning