# Normal blocks
execute unless block ~ ~ ~ #infiniburn:nonsolid unless block ~ ~ ~ #infiniburn:variable_hitbox run scoreboard players set @s should_finish 1
execute unless block ~ ~ ~ #infiniburn:nonsolid unless block ~ ~ ~ #infiniburn:variable_hitbox run return 0
# Nonsolid blocks
execute if block ~ ~ ~ #infiniburn:nonsolid run scoreboard players set @s should_finish 0
execute if block ~ ~ ~ #infiniburn:nonsolid run return 0
# Setting @s temp to the relative y-value * 80

summon marker ~ ~ ~ {Tags:["data_marker"]}
execute store result score @s temp2 run data get entity @e[tag=data_marker,type=marker,limit=1] Pos[1] 1
scoreboard players set @s temp 80
scoreboard players operation @s temp2 *= @s temp
execute store result score @s temp run data get entity @e[tag=data_marker,type=marker,limit=1] Pos[1] 80
scoreboard players operation @s temp -= @s temp2

kill @e[tag=data_marker,type=marker]
# Variable blocks
execute if block ~ ~ ~ #minecraft:slabs store result score @s should_finish run function infiniburn:enderian/raycast/should_finish/slab_hell
execute if block ~ ~ ~ #minecraft:stairs store result score @s should_finish run function infiniburn:enderian/raycast/should_finish/stair_hell
execute if block ~ ~ ~ #minecraft:trapdoors store result score @s should_finish run function infiniburn:enderian/raycast/should_finish/trapdoor_hell
execute if block ~ ~ ~ minecraft:snow store result score @s should_finish run function infiniburn:enderian/raycast/should_finish/snow_hell
execute if block ~ ~ ~ #minecraft:fence_gates[open=false] run scoreboard players set @s should_finish 1
execute if block ~ ~ ~ #minecraft:fence_gates[open=true] run scoreboard players set @s should_finish 0