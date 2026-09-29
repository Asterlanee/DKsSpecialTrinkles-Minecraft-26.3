#记分板清零
scoreboard players set @s SupremeBoyTrigger 0

#条件检测
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run title @s title {"text": "它还没有激活……",bold: true}
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run playsound minecraft:block.fire.extinguish ambient @s ~ ~ ~ 1 1
execute unless entity @n[predicate=supreme_boy_creations:active_detect] run return fail

execute if entity @n[predicate=supreme_boy_creations:base_detect] run title @s title {"text": "它的基座消失了，这可不行……",bold: true}
execute if entity @n[predicate=supreme_boy_creations:base_detect] run playsound minecraft:block.beacon.deactivate ambient @s ~ ~ ~ 1 1
execute if entity @n[predicate=supreme_boy_creations:base_detect] run return fail

execute if entity @n[predicate=supreme_boy_creations:conditions/all_empty_hand] run title @s title {"text": "它的手上什么也没有……",bold: true}
execute if entity @n[predicate=supreme_boy_creations:conditions/all_empty_hand] run playsound block.anvil.land ambient @s ~ ~ ~ 1 1
execute if entity @n[predicate=supreme_boy_creations:conditions/all_empty_hand] run return fail

execute if entity @s[level=..7] run title @s title {"text": "经验值不够呢！",bold: true}
execute if entity @s[level=..7] run title @s subtitle {"text": "至少到达§6§l8级§r才有100点哟"}
execute if entity @s[level=..7] run playsound block.note_block.pling ambient @s ~ ~ ~ 1 0.6
execute if entity @s[level=..7] run return fail

#不惧火焰
function supreme_boy_creations:core_functioning/reforge/fire_immuned/acting