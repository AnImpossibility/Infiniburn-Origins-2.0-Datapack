# Basic Check
execute unless block ~ ~ ~ #minecraft:stairs[shape=straight] run return 1
# Setting @s temp to the x or z-value * 80, based on relevant direction

summon marker ~ ~ ~ {Tags:["data_marker"]}
execute unless block ~ ~ ~ #minecraft:stairs[facing=north] unless block ~ ~ ~ #minecraft:stairs[facing=south] store result score @s temp3 run data get entity @e[tag=data_marker,type=marker,limit=1] Pos[0] 1
execute unless block ~ ~ ~ #minecraft:stairs[facing=north] unless block ~ ~ ~ #minecraft:stairs[facing=south] run scoreboard players set @s temp2 80
execute unless block ~ ~ ~ #minecraft:stairs[facing=north] unless block ~ ~ ~ #minecraft:stairs[facing=south] run scoreboard players operation @s temp3 *= @s temp2
execute unless block ~ ~ ~ #minecraft:stairs[facing=north] unless block ~ ~ ~ #minecraft:stairs[facing=south] store result score @s temp2 run data get entity @e[tag=data_marker,type=marker,limit=1] Pos[0] 80
execute unless block ~ ~ ~ #minecraft:stairs[facing=north] unless block ~ ~ ~ #minecraft:stairs[facing=south] run scoreboard players operation @s temp2 -= @s temp3 
execute unless block ~ ~ ~ #minecraft:stairs[facing=east] unless block ~ ~ ~ #minecraft:stairs[facing=west] store result score @s temp3 run data get entity @e[tag=data_marker,type=marker,limit=1] Pos[2] 1
execute unless block ~ ~ ~ #minecraft:stairs[facing=east] unless block ~ ~ ~ #minecraft:stairs[facing=west] run scoreboard players set @s temp2 80
execute unless block ~ ~ ~ #minecraft:stairs[facing=east] unless block ~ ~ ~ #minecraft:stairs[facing=west] run scoreboard players operation @s temp3 *= @s temp2
execute unless block ~ ~ ~ #minecraft:stairs[facing=east] unless block ~ ~ ~ #minecraft:stairs[facing=west] store result score @s temp2 run data get entity @e[tag=data_marker,type=marker,limit=1] Pos[2] 80
execute unless block ~ ~ ~ #minecraft:stairs[facing=east] unless block ~ ~ ~ #minecraft:stairs[facing=west] run scoreboard players operation @s temp2 -= @s temp3 

kill @e[tag=data_marker,type=marker]
# More Checks
execute if block ~ ~ ~ #minecraft:stairs[half=bottom,facing=north] if score @s temp matches 40.. if score @s temp2 matches 40.. run return 0
execute if block ~ ~ ~ #minecraft:stairs[half=bottom,facing=east] if score @s temp matches 40.. if score @s temp2 matches ..40 run return 0
execute if block ~ ~ ~ #minecraft:stairs[half=bottom,facing=south] if score @s temp matches 40.. if score @s temp2 matches ..40 run return 0
execute if block ~ ~ ~ #minecraft:stairs[half=bottom,facing=west] if score @s temp matches 40.. if score @s temp2 matches 40.. run return 0
execute if block ~ ~ ~ #minecraft:stairs[half=top,facing=north] if score @s temp matches ..40 if score @s temp2 matches 40.. run return 0
execute if block ~ ~ ~ #minecraft:stairs[half=top,facing=east] if score @s temp matches ..40 if score @s temp2 matches ..40 run return 0
execute if block ~ ~ ~ #minecraft:stairs[half=top,facing=south] if score @s temp matches ..40 if score @s temp2 matches ..40 run return 0
execute if block ~ ~ ~ #minecraft:stairs[half=top,facing=west] if score @s temp matches ..40 if score @s temp2 matches 40.. run return 0
return 1