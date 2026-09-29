recipe give @a supreme_boy_creations:crafting_equipment_base
recipe give @a supreme_boy_creations:crafting_equipment_core
recipe give @a supreme_boy_creations:crafting_equipment_fuel
recipe give @a supreme_boy_creations:core_destroyer
tellraw @a {"text":"Supreme_Boy 加入了游戏",color:"yellow"}
tellraw @a [{"text": "<Supreme_Boy> 请选择"},{"text": "禁用",click_event:{action:"run_command",command:"trigger SupremeBoyTrigger set -999"},underlined:true,bold:true,color:"#d90000"},{"text": "/"},{"text": "启用",click_event:{action:"run_command",command:"trigger SupremeBoyTrigger set 999"},underlined:true,bold:true,color:"#009626"},{"text": "\"minecraft:send_command_feedback\"规则以避免\n大量出现的命令提示遮盖对话框"}]

advancement revoke @a only supreme_boy_creations:trigger/open_interface
advancement revoke @a only supreme_boy_creations:trigger/trigger_core
advancement revoke @a only supreme_boy_creations:trigger/attack_core
advancement revoke @a only supreme_boy_creations:trigger/dialogue
advancement revoke @a only supreme_boy_creations:trigger/motion

scoreboard players reset @e[scores={SupremeBoyTrigger=..24}] SupremeBoyTrigger
scoreboard players reset @a SupremeBoyTrigger

#记分板注册
scoreboard objectives add SupremeBoyTrigger trigger "至尊男孩合成器触发记分板"
scoreboard objectives add SupremeBoyDialogues dummy "至尊男孩合成器对话记分板"
scoreboard objectives add SupremeBoyMotion dummy "至尊男孩合成器动作记分板"

#循环函数
function supreme_boy_creations:looping