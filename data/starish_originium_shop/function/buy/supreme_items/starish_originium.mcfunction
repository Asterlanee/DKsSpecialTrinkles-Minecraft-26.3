#记分板清零
scoreboard players set @s StarOriShopTrigger 0

title @s[scores={StarOriShop_Current=..0}] actionbar {"color":"white","text":"很抱歉，您的余额§4不足§f，本次交易取消(｡í _ ì｡)......"}
playsound minecraft:entity.villager.no ambient @s[scores={StarOriShop_Current=..0}]

title @s[scores={StarOriShop_Current=1..}] actionbar {"color":"white","text":"已成功购买§6星§e源§6石§7×1§f，谢谢惠顾！"}
give @s[scores={StarOriShop_Current=1..}] minecraft:raw_gold[minecraft:item_name="§6星§e源§6石",minecraft:lore=["§e璀璨的星光，但那已经是过去了","§6货币§f，用于进行星源石交易"],minecraft:max_stack_size=99,minecraft:rarity="rare",minecraft:custom_data={"special_trinkles":"starish_originium_shop","supreme_boy_category":"currency","itemID":"starish_originium"}]
playsound minecraft:entity.player.levelup ambient @s[scores={StarOriShop_Current=1..}] ~ ~ ~ 2 1
scoreboard players remove @s[scores={StarOriShop_Current=1..}] StarOriShop_Current 1
function starish_originium_shop:settings/savings_warning