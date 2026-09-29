#记分板清零
scoreboard players set @s SupremeBoyTrigger 0

playsound minecraft:block.piston.contract ambient @s ~ ~ ~
title @s title {"text":"不许打开！！",color:"#ff8000",bold:true}
return run title @s subtitle {"text":"*看起来它生气了，用燃料让他消消气吧……",color:"#d3d3d3"}