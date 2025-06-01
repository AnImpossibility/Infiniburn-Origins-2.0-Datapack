scoreboard players set @s tp_ready 1
execute if score @s raycast_completed matches 0 run scoreboard players set @s tp_ready 0
execute if score @s selection_completed matches 0 run scoreboard players set @s tp_ready 0