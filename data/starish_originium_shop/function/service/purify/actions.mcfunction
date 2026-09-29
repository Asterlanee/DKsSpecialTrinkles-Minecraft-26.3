effect clear @s blindness
effect clear @s darkness
effect clear @s hunger
effect clear @s instant_damage
effect clear @s levitation
effect clear @s mining_fatigue
effect clear @s nausea
effect clear @s poison
effect clear @s slowness
effect clear @s unluck
effect clear @s weakness
effect clear @s wither
effect clear @s oozing
effect clear @s weaving
effect clear @s wind_charged
effect clear @s infested
summon area_effect_cloud ~ ~0.2 ~ {PortalCooldown:999,Radius:0.6f,RadiusPerTick:0.1f,Duration:10,Invulnerable:true,custom_particle:{type:"minecraft:end_rod"},Glowing:true,Motion:[0d,0.25d,0d],potion_contents:{custom_color:16711680,custom_effects:[{id:"minecraft:instant_health",duration:1,amplifier:20},{id:"minecraft:saturation",duration:1,amplifier:20}]}}
playsound block.beacon.power_select ambient @s ~ ~ ~ 2 1.2
title @s actionbar {"text": "已成功净化自身全部负面效果,并恢复全部生命与饱食度"}