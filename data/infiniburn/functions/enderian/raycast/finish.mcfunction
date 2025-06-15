scoreboard players set @s raycast_completed 1
tp @e[tag=marker_tag,type=marker] ~ ~ ~
scoreboard players operation @e[tag=marker_tag,type=marker,limit=1] tp_distance -= @s ray_steps
scoreboard players set @s temp 10
scoreboard players operation @e[tag=marker_tag,type=marker,limit=1] tp_distance /= @s temp