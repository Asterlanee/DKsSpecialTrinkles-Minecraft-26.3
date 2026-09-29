#盔甲架功能
execute at @e[tag=destroyer] run function supreme_boy_creations:effects_functioning/destroyer

#记分板效果
scoreboard players enable @a SupremeBoyTrigger
execute unless entity @n[scores={SupremeBoyTrigger=1..}] unless entity @n[scores={SupremeBoyTrigger=..-2}] run return fail

execute as @a[scores={SupremeBoyTrigger=-1}] at @s run return run function supreme_boy_creations:effects_functioning/book_change

execute as @a[scores={SupremeBoyTrigger=1..}] at @s if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=25..}] run return run function supreme_boy_creations:core_functioning/interaction/failure

execute as @a[scores={SupremeBoyTrigger=1..}] at @s if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=..20}] run scoreboard players reset @n[predicate=supreme_boy_creations:core_detect] SupremeBoyTrigger

execute as @a[scores={SupremeBoyTrigger=1}] at @s run return run function supreme_boy_creations:core_functioning/exchange_hand
execute as @a[scores={SupremeBoyTrigger=2}] at @s run return run function supreme_boy_creations:core_functioning/restart
execute as @a[scores={SupremeBoyTrigger=3}] at @s run return run function supreme_boy_creations:core_functioning/crafter

execute as @a[scores={SupremeBoyTrigger=11}] at @s run return run function supreme_boy_creations:core_functioning/reforge/enchantment_switch/detect
execute as @a[scores={SupremeBoyTrigger=12}] at @s run return run function supreme_boy_creations:core_functioning/reforge/enchantment_return/detect
execute as @a[scores={SupremeBoyTrigger=13}] at @s run return run function supreme_boy_creations:core_functioning/reforge/fire_immuned/detect
execute as @a[scores={SupremeBoyTrigger=14}] at @s run return run function supreme_boy_creations:core_functioning/reforge/reset_repair_cost/detect
execute as @a[scores={SupremeBoyTrigger=15}] at @s run return run function supreme_boy_creations:core_functioning/reforge/unbreaking/detect

execute as @a[scores={SupremeBoyTrigger=21}] at @s run return run function supreme_boy_creations:core_functioning/recovery/get_book

execute as @a[scores={SupremeBoyTrigger=-999}] at @s run return run gamerule minecraft:send_command_feedback false
execute as @a[scores={SupremeBoyTrigger=999}] at @s run return run gamerule minecraft:send_command_feedback true