scoreboard players reset @s
scoreboard players set @s tasknum 0
scoreboard players set @s point 0
scoreboard players set @s CODENAME 1
function soso:worldspawn
function soso:setgame/talk3
execute at @e[tag=gamecode] run spawnpoint @s ~ ~ ~
effect clear @s
gamemode adventure @s
function soso:item/tagclear
experience add @s -10000 levels
advancement grant @s only soso:root
effect give @s minecraft:instant_health 1 198 true
effect give @s minecraft:absorption 1 0 true
effect give @s minecraft:regeneration 3 199 true
team leave @s
clear @s

tellraw @a [{"text":"歡迎","color":"yellow","bold":true}," ",{"selector":"@s","color":"white","bold":false}," ",{"text":"加入逃脫升天一同遊玩","color":"yellow","bold":true}]
execute at @e[tag=gamecode] positioned ~-2 ~ ~-2 run summon minecraft:firework_rocket ~ ~ ~ {Tags:["tps","tps1"],LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;255]}]}}}}
execute at @e[tag=gamecode] positioned ~2 ~ ~-2 run summon minecraft:firework_rocket ~ ~ ~ {Tags:["tps","tps2"],LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16711846]}]}}}}
execute at @e[tag=gamecode] positioned ~-2 ~ ~2 run summon minecraft:firework_rocket ~ ~ ~ {Tags:["tps","tps3"],LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;13690902]}]}}}}
execute at @e[tag=gamecode] positioned ~2 ~ ~2 run summon minecraft:firework_rocket ~ ~ ~ {Tags:["tps","tps4"],LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16064521]}]}}}}
tellraw @s ["",{"text":"───────────────────","obfuscated":true,"color":"gold"},"\n",{"text":"下載逃脫升天地圖：","bold":true,"color":"light_purple"},{"text":"【點我下載】","bold":true,"color":"red","click_event":{"action":"open_url","url":"https://drive.google.com/file/d/1mqY_jGt4diagKTislFLxVIo2SqiHLlnC/view?usp=sharing"}},"\n",{"text":"與朋友一同遊玩！","color":"aqua"},"\n",{"text":"───────────────────","obfuscated":true,"color":"gold"}]
execute at @a[tag=start] if score @p CODENAME = @e[tag=gamecode,limit=1] CODENAME run team join spc @s
execute at @a[tag=start] if score @p CODENAME = @e[tag=gamecode,limit=1] CODENAME run gamemode spectator @s
execute as @a unless score @s Qitem matches 0.. run function soso:item/qname

execute if score 遊戲開始 zTEST matches 1 run team join spc @s
execute if score 遊戲開始 zTEST matches 1 run gamemode spectator @s
execute if score 遊戲開始 zTEST matches 0 run team join Runner @s
execute if score 遊戲開始 zTEST matches 0 run scoreboard players set @s team 1
execute if score 遊戲開始 zTEST matches 0 as @e[tag=help] run function soso:alltimeuse/tpb


scoreboard players enable @a teamjoin


