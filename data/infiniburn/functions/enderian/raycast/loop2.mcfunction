scoreboard players set @s should_finish 1
function infiniburn:enderian/raycast/should_finish
execute if score @s should_finish matches 1 run function infiniburn:enderian/raycast/finish
execute unless score @s raycast_completed matches 1 run scoreboard players remove @s ray_steps 1
execute unless score @s raycast_completed matches 1 if score @s ray_steps matches 0.. positioned ~ ~-0.1 ~ run function infiniburn:enderian/raycast/loop2