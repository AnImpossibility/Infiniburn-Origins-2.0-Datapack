# 1.5 Blocks (Fences/Walls)
execute at @s if block ~ ~ ~ #minecraft:fences run tp @s ~ ~1.5 ~
execute at @s if block ~ ~ ~ #minecraft:walls run tp @s ~ ~1.5 ~
# 0.9375 Blocks (Some natural blocks)
execute at @s if block ~ ~ ~ minecraft:dirt_path run tp @s ~ ~0.9375 ~
execute at @s if block ~ ~ ~ minecraft:farmland run tp @s ~ ~0.9375 ~
execute at @s if block ~ ~ ~ minecraft:honey_block run tp @s ~ ~0.9375 ~
execute at @s if block ~ ~ ~ minecraft:cactus run tp @s ~ ~0.9375 ~
# 0.875 Blocks (Some random blocks)
execute at @s if block ~ ~ ~ minecraft:soul_sand run tp @s ~ ~0.875 ~
execute at @s if block ~ ~ ~ minecraft:mud run tp @s ~ ~0.875 ~
execute at @s if block ~ ~ ~ minecraft:chest run tp @s ~ ~0.875 ~
execute at @s if block ~ ~ ~ minecraft:ender_chest run tp @s ~ ~0.875 ~
execute at @s if block ~ ~ ~ minecraft:trapped_chest run tp @s ~ ~0.875 ~
execute at @s if block ~ ~ ~ minecraft:brewing_stand run tp @s ~ ~0.875 ~
execute at @s if block ~ ~ ~ minecraft:candle_cake run tp @s ~ ~0.875 ~
execute at @s if block ~ ~ ~ minecraft:lectern run tp @s ~ ~0.875 ~
# 0.8125 Blocks (Chrous Plant)
execute at @s if block ~ ~ ~ chorus_plant run tp @s ~ ~0.8125 ~
# 0.75 Blocks (Enchanting Table, End Portal, Cocoa)
execute at @s if block ~ ~ ~ minecraft:enchanting_table run tp @s ~ ~0.75 ~
execute at @s if block ~ ~ ~ minecraft:cocoa run tp @s ~ ~0.75 ~
execute at @s if block ~ ~ ~ minecraft:end_portal run tp @s ~ ~0.75 ~
# 0.6875 Blocks (Hopper, Conduit)
execute at @s if block ~ ~ ~ minecraft:hopper run tp @s ~ ~0.6875 ~
execute at @s if block ~ ~ ~ minecraft:conduit run tp @s ~ ~0.6875 ~
# 0.625 Blocks (Rods)
execute at @s if block ~ ~ ~ minecraft:end_rod run tp @s ~ ~0.625 ~
execute at @s if block ~ ~ ~ minecraft:lightning_rod run tp @s ~ ~0.625 ~
# 0.5625 Blocks (Beds, Lanterns)
execute at @s if block ~ ~ ~ #minecraft:beds run tp @s ~ ~0.5625 ~
execute at @s if block ~ ~ ~ minecraft:lantern run tp @s ~ ~0.5625 ~
execute at @s if block ~ ~ ~ minecraft:soul_lantern run tp @s ~ ~0.5625 ~
# 0.5 Blocks (Sculk)
execute at @s if block ~ ~ ~ minecraft:sculk_sensor run tp @s ~ ~0.5 ~
execute at @s if block ~ ~ ~ minecraft:calibrated_sculk_sensor run tp @s ~ ~0.5 ~
execute at @s if block ~ ~ ~ minecraft:sculk_shrieker run tp @s ~ ~0.5 ~
# 0.4375 Blocks (Campfires, Turtle Eggs)
execute at @s if block ~ ~ ~ minecraft:campfire run tp @s ~ ~0.4375 ~
execute at @s if block ~ ~ ~ minecraft:soul_campfire run tp @s ~ ~0.4375 ~
execute at @s if block ~ ~ ~ minecraft:turtle_egg run tp @s ~ ~0.4375 ~
# 0.375 Blocks (Some random blocks (including sea pickles))
execute at @s if block ~ ~ ~ minecraft:daylight_detector run tp @s ~ ~0.375 ~
execute at @s if block ~ ~ ~ #minecraft:candles run tp @s ~ ~0.375 ~
execute at @s if block ~ ~ ~ #minecraft:flower_pots run tp @s ~ ~0.375 ~
execute at @s if block ~ ~ ~ minecraft:sea_pickle run tp @s ~ ~0.375 ~
# 0.25 Blocks (Cauldron)
execute at @s if block ~ ~ ~ minecraft:cauldron run tp @s ~ ~0.25 ~
# 0.125 Blocks (Composter, Redstone)
execute at @s if block ~ ~ ~ minecraft:composter run tp @s ~ ~0.125 ~
execute at @s if block ~ ~ ~ minecraft:repeater run tp @s ~ ~0.125 ~
execute at @s if block ~ ~ ~ minecraft:comparator run tp @s ~ ~0.125 ~
# 0.09375 Blocks (Lily Pad)
execute at @s if block ~ ~ ~ minecraft:lily_pad run tp @s ~ ~0.09375 ~
# 0.0625 Blocks (Carpets)
execute at @s if block ~ ~ ~ #minecraft:wool_carpets run tp @s ~ ~0.0625 ~
execute at @s if block ~ ~ ~ minecraft:moss_carpet run tp @s ~ ~0.0625 ~

# Slabs
execute at @s if block ~ ~ ~ #minecraft:slabs[type=bottom] run tp @s ~ ~0.5 ~
execute at @s if block ~ ~ ~ #minecraft:slabs[type=top] run tp @s ~ ~1.0 ~
execute at @s if block ~ ~ ~ #minecraft:slabs[type=double] run tp @s ~ ~1.0 ~
# Chain
execute at @s if block ~ ~ ~ minecraft:chain[axis=x] run tp @s ~ ~0.59375 ~
execute at @s if block ~ ~ ~ minecraft:chain[axis=z] run tp @s ~ ~0.59375 ~
execute at @s if block ~ ~ ~ minecraft:chain[axis=y] run tp @s ~ ~1 ~
# End Portal Frame
execute at @s if block ~ ~ ~ minecraft:end_portal_frame[eye=false] run tp @s ~ ~0.8125 ~
execute at @s if block ~ ~ ~ minecraft:end_portal_frame[eye=true] run tp @s ~ ~1 ~
# Pointed Dripstone
execute at @s if block ~ ~ ~ minecraft:pointed_dripstone[vertical_direction=up] run tp @s ~ ~0.6875 ~
execute at @s if block ~ ~ ~ minecraft:pointed_dripstone[vertical_direction=down] run tellraw @a[tag=player_tag,limit=1] {"text": "There has been an error! Please report this bug!", "color": "red"}
# Fence Gates
execute at @s if block ~ ~ ~ #minecraft:fence_gates[open=false] run tp @s ~ ~1.5 ~
# Trapdoors
execute at @s if block ~ ~ ~ #minecraft:trapdoors[open=false,half=top] run tp @s ~ ~1 ~
execute at @s if block ~ ~ ~ #minecraft:trapdoors[open=false,half=bottom] run tp @s ~ ~0.1875 ~
# Grindstone
execute at @s if block ~ ~ ~ minecraft:grindstone[face=ceiling] run tp @s ~ ~1 ~
execute at @s if block ~ ~ ~ minecraft:grindstone[face=floor] run tp @s ~ ~1 ~
execute at @s if block ~ ~ ~ minecraft:grindstone[face=wall] run tp @s ~ ~0.875 ~
# Big Dripleaf
execute at @s if block ~ ~ ~ minecraft:big_dripleaf[tilt=none] run tp @s ~ ~0.9375 ~
execute at @s if block ~ ~ ~ minecraft:big_dripleaf[tilt=unstable] run tp @s ~ ~0.9375 ~
execute at @s if block ~ ~ ~ minecraft:big_dripleaf[tilt=partial] run tp @s ~ ~0.9375 ~
execute at @s if block ~ ~ ~ minecraft:big_dripleaf[tilt=full] run tellraw @a[tag=player_tag,limit=1] {"text": "There has been an error! Please report this bug!", "color": "red"}
# Bell
execute at @s if block ~ ~ ~ minecraft:bell[attachment=floor] run tp @s ~ ~1 ~
execute at @s if block ~ ~ ~ minecraft:bell[attachment=double_wall] run tp @s ~ ~0.9375 ~
execute at @s if block ~ ~ ~ minecraft:bell[attachment=single_wall] run tp @s ~ ~0.9375 ~
execute at @s if block ~ ~ ~ minecraft:bell[attachment=ceiling] run tellraw @a[tag=player_tag,limit=1] {"text": "There has been an error! Please report this bug!", "color": "red"}
# Snow
execute at @s if block ~ ~ ~ minecraft:snow[layers=1] run tp @s ~ ~ ~
execute at @s if block ~ ~ ~ minecraft:snow[layers=2] run tp @s ~ ~0.125 ~
execute at @s if block ~ ~ ~ minecraft:snow[layers=3] run tp @s ~ ~0.25 ~
execute at @s if block ~ ~ ~ minecraft:snow[layers=4] run tp @s ~ ~0.375 ~
execute at @s if block ~ ~ ~ minecraft:snow[layers=5] run tp @s ~ ~0.5 ~
execute at @s if block ~ ~ ~ minecraft:snow[layers=6] run tp @s ~ ~0.625 ~
execute at @s if block ~ ~ ~ minecraft:snow[layers=7] run tp @s ~ ~0.75 ~
execute at @s if block ~ ~ ~ minecraft:snow[layers=8] run tp @s ~ ~0.875 ~
# Amethyst
execute at @s if block ~ ~ ~ minecraft:small_amethyst_bud unless block ~ ~ ~ minecraft:small_amethyst_bud[facing=up] run tp @s ~ ~0.75 ~
execute at @s if block ~ ~ ~ minecraft:medium_amethyst_bud unless block ~ ~ ~ minecraft:medium_amethyst_bud[facing=up] run tp @s ~ ~0.8125 ~
execute at @s if block ~ ~ ~ minecraft:large_amethyst_bud unless block ~ ~ ~ minecraft:large_amethyst_bud[facing=up] run tp @s ~ ~0.8125 ~
execute at @s if block ~ ~ ~ minecraft:amethyst_cluster unless block ~ ~ ~ minecraft:amethyst_cluster[facing=up] run tp @s ~ ~0.8125 ~
execute at @s if block ~ ~ ~ minecraft:small_amethyst_bud[facing=up] run tp @s ~ ~0.1875 ~
execute at @s if block ~ ~ ~ minecraft:medium_amethyst_bud[facing=up] run tp @s ~ ~0.25 ~
execute at @s if block ~ ~ ~ minecraft:large_amethyst_bud[facing=up] run tp @s ~ ~0.3125 ~
execute at @s if block ~ ~ ~ minecraft:amethyst_cluster[facing=up] run tp @s ~ ~0.4375 ~
execute at @s if block ~ ~ ~ minecraft:small_amethyst_bud[facing=down] run tellraw @a[tag=player_tag,limit=1] {"text": "There has been an error! Please report this bug!", "color": "red"}
execute at @s if block ~ ~ ~ minecraft:medium_amethyst_bud[facing=down] run tellraw @a[tag=player_tag,limit=1] {"text": "There has been an error! Please report this bug!", "color": "red"}
execute at @s if block ~ ~ ~ minecraft:large_amethyst_bud[facing=down] run tellraw @a[tag=player_tag,limit=1] {"text": "There has been an error! Please report this bug!", "color": "red"}
execute at @s if block ~ ~ ~ minecraft:amethyst_cluster[facing=down] run tellraw @a[tag=player_tag,limit=1] {"text": "There has been an error! Please report this bug!", "color": "red"}
# Heads
execute at @s if block ~ ~ ~ minecraft:skeleton_skull run tp @s ~ ~0.5 ~
execute at @s if block ~ ~ ~ minecraft:wither_skeleton_skull run tp @s ~ ~0.5 ~
execute at @s if block ~ ~ ~ minecraft:zombie_head run tp @s ~ ~0.5 ~
execute at @s if block ~ ~ ~ minecraft:player_head run tp @s ~ ~0.5 ~
execute at @s if block ~ ~ ~ minecraft:creeper_head run tp @s ~ ~0.5 ~
execute at @s if block ~ ~ ~ minecraft:piglin_head run tp @s ~ ~0.5 ~
execute at @s if block ~ ~ ~ minecraft:dragon_head run tp @s ~ ~0.5 ~
execute at @s if block ~ ~ ~ minecraft:skeleton_wall_skull run tp @s ~ ~0.75 ~
execute at @s if block ~ ~ ~ minecraft:wither_skeleton_wall_skull run tp @s ~ ~0.75 ~
execute at @s if block ~ ~ ~ minecraft:zombie_wall_head run tp @s ~ ~0.75 ~
execute at @s if block ~ ~ ~ minecraft:player_wall_head run tp @s ~ ~0.75 ~
execute at @s if block ~ ~ ~ minecraft:creeper_wall_head run tp @s ~ ~0.75 ~
execute at @s if block ~ ~ ~ minecraft:piglin_wall_head run tp @s ~ ~0.75 ~
execute at @s if block ~ ~ ~ minecraft:dragon_wall_head run tp @s ~ ~0.75 ~