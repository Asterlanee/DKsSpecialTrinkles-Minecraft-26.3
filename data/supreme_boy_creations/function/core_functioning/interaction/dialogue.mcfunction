#进度移除
advancement revoke @s only supreme_boy_creations:trigger/dialogue

#条件检测
swing @s mainhand
playsound minecraft:block.dispenser.dispense ambient @s ~ ~ ~
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=25..}] run return run function supreme_boy_creations:core_functioning/interaction/failure
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=10..20}] run return run title @s actionbar {"text": "不理你了！(╬`⌒´)",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=5..6}] run title @s actionbar {"text": "你刚才又打我了……好伤心(◞‸◟)",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=5..6}] run return run scoreboard players reset @n[predicate=supreme_boy_creations:core_detect] SupremeBoyTrigger

scoreboard players reset @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyTrigger=..9}] SupremeBoyTrigger
scoreboard players add @n[predicate=supreme_boy_creations:core_detect] SupremeBoyDialogues 1
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyDialogues=1}] run return run title @s actionbar {"text": "你终于愿意听我说话了？先别急着拆我，我还记得你喂给我的每一份燃料。",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyDialogues=2}] run return run title @s actionbar {"text": "我的配方不在某些“书”里，真正的配方藏在世界之外。",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyDialogues=3}] run return run title @s actionbar {"text": "别看我手里空空的，核心会替我保管最后一件材料。",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyDialogues=4}] run return run title @s actionbar {"text": "你刚才摸到的不是我本体，是我留下的那只小小的交互箱。",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyDialogues=5}] run return run title @s actionbar {"text": "没有基座，我能做的事会受到限制；把它拆掉的话，我会很伤心的哦。",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyDialogues=6}] run return run title @s actionbar {"text": "其实我的头部能感觉到你每一次敲击，那可是最敏感的部分……最好不要一直打我哦。",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyDialogues=7}] run return run title @s actionbar {"text": "因此，别拿我测试武器的效果；我也在偷偷测试你的生命值。",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyDialogues=8}] run return run title @s actionbar {"text": "你以为配方界面只是菜单？不，它还在等一个合适的时机替你翻页。",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyDialogues=9}] run return run title @s actionbar {"text": "如果声音突然变远，别回头看；那通常意味着我正在重新确认你的坐标。",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyDialogues=10}] run return run title @s actionbar {"text": "我不只会合成物品，也会把手上的东西变成原版做不出来的效果。",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyDialogues=11}] run return run title @s actionbar {"text": "每轮对话结束后，我都会假装忘记这一切。",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyDialogues=12}] run title @s actionbar {"text": "好了，下一次见面时，还是从第一句开始吧。除非你先动手。",bold:true}
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyDialogues=13}] run title @s actionbar "……"
execute if entity @n[predicate=supreme_boy_creations:core_detect,scores={SupremeBoyDialogues=13}] run scoreboard players reset @n[predicate=supreme_boy_creations:core_detect] SupremeBoyDialogues