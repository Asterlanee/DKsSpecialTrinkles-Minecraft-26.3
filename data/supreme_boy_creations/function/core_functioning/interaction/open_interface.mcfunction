#记分板清零
scoreboard players set @s SupremeBoyTrigger 0
#进度移除
advancement revoke @s only supreme_boy_creations:trigger/open_interface

swing @s mainhand
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=25..}] run return run function supreme_boy_creations:core_functioning/interaction/failure

scoreboard players reset @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=..9}] SupremeBoyTrigger
dialog show @s supreme_boy_creations:main
playsound minecraft:block.wooden_pressure_plate.click_on ui @s ~ ~ ~