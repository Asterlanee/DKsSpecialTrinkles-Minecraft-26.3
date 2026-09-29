
execute as @s store result score EPIC StarOriShop_Ticket run clear @s paper[minecraft:custom_data={DksTicketPriority:99}] 0
execute as @s store result score LEGENDARY StarOriShop_Ticket run clear @s paper[minecraft:custom_data={DksTicketPriority:3}] 0
execute as @s store result score RARE StarOriShop_Ticket run clear @s paper[minecraft:custom_data={DksTicketPriority:2}] 0
execute as @s store result score NORMAL StarOriShop_Ticket run clear @s paper[minecraft:custom_data={DksTicketPriority:0}] 0
execute as @s store result score @s StarOriShop_Ticket run clear @s paper[minecraft:custom_data={DksTicketWork:1}] 0

tellraw @s [{"text": "§f目前拥有：\n§r史诗奖券§f数量: ","color": "#B412ED"},{"score": {"name": "EPIC","objective": "StarOriShop_Ticket"},"color": "#FFD042"},{"text": " "},{"text": "\n传说奖券§f数量: ","color": "#F78F14"},{"score": {"name": "LEGENDARY","objective": "StarOriShop_Ticket"},"color": "#FFD042"},{"text": " "},{"text": "\n稀有奖券§f数量: ","color": "#0077ff"},{"score": {"name": "NORMAL","objective": "StarOriShop_Ticket"},"color": "#FFD042"},{"text": " "},{"text": "\n普通奖券§f数量: ","color": "#B8B8B8"},{"score": {"name": "NORMAL","objective": "StarOriShop_Ticket"},"color": "#FFD042"},{"text": " "},{"text": "\n§7奖券§f总数量: ","color": "#FFD700"},{"score": {"name": "@s","objective": "StarOriShop_Ticket"},"color": "#FFD042"}]

scoreboard players reset * StarOriShop_Ticket