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
scoreboard players operation @s temp = @a[tag=player_tag,limit=1] enderian_focus
scoreboard players operation @s temp2 = @s temp
scoreboard players set @s temp3 -100
scoreboard players operation @s temp2 += @s temp3
scoreboard players operation @s temp *= @s temp2
scoreboard players set @s temp2 25
scoreboard players operation @s temp2 *= @s tp_distance
scoreboard players operation @s temp += @s temp2
scoreboard players set @s temp2 2250
scoreboard players operation @s temp += @s temp2
scoreboard players set @s temp2 250
scoreboard players operation @s temp > @s temp2
execute store result storage infiniburn:temp spread float 0.004 run scoreboard players get @s temp
# Run spread tester function
function infiniburn:enderian/selection/spread_tester with storage infiniburn:temp