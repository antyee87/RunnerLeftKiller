execute at @s[tag=magic] run function soso:skill/snowball/snowballc
execute if items entity @s contents lime_dye[custom_data~{cross:1b}] run tag @s add cross
execute if items entity @s contents lime_dye[custom_data~{cross:1b}] run data merge entity @s {Item:{id:"minecraft:gray_dye",components:{"minecraft:lore":["射出箭矢後立即填充","消費：3箭矢。"],"minecraft:custom_name":[{"text":""},{"text":"高速填彈切換器：關閉","color":"gold","bold":true}]}}}
execute if items entity @s[tag=!cross] contents gray_dye[custom_data~{cross:1b}] run data merge entity @s {Item:{id:"minecraft:lime_dye",components:{"minecraft:lore":["射出箭矢後立即填充","消費：3箭矢。"],"minecraft:custom_name":[{"text":""},{"text":"高速填彈切換器：開啟","color":"gold","bold":true}]}}}
execute if items entity @s contents *[custom_data~{night:1b}] run function soso:gamemode/spy/night
execute if items entity @s contents *[custom_data~{booktalk:1b}] at @s as @p[tag=book2,scores={Qit=1..}] run function soso:setgame/saytalk
execute if items entity @s contents *[custom_data~{killtp:1b}] at @s as @p[team=Killer,scores={Qit=1..}] at @s positioned as @r[distance=1..,team=Killer,gamemode=!spectator] run tp @s ~ ~ ~
execute if score knono zTEST matches 0 if items entity @s contents *[custom_data~{Nonknow:1b}] run effect give @a[team=Runner] minecraft:resistance 7 10
execute if score knono zTEST matches 1 if items entity @s contents *[custom_data~{Nonknow:1b}] run effect give @a[team=Runner] minecraft:resistance 4 10
execute if score knono zTEST matches 0 if items entity @s contents *[custom_data~{Nonknowk:1b}] run effect give @a[team=Killer] minecraft:resistance 7 10
execute if score knono zTEST matches 1 if items entity @s contents *[custom_data~{Nonknowk:1b}] run effect give @a[team=Killer] minecraft:resistance 4 10
execute if items entity @s contents *[custom_data~{teamKon:1b}] at @s run tp @a[team=Killer] ~ ~ ~
execute if items entity @s contents *[custom_data~{teamRon:1b}] at @s run tp @a[team=Runner] ~ ~ ~

execute if items entity @s contents *[custom_data~{flykill:1b}] run kill @s


execute if items entity @s contents *[custom_data~{shopopen:1b}] at @s as @p[scores={Qit=1..}] run function soso:item/shop/chat_menu/show_menu

execute if items entity @s contents *[custom_data~{flagsitem:1b}] run data merge entity @s {Tags:["downitem"],Glowing:1b}


