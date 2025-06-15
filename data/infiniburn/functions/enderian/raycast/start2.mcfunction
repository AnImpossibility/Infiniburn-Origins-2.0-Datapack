scoreboard players set @s ray_steps 150
scoreboard players operation @e[tag=marker_tag,type=marker,limit=1] tp_distance += @s ray_steps
function infiniburn:enderian/raycast/loop2