execute if block ~ ~ ~ #minecraft:slabs[type=bottom] if score @s temp matches 40.. run return 0
execute if block ~ ~ ~ #minecraft:slabs[type=top] if score @s temp matches ..40 run return 0
return 1