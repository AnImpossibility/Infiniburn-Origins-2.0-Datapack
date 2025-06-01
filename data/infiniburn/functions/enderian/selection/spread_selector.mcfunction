## spread_tester set @s temp2 to if the position is invalid 
## ...and the teleport power set @s temp3 to if the tester is in rain
execute store result score @s temp run data get entity @e[tag=tester_tag,type=marker,limit=1] Pos[1] 80
$execute if score @s temp matches $(y_min).. if score @s temp2 matches 0 if score @s temp3 matches 0 run tp @e[tag=selector_tag,type=marker,limit=1] @e[tag=tester_tag,type=marker,limit=1]
$execute if score @s temp matches $(y_min).. if score @s temp2 matches 0 if score @s temp3 matches 0 run scoreboard players set @a[tag=player_tag,limit=1] selection_completed 1
# Reset selection when old selection is too far
execute as @a[tag=player_tag,limit=1] run function infiniburn:enderian/selection/too_far with storage infiniburn:temp
kill @e[tag=tester_tag,type=marker,limit=1]