kill @e[type=minecraft:item]
scoreboard players set 遊戲開始 zTEST 0
title @a times 20 80 0
scoreboard players set code10 zTEST 0
schedule clear soso:gamecode/code10
execute if entity @p[team=Runner,tag=tpafter] run title @a title [{"text":"逃脫者勝利","color":"blue","bold":true}]
execute if entity @p[team=Runner,tag=tpafter] run title @a subtitle [{"text":"成功從逃生區逃脫","color":"blue","bold":true}]
execute if entity @p[team=Killer,gamemode=!spectator,tag=tpafter] run title @a title [{"text":"殺手勝利","color":"red","bold":true}]
execute if entity @p[team=Killer,gamemode=!spectator,tag=tpafter] run title @a subtitle [{"text":"逃生區被殺手壓制","color":"red","bold":true}]
execute unless entity @p[team=Killer] run title @a title [{"text":"逃脫者勝利","color":"blue","bold":true}]
execute unless entity @p[team=Killer] run title @a subtitle [{"text":"殺手殺膩了","color":"blue","bold":true}]
execute unless entity @p[team=Runner] run title @a title [{"text":"殺手勝利","color":"red","bold":true}]
execute unless entity @p[team=Runner] run title @a subtitle [{"text":"殲滅所有逃脫者","color":"red","bold":true}]

execute if score runman zTEST matches 1.. run function soso:gamemode/runnman/endgame
execute if score spy zTEST matches 1 run function soso:gamemode/spy/endgame
execute if score ghast zTEST matches 1 run function soso:gamemode/ghast/endgame
execute if score ourkill zTEST matches 1 run function soso:gamemode/ourkill/endgame
execute if score ourkill zTEST matches 2 run function soso:gamemode/ourkill/endgameb
execute if score flags zTEST matches 1 run function soso:gamemode/flags/endgame

execute if entity @a[scores={rlk.kill_count=1..}] run tellraw @a {"text":"擊殺數(不限殺手 滑鼠停在數字上顯示殺了哪些人):","color":"red"}
execute as @a if score @s rlk.kill_count matches 1.. run function soso:killed_player/show

clear @a[team=!build]
gamemode adventure @a[team=!build]
tag @a remove start
effect clear @a[team=!build]
function soso:set
scoreboard players set donight zTEST -1
schedule clear soso:gamemode/spy/t1
team join Runner @a[team=!build]
scoreboard players set * CODENAME -1
scoreboard players set @a CODENAME 1
scoreboard players set @a team 1
scoreboard players set * code 2
tag @e remove on
bossbar set minecraft:do7e players
bossbar set minecraft:killtime players
bossbar set minecraft:runtime players
bossbar set minecraft:breaktime players
execute as @a[team=!build] run function soso:worldspawn
execute as @a at @e[tag=ramdon,limit=1] run spawnpoint @s ~ ~ ~
execute as @e[tag=help] run function soso:alltimeuse/tpb
clear @a *[custom_data~{spyhead:1b}]


