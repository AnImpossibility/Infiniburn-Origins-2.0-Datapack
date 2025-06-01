# Basic Checks
execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom,open=false] if score @s temp matches 15.. run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[half=top,open=false] if score @s temp matches ..65 run return 0
# Setting @s temp to the x or z-value * 80, based on relevant direction

summon marker ~ ~ ~ {Tags:["data_marker"]}
execute unless block ~ ~ ~ #minecraft:trapdoors[facing=north] unless block ~ ~ ~ #minecraft:trapdoors[facing=south] store result score @s temp3 run data get entity @e[tag=data_marker,type=marker,limit=1] Pos[0] 1
execute unless block ~ ~ ~ #minecraft:trapdoors[facing=north] unless block ~ ~ ~ #minecraft:trapdoors[facing=south] run scoreboard players set @s temp2 80
execute unless block ~ ~ ~ #minecraft:trapdoors[facing=north] unless block ~ ~ ~ #minecraft:trapdoors[facing=south] run scoreboard players operation @s temp3 *= @s temp2
execute unless block ~ ~ ~ #minecraft:trapdoors[facing=north] unless block ~ ~ ~ #minecraft:trapdoors[facing=south] store result score @s temp2 run data get entity @e[tag=data_marker,type=marker,limit=1] Pos[0] 80
execute unless block ~ ~ ~ #minecraft:trapdoors[facing=north] unless block ~ ~ ~ #minecraft:trapdoors[facing=south] run scoreboard players operation @s temp2 -= @s temp3 
execute unless block ~ ~ ~ #minecraft:trapdoors[facing=east] unless block ~ ~ ~ #minecraft:trapdoors[facing=west] store result score @s temp3 run data get entity @e[tag=data_marker,type=marker,limit=1] Pos[2] 1
execute unless block ~ ~ ~ #minecraft:trapdoors[facing=east] unless block ~ ~ ~ #minecraft:trapdoors[facing=west] run scoreboard players set @s temp2 80
execute unless block ~ ~ ~ #minecraft:trapdoors[facing=east] unless block ~ ~ ~ #minecraft:trapdoors[facing=west] run scoreboard players operation @s temp3 *= @s temp2
execute unless block ~ ~ ~ #minecraft:trapdoors[facing=east] unless block ~ ~ ~ #minecraft:trapdoors[facing=west] store result score @s temp2 run data get entity @e[tag=data_marker,type=marker,limit=1] Pos[2] 80
execute unless block ~ ~ ~ #minecraft:trapdoors[facing=east] unless block ~ ~ ~ #minecraft:trapdoors[facing=west] run scoreboard players operation @s temp2 -= @s temp3 

kill @e[tag=data_marker,type=marker]
# More Checks
execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom,facing=north] if score @s temp2 matches ..65 run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom,facing=east] if score @s temp2 matches 15.. run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom,facing=south] if score @s temp2 matches 15.. run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom,facing=west] if score @s temp2 matches ..65 run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[half=top,facing=north] if score @s temp2 matches ..65 run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[half=top,facing=east] if score @s temp2 matches 15.. run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[half=top,facing=south] if score @s temp2 matches 15.. run return 0
execute if block ~ ~ ~ #minecraft:trapdoors[half=top,facing=west] if score @s temp2 matches ..65 run return 0
return 1