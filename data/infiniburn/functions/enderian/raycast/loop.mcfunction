scoreboard players set @s should_finish 1
function infiniburn:enderian/raycast/should_finish
execute if score @s should_finish matches 1 run function infiniburn:enderian/raycast/finish
execute if score @s raycast_completed matches 0 run scoreboard players remove @s ray_steps 1
execute if score @s raycast_completed matches 0 unless score @s ray_steps matches ..0 positioned ^ ^ ^0.1 run function infiniburn:enderian/raycast/loop
execute if score @s raycast_completed matches 0 if score @s ray_steps matches ..0 run function infiniburn:enderian/raycast/start2
execute if score @s raycast_completed matches 0 if score @s ray_steps matches ..0 run scoreboard players set @s raycast_completed -1