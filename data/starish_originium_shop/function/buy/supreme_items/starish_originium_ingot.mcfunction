#记分板清零
scoreboard players set @s StarOriShopTrigger 0

title @s[scores={StarOriShop_Current=..17}] actionbar {"color":"white","text":"很抱歉，您的余额§4不足§f，本次交易取消(｡í _ ì｡)......"}
playsound minecraft:entity.villager.no ambient @s[scores={StarOriShop_Current=..17}]

title @s[scores={StarOriShop_Current=18..}] title {"color":"white","text":"已成功购买§c§l星源锭§r§6×1§f，谢谢惠顾！"}
title @s[scores={StarOriShop_Current=18..}] subtitle {"color":"white","text":"或许你可以将它换成§6星§e源§6石§f……"}
give @s[scores={StarOriShop_Current=18..}] minecraft:netherite_ingot[minecraft:enchantment_glint_override=1b,minecraft:item_name='"§c§l星源锭"',minecraft:lore=['"§7星辉不再"','"§6用于合成“§4炎狱悲鸣§6”"'],minecraft:max_stack_size=12,minecraft:rarity="epic"]
playsound minecraft:ui.toast.challenge_complete ambient @s[scores={StarOriShop_Current=18..}] ~ ~ ~ 2 1
scoreboard players remove @s[scores={StarOriShop_Current=18..}] StarOriShop_Current 18
function starish_originium_shop:settings/savings_warning