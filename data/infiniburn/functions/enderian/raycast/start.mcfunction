scoreboard players set @s raycast_completed 0
# Spread
scoreboard players operation @s temp = @s enderian_focus
scoreboard players set @s temp2 15
scoreboard players operation @s temp2 *= @s temp
scoreboard players operation @s temp *= @s temp
scoreboard players operation @s temp += @s temp2
scoreboard players set @s temp2 45
scoreboard players operation @s temp /= @s temp2
scoreboard players set @s temp2 10
scoreboard players operation @s temp += @s temp2
scoreboard players set @s temp2 10
scoreboard players operation @s temp *= @s temp2
scoreboard players operation @s ray_steps = @s temp
function infiniburn:enderian/raycast/loop