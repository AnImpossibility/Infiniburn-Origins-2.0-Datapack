scoreboard players set @s raycast_completed 0
# Ray Steps
scoreboard players operation @s temp = @s enderian_focus
scoreboard players set @s temp2 15
scoreboard players operation @s temp2 *= @s temp
scoreboard players operation @s temp *= @s temp
scoreboard players operation @s temp += @s temp2
scoreboard players set @s temp2 60
scoreboard players operation @s temp /= @s temp2
scoreboard players set @s temp2 10
scoreboard players operation @s temp += @s temp2
scoreboard players set @s temp2 10
scoreboard players operation @s temp *= @s temp2
scoreboard players operation @s ray_steps = @s temp
scoreboard players operation @e[tag=marker_tag,type=marker,limit=1] tp_distance = @s ray_steps
function infiniburn:enderian/raycast/loop