#记分板清零
scoreboard players set @s StarOriShopTrigger 0
#进度移除
advancement revoke @s only starish_originium_shop:trigger/click_lectern

dialog show @s starish_originium_shop:intro
playsound minecraft:item.book.page_turn ui @s ~ ~ ~
swing @s mainhand