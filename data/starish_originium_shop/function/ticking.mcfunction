#记分板效果
scoreboard players enable @a StarOriShopTrigger
execute unless entity @n[scores={StarOriShopTrigger=1..}] unless entity @n[scores={StarOriShopTrigger=..-1}] run return fail

#买入效果
execute as @a[scores={StarOriShopTrigger=2000}] at @s run return run dialog show @s supreme_boy_creations:main
execute as @a[scores={StarOriShopTrigger=2001}] at @s run return run function starish_originium_shop:settings/book_turning/change_this_book
execute as @a[scores={StarOriShopTrigger=2002}] at @s run return run function starish_originium_shop:settings/book_turning/sell
execute as @a[scores={StarOriShopTrigger=2003}] at @s run return run function starish_originium_shop:settings/book_turning/buy
execute as @a[scores={StarOriShopTrigger=2004}] at @s run return run function starish_originium_shop:settings/book_turning/service

#买入效果
execute as @a[scores={StarOriShopTrigger=999}] at @s run return run function starish_originium_shop:buy/supreme_items/starish_originium
execute as @a[scores={StarOriShopTrigger=1}] at @s run return run function starish_originium_shop:buy/normal_items/amethyst_buds/amethyst_cluster
execute as @a[scores={StarOriShopTrigger=2}] at @s run return run function starish_originium_shop:buy/normal_items/amethyst_buds/budding_amethyst
execute as @a[scores={StarOriShopTrigger=3}] at @s run return run function starish_originium_shop:buy/normal_items/amethyst_buds/large_amethyst_bud
execute as @a[scores={StarOriShopTrigger=4}] at @s run return run function starish_originium_shop:buy/normal_items/amethyst_buds/medium_amethyst_bud
execute as @a[scores={StarOriShopTrigger=5}] at @s run return run function starish_originium_shop:buy/normal_items/amethyst_buds/small_amethyst_bud
execute as @a[scores={StarOriShopTrigger=6}] at @s run return run function starish_originium_shop:buy/normal_items/chorus_plant
execute as @a[scores={StarOriShopTrigger=7}] at @s run return run function starish_originium_shop:buy/normal_items/dangerous_sculk_shrieker
execute as @a[scores={StarOriShopTrigger=8}] at @s run return run function starish_originium_shop:buy/normal_items/goat_horns/admire
execute as @a[scores={StarOriShopTrigger=9}] at @s run return run function starish_originium_shop:buy/normal_items/goat_horns/call
execute as @a[scores={StarOriShopTrigger=10}] at @s run return run function starish_originium_shop:buy/normal_items/goat_horns/dream
execute as @a[scores={StarOriShopTrigger=11}] at @s run return run function starish_originium_shop:buy/normal_items/goat_horns/feel
execute as @a[scores={StarOriShopTrigger=12}] at @s run return run function starish_originium_shop:buy/normal_items/goat_horns/ponder
execute as @a[scores={StarOriShopTrigger=13}] at @s run return run function starish_originium_shop:buy/normal_items/goat_horns/seek
execute as @a[scores={StarOriShopTrigger=14}] at @s run return run function starish_originium_shop:buy/normal_items/goat_horns/sing
execute as @a[scores={StarOriShopTrigger=15}] at @s run return run function starish_originium_shop:buy/normal_items/goat_horns/yearn
execute as @a[scores={StarOriShopTrigger=16}] at @s run return run function starish_originium_shop:buy/normal_items/heads/creeper_head
execute as @a[scores={StarOriShopTrigger=17}] at @s run return run function starish_originium_shop:buy/normal_items/heads/dragon_head
execute as @a[scores={StarOriShopTrigger=18}] at @s run return run function starish_originium_shop:buy/normal_items/heads/piglin_head
execute as @a[scores={StarOriShopTrigger=19}] at @s run return run function starish_originium_shop:buy/normal_items/heads/player_head
execute as @a[scores={StarOriShopTrigger=20}] at @s run return run function starish_originium_shop:buy/normal_items/heads/skeleton_skull
execute as @a[scores={StarOriShopTrigger=21}] at @s run return run function starish_originium_shop:buy/normal_items/heads/wither_skeleton_skull
execute as @a[scores={StarOriShopTrigger=22}] at @s run return run function starish_originium_shop:buy/normal_items/heads/zombie_head
execute as @a[scores={StarOriShopTrigger=23}] at @s run return run function starish_originium_shop:buy/normal_items/pitcher_pod
execute as @a[scores={StarOriShopTrigger=24}] at @s run return run function starish_originium_shop:buy/normal_items/sniffer_egg
execute as @a[scores={StarOriShopTrigger=25}] at @s run return run function starish_originium_shop:buy/normal_items/spawner
execute as @a[scores={StarOriShopTrigger=26}] at @s run return run function starish_originium_shop:buy/normal_items/torchflower_seeds
execute as @a[scores={StarOriShopTrigger=1001}] at @s run return run function starish_originium_shop:buy/supreme_items/enchanted_golden_apple
execute as @a[scores={StarOriShopTrigger=1002}] at @s run return run function starish_originium_shop:buy/supreme_items/starish_originium_ingot

#卖出效果
execute as @a[scores={StarOriShopTrigger=-999}] at @s run return run function starish_originium_shop:sell/supreme_items/starish_originium
execute as @a[scores={StarOriShopTrigger=-1}] at @s run return run function starish_originium_shop:sell/normal_items/coal_block
execute as @a[scores={StarOriShopTrigger=-2}] at @s run return run function starish_originium_shop:sell/normal_items/diamond
execute as @a[scores={StarOriShopTrigger=-3}] at @s run return run function starish_originium_shop:sell/normal_items/dragon_egg
execute as @a[scores={StarOriShopTrigger=-4}] at @s run return run function starish_originium_shop:sell/normal_items/elytra
execute as @a[scores={StarOriShopTrigger=-5}] at @s run return run function starish_originium_shop:sell/normal_items/enchanted_golden_apple
execute as @a[scores={StarOriShopTrigger=-6}] at @s run return run function starish_originium_shop:sell/normal_items/emerald_block
execute as @a[scores={StarOriShopTrigger=-7}] at @s run return run function starish_originium_shop:sell/normal_items/gold_block
execute as @a[scores={StarOriShopTrigger=-8}] at @s run return run function starish_originium_shop:sell/normal_items/hay_block
execute as @a[scores={StarOriShopTrigger=-9}] at @s run return run function starish_originium_shop:sell/normal_items/lapis_block
execute as @a[scores={StarOriShopTrigger=-10}] at @s run return run function starish_originium_shop:sell/normal_items/nether_star
execute as @a[scores={StarOriShopTrigger=-11}] at @s run return run function starish_originium_shop:sell/normal_items/netherite_ingot
execute as @a[scores={StarOriShopTrigger=-12}] at @s run return run function starish_originium_shop:sell/normal_items/quartz_block
execute as @a[scores={StarOriShopTrigger=-13}] at @s run return run function starish_originium_shop:sell/normal_items/redstone_block
execute as @a[scores={StarOriShopTrigger=-14}] at @s run return run function starish_originium_shop:sell/normal_items/shulker_shell

