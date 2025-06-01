# Min y
execute store result score @s temp run data get entity @s Pos[1] 80
scoreboard players set @s temp2 80
scoreboard players operation @s temp2 *= minDelta tp_config
scoreboard players operation @s temp += @s temp2
execute store result storage infiniburn:temp y_min float 1 run scoreboard players get @s temp
# Max y
execute store result score @s temp run data get entity @s Pos[1] 1
scoreboard players operation @s temp += maxDelta tp_config
execute store result storage infiniburn:temp y_max int 1 run scoreboard players get @s temp
# Set @s temp to spread value
scoreboard players set @s temp 11
scoreboard players operation @s temp *= @a[tag=player_tag,limit=1] enderian_focus
scoreboard players set @s temp2 -990
scoreboard players operation @s temp += @s temp2
scoreboard players operation @s temp *= @a[tag=player_tag,limit=1] enderian_focus
scoreboard players set @s temp2 2025
scoreboard players operation @s temp /= @s temp2
scoreboard players set @s temp2 12
scoreboard players operation @s temp += @s temp2
execute store result storage infiniburn:temp spread int 1 run scoreboard players get @s temp
# Mins and maxes for spreading tester
#execute store result score @s temp2 run data get entity @s Pos[0]
#scoreboard players operation @s temp2 += @s temp
#execute store result storage infiniburn:temp spreadX_min int 1 run scoreboard players get @s temp2
#execute store result score @s temp2 run data get entity @s Pos[0]
#scoreboard players operation @s temp2 -= @s temp
#execute store result storage infiniburn:temp spreadX_max int 1 run scoreboard players get @s temp2
#execute store result score @s temp2 run data get entity @s Pos[1]
#scoreboard players operation @s temp2 += @s temp
#execute store result storage infiniburn:temp spreadZ_min int 1 run scoreboard players get @s temp2
#execute store result score @s temp2 run data get entity @s Pos[1]
#scoreboard players operation @s temp2 -= @s temp
#execute store result storage infiniburn:temp spreadZ_max int 1 run scoreboard players get @s temp2
# Run spread tester function
function infiniburn:enderian/selection/spread_tester with storage infiniburn:temp