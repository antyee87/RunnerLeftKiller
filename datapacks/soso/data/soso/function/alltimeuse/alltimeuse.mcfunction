scoreboard players add tick zTEST 1
execute as @e[type=minecraft:armor_stand] unless score @s CODENAME matches 1 run function soso:game/armor/dataout
execute as @e[limit=20,type=#soso:core,tag=!cloudout,tag=!finaltagcheck,tag=!datacopycloud] run function soso:game/data/copytagdo
execute as @e[limit=20,type=#soso:core,tag=cloudout,tag=!datacopycloud] at @s run function soso:game/data/copysum
execute as @e[type=minecraft:marker,tag=datacopycloud] unless score @s CODENAME matches 1 run function soso:game/data/dataout


execute as @e[tag=button] at @s if block ~ ~ ~ #soso:power[powered=true] run function soso:game/buttonon
execute as @e[tag=buttonbreak] at @s if block ~ ~ ~ #soso:power[powered=true] run function soso:game/buttonbreak/buttonon


execute as @a[scores={diertest=1..}] at @s run function soso:alltimeuse/die
execute if predicate soso:time1 run function soso:alltimeuse/t1


execute as @a unless score @s CODENAME matches 1 run function soso:playerin



execute as @a[scores={fish=1..}] at @s run function soso:skill/fish


execute as @e[type=minecraft:item,tag=!downitem] at @s run function soso:item/skill
execute as @a[scores={used_carrot_on_a_stick=1..}] run function soso:item/shop/dialog_menu/show_menu
scoreboard players set @a[scores={used_carrot_on_a_stick=1..}] used_carrot_on_a_stick 0

tag @e remove resetok
execute as @e[type=#soso:core] unless score @s code matches 1..2 run scoreboard players set @s code 2
execute as @e[type=#soso:core,scores={code=2},tag=!block,tag=datacopycloud] at @s if entity @p[distance=..40] run tag @s add resetok
execute as @e[tag=resetok,limit=1] at @s run function soso:alltimeuse/resetok




scoreboard players set @a killrtest 0
scoreboard players set @a killmod 0
scoreboard players set @a sneaktock 0







execute as @e[type=minecraft:item,tag=!magic,tag=!itemb,tag=!downitem] run function soso:alltimeuse/isitem

execute if score 遊戲開始 zTEST matches 0 run function soso:alltimeuse/alltimeusebefore


execute as @e[type=minecraft:area_effect_cloud,tag=snowballsum] at @s unless entity @e[type=minecraft:snowball,distance=..2] run function soso:skill/snowball/snowballb
execute as @e[type=minecraft:snowball] at @s run function soso:skill/snowball/snowball
execute as @e[type=minecraft:arrow,tag=!arrowok] run data merge entity @s {pickup:2,Tags:["arrowok"]}

scoreboard players set @a Qit 0



execute if score 遊戲開始 zTEST matches 1 if score shopopen zTEST matches 1 unless score runman zTEST matches 1.. unless score spy zTEST matches 1.. unless score ghast zTEST matches 1.. unless score ourkill zTEST matches 1.. unless score flags zTEST matches 1.. run function soso:item/shop/t1
function rlk:trigger/t1
