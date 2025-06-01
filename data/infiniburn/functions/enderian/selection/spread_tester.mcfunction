# Summoning the tester marker
execute at @e[tag=selector_tag,type=marker,limit=1] run summon marker ~ ~ ~ {Tags:["tester_tag"]}
# Spread the tester marker, @s temp = success
$execute store success score @s temp run spreadplayers ~ ~ 0 $(spread) under $(y_max) false @e[tag=tester_tag,type=marker,limit=1]
# Reset selection if the spread fails
execute if score @s temp matches 0 run scoreboard players set @a[tag=player_tag,limit=1] selection_completed 0
execute if score @s temp matches 0 run return 0
# Setting @s temp2 to if the location is bad
scoreboard players set @s temp2 0
execute at @e[tag=tester_tag,type=marker,limit=1] if block ~ ~-1 ~ #infiniburn:nonsolid run scoreboard players set @s temp2 1
execute at @e[tag=tester_tag,type=marker,limit=1] if block ~ ~-1 ~ #infiniburn:no_tp run scoreboard players set @s temp2 1
# Adjust height of tester (if this makes it bad, will also set @s temp2 to 1)
execute as @e[tag=tester_tag,type=marker,limit=1] at @s if block ~ ~-1 ~ #infiniburn:variable_height unless block ~ ~ ~ #infiniburn:variable_hitbox run function infiniburn:enderian/selection/prepare_adjust