execute as @e[tag=selector_tag,type=marker,limit=1] store result score @s temp run data get entity @s Pos[0]
execute as @e[tag=selector_tag,type=marker,limit=1] store result score @s temp2 run data get entity @s Pos[2]
execute as @e[tag=marker_tag,type=marker,limit=1] store result score @s temp run data get entity @s Pos[0]
execute as @e[tag=marker_tag,type=marker,limit=1] store result score @s temp2 run data get entity @s Pos[2]
scoreboard players operation @e[tag=marker_tag,type=marker,limit=1] temp -= @e[tag=selector_tag,type=marker,limit=1] temp
scoreboard players operation @e[tag=marker_tag,type=marker,limit=1] temp2 -= @e[tag=selector_tag,type=marker,limit=1] temp2
scoreboard players set @s temp -1
execute if score @e[tag=marker_tag,type=marker,limit=1] temp matches ..0 run scoreboard players operation @e[tag=marker_tag,type=marker,limit=1] temp *= @s temp
execute if score @e[tag=marker_tag,type=marker,limit=1] temp2 matches ..0 run scoreboard players operation @e[tag=marker_tag,type=marker,limit=1] temp2 *= @s temp
$execute unless score @e[tag=marker_tag,type=marker,limit=1] temp matches ..$(range_max) run scoreboard players set @s selection_completed 0
$execute unless score @e[tag=marker_tag,type=marker,limit=1] temp2 matches ..$(range_max) run scoreboard players set @s selection_completed 0
execute as @e[tag=selector_tag,type=marker,limit=1] store result score @s temp run data get entity @s Pos[1]
$execute if score @e[tag=selector_tag,type=marker,limit=1] temp matches $(y_max).. run scoreboard players set @s selection_completed 0
execute as @e[tag=selector_tag,type=marker,limit=1] store result score @s temp run data get entity @s Pos[1] 80
$execute unless score @e[tag=selector_tag,type=marker,limit=1] temp matches $(y_min).. run scoreboard players set @s selection_completed 0