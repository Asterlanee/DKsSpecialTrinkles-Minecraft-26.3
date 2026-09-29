execute as @p run title @s title {"text": "物品摆放错误，请修正后再试……",bold: true}
execute as @p run playsound entity.villager.no ambient @s ~ ~ ~ 1 0.6
return fail